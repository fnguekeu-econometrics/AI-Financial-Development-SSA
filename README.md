# Impact of Artificial Intelligence on Financial Development in Sub-Saharan Africa

## 📌 Project Overview
This repository contains the replication codes, econometric framework, and data management workflows used in my Master's Thesis to evaluate the causal impact of Artificial Intelligence (AI) adoption on financial inclusion and banking sector development across 30+ Sub-Saharan African countries.

## 🛠️ Econometric Methodology & Identification Strategy
To rigorously address staggered policy adoption and potential time-varying treatment effects, this study moves away from conventional Two-Way Fixed Effects (TWFE) biases and implements a modern **Heterogeneous Difference-in-Differences (DID)** design following the framework of **Callaway & Sant’Anna (2021)**. 

Key econometric challenges solved in this project:
- **Unbalanced Panels:** Handled complex macro-level panel data and programmed heterogeneous treatment effect estimators from scratch.
- **Composite Indicator Construction:** Built and validated multi-dimensional metrics for financial inclusion (including mobile money penetration and credit access metrics).
- **Causal Validity:** Applied strict parallel trend pre-testing, dynamic ATT estimations, and placebo/robustness checks to validate the identification strategy.

## 💻 Tech Stack & Stata Packages
- **Software:** Stata 17 / 18
- **Core Packages:** `psmatch2`, `drdid`, `psgraph`
- **Data Sources:** World Bank Global Findex, IMF Financial Development Index, International Telecommunication Union (ITU).

## 📊 Key Insights & Outputs
- Discovered that the causal impact of AI adoption on financial depth is highly non-linear and strictly depends on reaching a critical threshold of local digital infrastructure.
- Generated dynamic event-study plots demonstrating the absence of pre-trends prior to treatment cohorts.

---
👤 **Author:** Florette Nguekeu Tsopze — Quantitative Economist & Data Analyst
