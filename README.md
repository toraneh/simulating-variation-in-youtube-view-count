# Simulating Variation in YouTube View Counts

A small reproducible simulation study illustrating variation around an observed YouTube video view count using a Poisson model.

## Overview

This project examines variation around an observed YouTube view count of **3,306 views** for the video:

*RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026*

The analysis uses a Poisson distribution as a simple exploratory baseline. It is intended as a descriptive simulation rather than a prediction of future views.

## Simulation

The simulation was conducted in **R 4.5.0** using:

* **10,000** simulated observations
* Poisson mean (`lambda`) = **3,306**
* Random seed = **123**

The simulation calculates the mean, standard deviation, minimum, maximum, and empirical 95% simulation interval.

## Results

The simulation produced:

| Statistic              |      Result |
| ---------------------- | ----------: |
| Observed views         |       3,306 |
| Simulated mean         |   3,304.636 |
| Standard deviation     |      57.003 |
| Minimum                |       3,086 |
| Maximum                |       3,527 |
| Empirical 95% interval | 3,192–3,416 |

The results are descriptive and should not be interpreted as evidence that YouTube view counts generally follow a Poisson distribution.

## Repository Contents

* `youtube_view_count_simulation.pdf` — PDF version of the paper
* `youtube_view_count_simulation.md` — Markdown source
* `youtube_view_count_simulation.R` — R code used for the simulation and figure
* `figure_1_view_count_distribution.png` — Figure 1

## Reproducibility

To reproduce the analysis, open `youtube_view_count_simulation.R` in R 4.5.0 or a compatible version of R and run the script. The script uses random seed `123` to ensure reproducibility.

## Data Source

The observed count comes from the following YouTube video:

*RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026*

YouTube, 2026.

## Citation

If you use this material, please cite the associated paper:

> *Simulating Variation in YouTube View Counts*.

## License

Unless otherwise specified, the accompanying code and materials are provided for research and educational use.
