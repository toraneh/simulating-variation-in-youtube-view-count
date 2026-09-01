---
title: "Simulating Variation in YouTube View Counts: A Civic-Data Simulation Using Sansad TV"
author: "Harsh Torane"
date: "9 August 2026"
header-includes: |
  \usepackage{graphicx}
  \usepackage{float}
---

## Abstract

Digital platforms provide citizens with increasing access to parliamentary proceedings and publicly visible measures of audience attention. Sansad TV, India's parliamentary television channel, distributes parliamentary content through digital platforms including YouTube. This creates opportunities for computational approaches to understanding and communicating digital engagement. This brief simulation study demonstrates one such approach using an observed YouTube view count.

The video *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026* had **3,306 views** at the time of observation. Using R 4.5.0, 10,000 view counts were simulated from a Poisson distribution with an expected value of 3,306. The simulated mean was **3,304.636 views**, with an empirical 95% simulation interval of **3,192–3,416 views**. The exercise is not intended to predict future views or establish that YouTube engagement follows a Poisson distribution. Rather, it illustrates how reproducible simulation can turn a publicly observable engagement metric into an accessible example of statistical variation and civic-data literacy.

## Introduction

Public access to parliamentary information is an important component of democratic participation. Sansad TV provides access to parliamentary proceedings and related programming through television and digital platforms, including recordings of events such as Question Hour. Digital distribution also produces publicly observable engagement measures, such as YouTube view counts.

A view count should not be interpreted as a direct measure of civic participation, political attitudes, or democratic impact. It can, however, provide a concrete starting point for statistical exploration. Simulation offers one way to move beyond treating an observed count as a fixed number by demonstrating how variation around that observation might appear under an explicitly stated model.

This study presents a small proof-of-concept using one Sansad TV YouTube video. Its purpose is descriptive and methodological rather than predictive: to demonstrate a transparent and reproducible approach that could subsequently be extended to larger collections of parliamentary videos and engagement observations.

## Method

A Poisson model was used as a simple exploratory baseline for simulating variation around the observed count of **3,306 views**. The Poisson distribution provides a straightforward model for integer-valued count data; however, the single observation does not establish that YouTube view counts follow a Poisson distribution.

Using **R 4.5.0**, random seed `123`, and an expected value of 3,306, **10,000 observations** were simulated. The mean, standard deviation, minimum, maximum, and empirical 95% simulation interval were calculated. The empirical interval was defined by the 2.5th and 97.5th percentiles.

## Results

The simulated mean was **3,304.636 views**, with a standard deviation of **57.003 views**. Values ranged from **3,086 to 3,527 views**, while the empirical 95% simulation interval was **3,192–3,416 views**. The simulated distribution was centered closely around the observed value of 3,306 views.

\begin{figure}[H]
\centering
\includegraphics[width=0.60\textwidth]{figure_1_view_count_distribution.png}
\caption{Distribution of 10,000 simulated YouTube view counts under the Poisson model. The red vertical line marks the observed count of 3,306 views.}
\end{figure}

## Discussion and Conclusion

The simulation demonstrates how a publicly visible digital engagement metric can serve as the starting point for a reproducible statistical exercise. Rather than treating the observed count as an isolated number, simulation provides an accessible way to explore variation under an explicitly stated model.

This approach has potential value for **civic-data literacy**. Parliamentary videos and their publicly observable digital metrics can provide concrete material through which citizens, students, educators, and researchers can explore uncertainty, distributions, and reproducible quantitative reasoning. The present study should nevertheless be regarded as a proof-of-concept. It uses one video and one observation, and the Poisson assumption is illustrative rather than empirically validated.

Future research could extend the framework to multiple Sansad TV videos and longitudinal observations, examining engagement across parliamentary sessions, topics, video characteristics, and time. Alternative statistical models could also be compared with the Poisson baseline.

## Reference

YouTube. (2026). *RS | Monsoon Session 2026 | Question Hour | Time: 12:00 PM -12:04 PM | 07 August, 2026* [Video]. YouTube. https://www.youtube.com/watch?v=mfZ5GKz2yjY

## Code Availability

The R code used to generate the simulation and Figure 1 is available in the accompanying [GitHub repository](https://github.com/toraneh/simulating-variation-in-youtube-view-count).
