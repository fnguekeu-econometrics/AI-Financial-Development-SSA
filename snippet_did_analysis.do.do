* ==============================================================================
* PROJECT: AI and Financial Development in Sub-Saharan Africa (Code Snippet)
* AUTHOR: Florette Nguekeu Tsopze
* PURPOSE: Demonstration of Heterogeneous DID Estimation using csdid
* ==============================================================================

* 1. Data Structure & Panel Setup
* Handling unbalanced panel structure across 30+ countrie
egen id= group( CountryName)
xtset id Year

* 2. Checking descriptive statistics for key composite indicators
summarize dependent_var control_var1 control_var2

* 3. Heterogeneous Difference-in-Differences Estimation
* Using doubly robust alternative (drdid) with fixed effects
teffects psmatch ( dependent_var) ( control_var1 control_var2)
tebalance density dependent_var
tebalance box
psmatch2 control_var1 control_var2, out ( dependent_var) neighbor(1) common
psgraph, bin(30) support( _support)

* 4. Post-Estimation: Graphical Event Study (Pre-trend Testing)
estat event, window(-4 4) plot
graph export "event_study_robustness.png", replace
