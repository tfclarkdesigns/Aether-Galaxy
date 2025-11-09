# Astrogation Holocodex  
*Galactic Standards for Registry & Navigation*

---

---

### Attribution Guide  
This project, **Aether Galaxy**, is licensed under Creative Commons Attribution 4.0 International (CC BY 4.0).  

When reusing or adapting material, please credit as follows:  
“Based on Aether Galaxy (CC BY 4.0) by Terrance Clark https://creativecommons.org/licenses/by/4.0/.”  

You may remix, redistribute, or commercialize this work freely as long as you include that credit **and indicate if changes were made.**  

---

### Legal Notice  
*Aether Galaxy* is unaffiliated with any existing media franchise. Please refrain from using copyrighted or trademarked language, representations, or other content in *Aether Galaxy* media without the express written consent of the intellectual property holder.

##### Astrogation Holocodex – r2

---

---

## Commonwealth Astrogation Systems  

> *“All known space fits neatly into our forms. Unknown space, regrettably, does not.”*  
> *— Bureau of Astrogation Annual Report, GSY 8890*  

The *Astrogation Holocodex* was ratified by the Commonwealth Bureau of Astrogation in Galactic Standard Year 8892, following three centuries of inconsistent mapping between regional nav-authorities. 
It unifies all known astrogation formats into a single galactic framework: the **Astrogation Registry Code (ARC)** for legal identification and the **Galactic Coordinate Code (GCC)** for physical position.   
Every charted world, from the Core to the drifting edges of Unsettled Space, is indexed under this dual system.  

Compliance is mandatory for all Commonwealth vessels engaging in registered trade, courier operations, or interstellar defense.  

Two systems define how the Commonwealth locates and travels between worlds:

- **ARC — Astrogation Registry Code**  – The administrative “postal address” of a world.  
- **GCC — Galactic Coordinate Code**  – The navigational “map coordinate” in kilolight-years.  

Each complements the other: **ARC tells you where** a world belongs; **GCC tells you where** it physically is.

---

## 1. Astrogation Registry Code  

> *“An unregistered world is an unproven claim on reality.”*  
> — Directorate Charter, ARC Implementation Decree  

### Format  
Region – Cluster – Sector – System – World  

**Example:** `C-0A-A01-21-03`

### Field Meanings  
- **Region:** `C` Core • `I` Inner Rim • `M` Middle Rim • `O` Outer Rim • `U` Unsettled  
- **Cluster:** Two-character alphanumeric district (Base-34 without I or O). ≈ 700 ly across.  
- **Sector:** Three-character alphanumeric cell (Base-34 without I or O) nested within a Cluster. ≈ 100 ly across.  
- **System:** Two-digit stellar system index (01–99).  
- **World:** Ordinal planet index (01–99).  

---

#### Cluster

A **Cluster** is a local district within one of the galaxy’s five major regions — **Core, Inner Rim, Middle Rim, Outer Rim,** or **Unsettled Space.**  
Each region maintains its **own set of Clusters**, labeled independently and reused nowhere else.  

Every Cluster spans roughly **700 light-years**, about a **week’s travel** for a slow hyperdrive or **two days** for an average civilian ship.   
Within that span lie hundreds of Sectors and thousands of Systems, all sharing a single registry vault and jurisdiction.  

Clusters are **irregular in shape**, drawn along trade corridors, natural hazards, and political boundaries.   
For most spacers, a Cluster means *“close enough to reach within a few days.”*   
For the Bureau, it is the fundamental unit of registry — a district where every world has a place, even if the lines don’t match the stars.  

> **Approximate proximity:** Same Region + same Cluster → within ~700 ly.  

---

#### Sector  

A **Sector** is an administrative cell nested within a Cluster.  
Each Cluster contains thousands of Sectors identified by a three-character alphanumeric code (Base-34 without I or O).   
Typical Sector diameter is ≈ **100 light-years**, though geometry varies by radius and local conditions.  

Sectors serve as the practical map scale for commerce, exploration, and defense logistics.   
Crossing a Sector at civilian Grade 4 speed takes about **five to six hours** of continuous hyperspace transit, or a full day with a Grade 1 drive.  

Sector codes are **local to their Cluster** and repeat across the galaxy.   
Only a matching Cluster *and* Sector indicate genuine physical proximity (~100 ly).  

> **Approximate proximity:** Same Cluster + same Sector → within ~100 ly.  

---

#### System  

A **System** identifies a single stellar domain within a Sector, defined as one or more bodies orbiting an **actively fusing star.**  
Stars that have ceased fusion or never achieved it are not eligible for primary registry; their surroundings may appear only as **Nonstellar Objects of Record (NSORs)** attached to nearby luminous systems.  

System numbers (`01–99`) are assigned in the **order of survey data upload**, not by physical position.   
Each surveyed System receives a **System of Record** file containing stellar classification, relay coordinates, and jurisdictional notes.  
Once issued, a System number is **permanent**, even if the system is abandoned, destroyed, or merged with another record.  

