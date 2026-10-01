# Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV

A reproducible simulation study examining sampling variation around an observed YouTube view count using a Poisson baseline model.

## Summary

This study evaluates sampling variation around an observed YouTube view count of **3,306 views** for a Sansad TV parliamentary proceedings video (*RS | Monsoon Session 2026 | Question Hour; 07 August, 2026*). Using a Poisson distribution with λ = 3,306 as the population model, a simulation of 10,000 draws characterizes the expected range of counts under random sampling. The analysis is descriptive and intended to illustrate variability in civic digital media engagement.

## Methods

**Simulation design**
- Population model: Poisson distribution
- Mean parameter (λ): 3,306 (observed count)
- Simulations: 10,000
- Random seed: 123 (reproducibility)
- Software: R 4.5.0

## Results

| Statistic | Value |
|-----------|------:|
| Observed views | 3,306 |
| Simulated mean | 3,304.636 |
| Standard deviation | 57.003 |
| Minimum | 3,086 |
| Maximum | 3,527 |
| 95% confidence interval | 3,192–3,416 |

Under a Poisson model with λ = 3,306, approximately 95% of simulated counts fall within this interval. These findings are descriptive and do not establish claims about the underlying data-generating process or the determinants of actual view counts on the platform.

## Data source

**YouTube video:** *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM–12:04 PM | 07 August, 2026* (Sansad TV)


## Context and applications

This project examines the intersection of parliamentary media accessibility, measurable digital engagement, and reproducible statistical reasoning.

## Repository contents

- `analysis.R` — R code for simulation and visualization
- `paper.pdf` — Full analysis (PDF)
- `paper.md` — Full analysis (Markdown source)
- `Figure_1.png` — Simulation results visualization

## Reproducibility

1. Install R 4.5.0 or later
2. Execute `analysis.R`
3. Use the fixed seed `123` for exact reproducibility

## Citation

Torane, H. "Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV". *Preprint*. Zenodo, September 11, 2026. https://doi.org/10.5281/zenodo.22234219

## License

Code and materials are provided for research and educational use under the LICENSE file.
