# Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV

A reproducible simulation study exploring variation around an observed YouTube view count from Sansad TV using a Poisson baseline model. This project demonstrates statistical reasoning with publicly observable engagement metrics from democratic institutions.

## Overview

This study examines sampling variation around an observed YouTube view count of **3,306 views** for a Sansad TV parliamentary proceedings video:

*RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM–12:04 PM | 07 August, 2026*

Sansad TV provides public access to parliamentary proceedings and related programming through digital platforms, including YouTube. Publicly visible engagement metrics such as view counts offer opportunities for statistical literacy exercises and exploratory analysis of civic-media engagement patterns.

This simulation serves as a **descriptive proof-of-concept** demonstrating how an observed public metric can be transformed into a reproducible statistical exercise. The analysis should not be interpreted as a prediction of future view counts or a definitive measure of civic participation.

## Methods

The simulation was conducted in **R 4.5.0** using:

* **Population model:** Poisson distribution
* **Mean parameter (λ):** 3,306 (the observed count)
* **Number of simulations:** 10,000
* **Random seed:** 123 (for reproducibility)

This approach provides a baseline estimate of sampling variation under a standard distributional assumption.

## Results

The simulation produced the following summary statistics:

| Statistic              |      Value |
| ---------------------- | ----------: |
| Observed views         |       3,306 |
| Simulated mean         |   3,304.636 |
| Standard deviation     |      57.003 |
| Minimum                |       3,086 |
| Maximum                |       3,527 |
| Empirical 95% interval | 3,192–3,416 |

**Interpretation:** Under a Poisson model with λ = 3,306, we would expect approximately 95% of simulated counts to fall between 3,192 and 3,416 views. These results are descriptive and do not constitute evidence that YouTube view counts generally follow a Poisson distribution.

## Civic-Data Context

This project explores the intersection of **parliamentary media accessibility, quantifiable digital engagement, and reproducible statistical reasoning**. Democratic institutions increasingly operate through digital channels, producing publicly observable metrics. This work demonstrates how such data can be leveraged for statistical education and public engagement with institutional behavior.

The analytical approach may have applications in civic-data literacy initiatives, enabling citizens and researchers to engage critically with publicly available institutional metrics. However, the present analysis is limited to a single video and single observation, and therefore does not establish general patterns of audience engagement with parliamentary content.

## Repository Contents

* `analysis.R` — R code for simulation and visualizations
* `paper.pdf` — PDF version of the full analysis
* `paper.md` — Markdown source of the analysis
* `Figure_1.png` — Visualization of simulation results

## Reproducibility

To reproduce this analysis:

1. Ensure R 4.5.0 or a compatible version is installed
2. Open `analysis.R` in R
3. Execute the script

The random seed is set to `123`, ensuring exact reproducibility of results.

## Data Availability

The observed count is derived from the following publicly accessible source:

**YouTube video:** *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM–12:04 PM | 07 August, 2026* (Sansad TV)

Access date: 11 September 2026

## Citation

Please cite this work as:

> Torane, H. (2026). Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV. *Preprint.* Zenodo. https://doi.org/10.5281/zenodo.22234219

## License

Code and materials are provided for research and educational use under the terms specified in the LICENSE file.