Most Sectors contain 20–60 Systems of Record, with 99 as the theoretical limit.   
If a Sector exceeds that limit, the Bureau replaces the System numerical field with an **asterisk (`*`)**, a machine-encoded overflow marker expanding to hidden records.   
Humans see `*`; Bureau terminals decode the extended data automatically.   
Spacers refer to these as **“endless stars.”**  

At standard civilian Grade 4 speed (≈ 400 ly/day), travel between neighboring Systems in the same Sector typically requires **about six hours** of hyperspace transit.  

---

### Truncation  

Used for spoken reference or abbreviated documents.  
Truncate from the right when only regional context is needed:  

- `O` → Outer Rim  
- `O-2N` → Cluster 2N  
- `O-2N-4BH` → Sector 4BH  

**Example:**  
- `C-0A-A01-08-02` → *Lyntessa* (temperate, populated)  
- `C-0A-A01-08-03` → Neighbor world, possibly habitable  
- `M-B3-C7D-41-26` → Remote, frozen outer body  

---

---

## 2. Galactic Coordinate Code (GCC)  

> *“ARC gets you paid; GCC gets you home.”*  
> *— Spacer proverb, Outer Rim*  

The **GCC** is a two-axis planar projection of galactic space, assuming negligible vertical displacement (Z).  
Depth coordinates are used only by Bureau-grade astrogation systems.  
Units are **kilolight-years (kly)** from the galactic center.  

### Format  
`GCC[X, Y]`  

**Example:** `GCC[−12.3, +4.7]`  

### Conventions  
- Range: ≈ −50.0 to +50.0 kly on each axis (≈ 100 kly disk).  
- One decimal place = 0.1 kly = 100 ly resolution.  
- Precision matches travel granularity for standard hyperdrives.  

  • Grade 2 (100 ly/day)  
  • Grade 4 (400 ly/day)  

---

### Calculating Distance and Travel Time  

1. Find the difference in X and Y between your start and destination by subtracting each  starting value from its corresponding destination value.
2. Square both differences.  
3. Add them together.  
4. Take the square root →this gives the distance in kilolight-years.  
5. Multiply by 1,000 → this gives the distance in light-years.
6. Divide the distance by the speed of your hyperdrive →this gives the hyperspace travel time in days.

**Optional Shortcut:** divide the kilolight-years value by 0.4 for a Grade 4 hyperdrive to get flight time in days. Adjust as needed for your hyperdrive.

**Example**  

From `GCC[−12.3,+4.7]` to `GCC[−12.0,+5.1]`  

Find the differences:  
−12.0 − (−12.3) = 0.3 | 5.1 − 4.7 = 0.4  

Square the first difference:  
(0.3)² = 0.09  

Square the second difference:  
(0.4)² = 0.16  

Add these two numbers together:  
0.09 + 0.16 = 0.25  

Take the square root of that sum:  
√0.25 = 0.5 kilolight-years  

Convert to light-years:  
0.5 × 1,000 = 500 light-years  

Divide distance by speed to get travel time:  
500 ÷ 400 = 1.25 days (≈ 30 hours)

---

**Quick Shortcut**

For a **Grade 4** hyperdrive, you can skip the manual math:  
divide the above distance in **kilolight-years** by **0.4** to get travel time in **days.**

**Example**

Distance: 0.5 kly  
0.5 ÷ 0.4 = **1.25 days** (≈ 30 hours)

To adapt for other drives, divide by your drive’s speed in **kly per day.**

---

## Region Radial Bands (GCC-Aligned)  

Use GCC radius (in kly) from the galactic center to determine region.  
Let `r_kly = sqrt(X² + Y²)`; galactic radius ≈ 50 kly.  

**Settled space** extends to ≈ 60 % of radius = 30 kly.  

| Region         | Radius (kly) | Fraction of Disk |
| :------------- | :----------- | :--------------- |
| Core (C)       | 0–5          | 0–10 %           |
| Inner Rim (I)  | 5–10         | 10–20 %          |
| Middle Rim (M) | 10–20        | 20–40 %          |
| Outer Rim (O)  | 20–30        | 40–60 %          |
| Unsettled (U)  | 30–35        | 60–70 %          |
| Uncharted      | 35–50        | 70–100 %         |

### Quick Region from GCC  

1. Compute `r_kly = sqrt(X² + Y²)`  
2. Match to band above → Region letter for ARC  

**Examples**  

- `GCC[+1.2,+3.6]` → r ≈ 3.8 → **Core (C)**  
- `GCC[−7.5,+3.0]` → r ≈ 8.1 → **Inner Rim (I)**  
- `GCC[+9.0,−15.0]` → r ≈ 17.5 → **Middle Rim (M)**  
- `GCC[−12.0,−22.0]` → r ≈ 25.0 → **Outer Rim (O)**  
- `GCC[+18.0,−24.0]` → r ≈ 30.0 → **Unsettled (U)**  
- `GCC[−10.0,+36.0]` → r ≈ 37.4 → **Uncharted**  

> **Note:** ARC remains the administrative address (`C-0A-A01-21-03`). GCC radius only sets Region letter and supports travel-time math.  

---

## 3. Combined Record Example  

