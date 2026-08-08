# Simulating Variation in YouTube View Counts

## Abstract

This brief simulation study examines variation around an observed YouTube video view count. The video, *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026*, had **3,306 views** at the time of observation (YouTube, 2026). Using R 4.5.0, 10,000 view counts were simulated from a Poisson distribution with an expected value of 3,306. The simulation provides a descriptive illustration of variation under the specified model rather than a prediction of future views.

## Method

A Poisson model was used as a simple exploratory baseline for simulating variation around the observed count of 3,306 views. The model provides a straightforward way to simulate integer-valued count data; however, the single observed count does not establish that YouTube view counts follow a Poisson distribution.

The simulation used random seed `123` for reproducibility and generated 10,000 observations. The mean, standard deviation, minimum, maximum, and empirical 95% simulation interval were calculated. The empirical 95% simulation interval was defined by the 2.5th and 97.5th percentiles of the simulated values. Figure 1 shows the resulting distribution, with the observed count marked by a red vertical line.

## Results

The simulated mean was **3,304.636 views**, with a standard deviation of **57.003 views**. Simulated values ranged from **3,086 to 3,527 views**, while the empirical 95% simulation interval was **3,192–3,416 views**. The simulated distribution was centered closely around the observed value of 3,306 views.

![Distribution of 10,000 simulated YouTube view counts under the Poisson model. The red vertical line marks the observed count of 3,306 views.](figure1.png){width=70%}

## Conclusion

The simulation illustrates how a simple Poisson model can represent random variation around an observed view count. The results are descriptive rather than predictive. Because the analysis uses one video and assumes a Poisson distribution, the findings should not be generalized to YouTube videos as a whole. A larger study using multiple videos and longitudinal observations would be needed to evaluate whether this model adequately represents actual viewing behavior.

## Reference

YouTube. (2026). *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026* [Video]. YouTube. https://www.youtube.com/watch?v=mfZ5GKz2yjY

## Code Availability

The R code used to generate the simulation and Figure 1 is available in the accompanying GitHub repository:

https://github.com/toraneh/youtube-view-simulation
