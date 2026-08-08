observed_views <- 3306

set.seed(123)

simulated_views <- rpois(10000, observed_views)

mean(simulated_views)
sd(simulated_views)
min(simulated_views)
max(simulated_views)
quantile(simulated_views, c(0.025, 0.975))

hist(simulated_views,
     breaks = 50,
     main = "Simulated YouTube View Counts",
     xlab = "View Count",
     col = "lightblue",
     border = "white")

abline(v = observed_views,
       col = "red",
       lwd = 2)

