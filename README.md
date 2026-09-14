# Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV

A reproducible simulation study exploring sampling variation around an observed YouTube view count using a Poisson baseline model.

## Summary

This study examines sampling variation around an observed YouTube view count of **3,306 views** for a Sansad TV parliamentary proceedings video (*RS | Monsoon Session 2026 | Question Hour; 07 August, 2026*). Using a Poisson distribution with λ = 3,306 across 10,000 simulations, we estimate the 95% confidence interval as 3,192–3,416 views. Results demonstrate how publicly available engagement metrics can serve as reproducible statistical exercises for civic-data literacy initiatives.

## Methods

**Simulation Design**
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
| 95% Confidence interval | 3,192–3,416 |

Under a Poisson model with λ = 3,306, approximately 95% of simulated counts fall within this interval. These results are descriptive and do not constitute claims about the underlying data-generating process.

## Data Source

**YouTube video:** *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM–12:04 PM | 07 August, 2026* (Sansad TV)

Access date: 11 September 2026

## Context and Applications

This project explores the intersection of parliamentary media accessibility, quantifiable digital engagement, and reproducible statistical reasoning. Sansad TV provides public access to parliamentary proceedings, and engagement metrics offer opportunities for civic-data literacy initiatives. The analytical approach demonstrates how citizens and researchers can engage critically with publicly available institutional metrics, though findings remain limited in scope.

## Repository Contents

- `analysis.R` — R code for simulation and visualizations
- `paper.pdf` — Full analysis (PDF)
- `paper.md` — Full analysis (Markdown source)
- `Figure_1.png` — Simulation results visualization

## Reproducibility

1. Install R 4.5.0 or later
2. Execute `analysis.R`
3. Seed is fixed at `123` for exact reproducibility

## Citation

Torane, H. “Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV”. Preprint, Zenodo, September 11, 2026. https://doi.org/10.5281/zenodo.22234219

## License

Code and materials are provided for research and educational use under the LICENSE file.
