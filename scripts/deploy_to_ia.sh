#!/usr/bin/env bash
set -euo pipefail

###
# Aether Galaxy → Internet Archive snapshot deploy
# No revision tags in identifiers; IA is just a chronological snapshot log.
#
# Usage:
#   ./scripts/deploy_to_ia.sh           # normal upload (to opensource_media)
#   ./scripts/deploy_to_ia.sh --test    # upload to test_collection
###

# --- CONFIG SECTION ---------------------------------------------------------

# Root of your Aether Galaxy repo (relative to this script)
REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# Folder to snapshot (for GitHub Pages, often the repo root or /docs)
SNAPSHOT_SOURCE="$REPO_ROOT/docs/files/latest"

# Where to put temporary zip files
ARCHIVE_DIR="$REPO_ROOT/.ia-uploads"

# Base identifier for items on Internet Archive (no rev tags, just time)
ITEM_PREFIX="aether-galaxy"

# Standard metadata
CREATOR="TF Clark"
SUBJECTS="Aether Galaxy;Aetherverse;space opera;TTRPG;worldbuilding"
LANGUAGE="eng"
DESCRIPTION="Snapshot of the Aether Galaxy open mythic space-opera project (GitHub repository / site state at this timestamp)."

# Number of times ia should retry if IA's S3 is overloaded
IA_RETRIES=10

# ---------------------------------------------------------------------------

MODE="production"
if [[ "${1-}" == "--test" ]]; then
  MODE="test"
  echo "[ia] Running in TEST mode (collection=test_collection, id prefix=${ITEM_PREFIX}-test)"
fi

DATE_TAG_UTC="$(TZ=UTC date +%Y-%m-%d)"
TIME_TAG_UTC="$(TZ=UTC date +%H:%M:%S)"
STAMP_ID="$(TZ=UTC date +%Y%m%d-%H%M%S)"   # for identifier uniqueness

if [[ "$MODE" == "test" ]]; then
  ITEM_ID="${ITEM_PREFIX}-test-${STAMP_ID}"
  COLLECTION="test_collection"
else
  ITEM_ID="${ITEM_PREFIX}-${STAMP_ID}"
  COLLECTION="opensource_media"
fi

mkdir -p "$ARCHIVE_DIR"

ZIP_PATH="$ARCHIVE_DIR/${ITEM_ID}.zip"

echo "[ia] Repo root:        $REPO_ROOT"
echo "[ia] Snapshot source:  $SNAPSHOT_SOURCE"
echo "[ia] Archive zip path: $ZIP_PATH"
echo "[ia] Item identifier:  $ITEM_ID"
echo "[ia] Collection:       $COLLECTION"
echo "[ia] Snapshot time:    ${DATE_TAG_UTC} ${TIME_TAG_UTC} (UTC)"

read -rp "[ia] Proceed with zipping and upload? [y/N] " ANSWER
if [[ ! "$ANSWER" =~ ^[Yy]$ ]]; then
  echo "[ia] Aborted."
  exit 0
fi

# 1) Build the zip snapshot (excluding .git and IA temp dir)
echo "[ia] Creating zip snapshot..."
cd "$SNAPSHOT_SOURCE"

# ensure archive dir exists
mkdir -p "$(dirname "$ZIP_PATH")"
rm -f "$ZIP_PATH"

zip -r "$ZIP_PATH" . \
  -x ".git/*" \
  -x ".git" \
  -x ".ia-uploads/*" \
  -x ".ia-uploads"


# 2) Upload to Internet Archive
echo "[ia] Uploading to Internet Archive..."
ia upload "$ITEM_ID" "$ZIP_PATH" \
  --metadata="title:Aether Galaxy snapshot ${DATE_TAG_UTC} ${TIME_TAG_UTC} UTC" \
  --metadata="creator:${CREATOR}" \
  --metadata="description:${DESCRIPTION}" \
  --metadata="mediatype:data" \
  --metadata="collection:${COLLECTION}" \
  --metadata="subject:${SUBJECTS}" \
  --metadata="language:${LANGUAGE}" \
  --metadata="date:${DATE_TAG_UTC}" \
  --retries="${IA_RETRIES}"

echo
echo "[ia] Upload command finished (check messages above for any retry warnings)."
echo "[ia] If successful, your item should appear at:"
echo "     https://archive.org/details/${ITEM_ID}"

