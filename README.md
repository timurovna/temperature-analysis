# temperature-analysis

Temperature Change Detection Using CUSUM

Project Overview

This project analyzes 20 years of daily high temperature data for one state (1996–2015) to study two related questions:

When does “unofficial summer” end each year?
→ Detect seasonal transition points using a CUSUM change detection approach.
Has summer climate become warmer over time?
→ Use a second CUSUM analysis on annual temperature averages to detect long-term structural shifts.

The project combines time-series smoothing, statistical process control (CUSUM), and exploratory data analysis to study both seasonal behavior and climate trends.

Methodology
 
1. Data Exploration

Visualized daily temperature curves for each year
Observed consistent seasonal pattern: peak in July–August followed by gradual cooling in September–October
Identified clear within-year structural change point (summer - fall transition)

3. Detecting End of Summer (Within-Year CUSUM)

A CUSUM (Cumulative Sum Control Chart) method was applied separately for each year to detect when temperatures consistently shifted downward.

Approach:

Baseline period: July–August (assumed “in-control” summer period)
Detection goal: Identify sustained cooling in September–October
CUSUM parameters:
Reference value: based on half standard deviation (k = σ/2)
Decision interval: H = 50 (chosen to avoid false alarms in stable summer period)

Rationale:

The threshold was selected so that no false change signals occur during July–August, while still allowing detection of sustained cooling in early fall.

Results: End of Summer (CUSUM Detection)

Year	Last Day of Summer	Temp (°F)
1996	14-Sep	79
1997	28-Sep	68
1998	27-Sep	87
1999	20-Sep	68
2000	6-Sep	66
2001	18-Sep	81
2002	23-Sep	82
2003	16-Sep	81
2004	13-Sep	79
2005	8-Oct	73
2006	11-Sep	84
2007	18-Sep	79
2008	18-Sep	82
2009	3-Sep	79
2010	30-Sep	76
2011	7-Sep	69
2012	4-Sep	77
2013	28-Sep	77
2014	26-Sep	74
2015	13-Sep	75

Key Insight (Seasonal Change)

Average end-of-summer timing: mid–late September (~Sep 18)
Range: Sep 3 (2009) to Oct 8 (2005)
No strong monotonic trend in timing
Slight variability year to year, but overall stable seasonal transition window

3. Detecting Long-Term Warming Trend

To evaluate whether Atlanta summers are getting warmer, a second CUSUM analysis was performed on annual average temperatures.

Approach:
Construct yearly mean temperatures (1996–2015)
Define in-control baseline: 1996–2004
Control mean: ~82.82°F
One-sided CUSUM for increasing shifts (warming detection)
Decision threshold: H ≈ 5σ

Results: Warming Detection

CUSUM begins accumulating noticeable positive drift after ~2007
Threshold exceeded around 2011
Peak divergence occurs in 2012–2015

Key Insight (Climate Shift)

Evidence of a structural warming shift beginning around 2011
Post-2011 years show consistently higher-than-baseline annual means
Earlier years fluctuate around baseline with no sustained upward deviation

Overall Findings

1. Seasonal pattern (within-year)
“End of summer” consistently occurs in early to late September
No clear long-term shift toward later or earlier seasonal cooling

3. Climate trend (between-year)
Evidence suggests a warming shift starting around 2011
Later years show sustained positive deviation from historical baseline

Methods Used
CUSUM (Cumulative Sum Control Charts), 
Time-series visualization, 
Descriptive statistics, 
Control chart threshold selection, 
Baseline comparison analysis
