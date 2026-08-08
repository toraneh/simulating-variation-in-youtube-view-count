# YouTube View Count Simulation

## Overview

This repository contains the R code and figure used for a short simulation study of a YouTube video view count.

The video had **3,306 views at 3:27 on August 8, 2026**, when the observation and simulation were conducted. A Poisson model was used to simulate variation around this observed count.

## Simulation

The analysis was conducted in **R 4.5.0**.

The simulation:

* Uses an observed view count of 3,306
* Generates 10,000 Poisson-distributed observations
* Uses random seed `123` for reproducibility
* Calculates the mean, standard deviation, minimum, maximum, and central 95% range
* Produces a histogram of the simulated values
* Marks the observed value of 3,306 with a red vertical line

The resulting simulated mean was **3,304.636**, with a standard deviation of **57.003**. The simulated values ranged from **3,086 to 3,527**, while the central 95% range was **3,192–3,416**.

## Files

* `simulation.R` — R script used for the simulation
* `figure1.png` — histogram of the simulated view counts
* `simulation.md` — short research paper

## Reproduction

With R installed, run:

```r
source("simulation.R")
```

The script uses only base R functions and does not require additional packages.

## Data Source

The observed count was taken from the following YouTube video:

**Title:** *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026*  
**Observed count:** 3,306 views  
**Observation date:** August 8, 2026  
**Observation time:** 3:27

https://www.youtube.com/watch?v=mfZ5GKz2yjY

The view count is time-dependent and may have changed after the observation was recorded.
## Limitations

This is a simple simulation based on a single observed video. The Poisson distribution is assumed rather than empirically validated against longitudinal or multi-video viewing data.

Therefore, the simulation should be interpreted as a demonstration of variation under the specified model, **not as evidence that YouTube views generally follow a Poisson distribution or as a prediction of future views**.

## License

The code may be reused for educational and research purposes with appropriate attribution.