World: `C-0A-A01-21-03`  # ARC registry (address)  
Coord: `GCC[−12.3,+4.7]`  # Physical coordinate (kly)  
Speed: Grade 4 Hyperdrive  
ETA: 700 ly ≈ 1.75 days / 42 hours  

- **ARC** = registry address  
- **GCC** = navigation coordinate  

Together they let any pilot, bureaucrat, or bounty hunter find a world, plot a course, and know how long it will take to arrive.

---

---

## Example Astrogation and Coordinate Codes  

### Core Space  

#### Coropolis  
ARC: `C-00-A00-01-02`  
GCC: `GCC[+0.3,+0.2]`  
Region: Core (C)  

#### Huma  
ARC: `C-01-A10-12-02`  
GCC: `GCC[+3.2,−1.7]`  
Region: Core (C)  

#### Lyntessa  
ARC: `C-0A-A01-08-02`  
GCC: `GCC[−4.1,+2.7]`  
Region: Core (C)  

---

### Inner Rim  

#### Delos  
ARC: `I-00-A00-07-02`  
GCC: `GCC[+7.4,+2.9]`  
Region: Inner Rim (I)  

#### Otenno  
ARC: `I-1F-B27-15-03`  
GCC: `GCC[+8.8,−3.1]`  
Region: Inner Rim (I)  

#### Drak  
ARC: `I-2C-C14-11-02`  
GCC: `GCC[−8.6,+4.4]`  
Region: Inner Rim (I)  

#### Gultz  
ARC: `I-2D-C29-19-03`  
GCC: `GCC[−9.1,+2.2]`  
Region: Inner Rim (I)  

#### Kurix  
ARC: `I-2F-C42-08-02`  
GCC: `GCC[−8.3,−2.7]`  
Region: Inner Rim (I)  

---

### Middle Rim  

#### Biri  
ARC: `M-B3-D57-14-03`  
GCC: `GCC[+14.2,+6.3]`  
Region: Middle Rim (M)  

#### DW-11  
ARC: `M-B8-D99-27-06`  
GCC: `GCC[−15.8,+7.9]`  
Region: Middle Rim (M)  

#### Soresh  
ARC: `M-B6-D72-19-04`  
GCC: `GCC[−12.4,+10.2]`  
Region: Middle Rim (M)  

#### Val Kos  
ARC: `M-B9-D83-09-03`  
GCC: `GCC[−17.1,−5.8]`  
Region: Middle Rim (M)  

#### Weros  
ARC: `M-B5-D21-05-02`  
GCC: `GCC[+13.6,−9.7]`  
Region: Middle Rim (M)  

---

### Outer Rim  

#### Harnash  
ARC: `O-N3-E41-11-03`  
GCC: `GCC[−22.8,+14.6]`  
Region: Outer Rim (O)  

#### Trusok  
ARC: `O-N7-E59-18-04`  
GCC: `GCC[−25.4,+17.2]`  
Region: Outer Rim (O)  

#### Ruqos  
ARC: `O-P4-E33-09-03`  
GCC: `GCC[+23.5,−16.4]`  
Region: Outer Rim (O)  

#### Tyssara  
ARC: `O-P6-E62-15-02`  
GCC: `GCC[+25.8,−12.9]`  
Region: Outer Rim (O)  

#### Yertil  
ARC: `O-P8-E12-04-02`  
GCC: `GCC[+21.2,−19.1]`  
Region: Outer Rim (O)  

#### Qas Almeidi  
ARC: `O-P9-E55-07-03`  
GCC: `GCC[+19.8,+20.6]`  
Region: Outer Rim (O)  

---

### Unsettled Space  

#### Quapilon  
ARC: `U-X4-F22-03-07`  
GCC: `GCC[−31.6,+15.4]`  
Region: Unsettled Space (U)  

---

---

## Author’s Note  

The **ARC** and **GCC** were devised to make an unimaginably large space — an entire galaxy — comprehensible.  
They do so through records and simple, consistent calculation.  

However, if you as a creator do not wish to use these systems, they are entirely optional.  
Mythic space opera does not require rigorous mathematical precision.  
For this reason, these standards were introduced *outside* the **Aether Galaxy Foundational Guidebook**, as supplementary material.  

Whatever conventions you adopt, I offer two points for consideration.  

**First**, any interstellar polity as vast as the Galactic Commonwealth or Iron Dominion would need some form of world registry, something functionally analogous to the ARC — even if it goes unmentioned in your narrative.  
Any two planets might share a name, but for purely logistical reasons they could not share an address.  

**Second**, some method of locating a stellar system must exist, whether or not it is described in detail.  
The Earth analog would be longitude and latitude.  
For the GCC, I chose a simple coordinate grid because it allows distance and travel-time calculation without advanced mathematics.  

If you prefer to ignore such mechanics entirely, simply remember that travel across the galaxy should *feel* like the Age of Sail on old Earth:  
a short voyage might take a few days, an extremely long one perhaps a year, and many hyperspace journeys occupy the space between, measured in weeks rather than moments.  

---

> *No canon; only coherence.*  