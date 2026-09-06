# ---- Simulation ----
observed_views <- 3306

set.seed(123)
simulated_views <- rpois(10000, observed_views)

sim_mean <- mean(simulated_views)
sim_sd   <- sd(simulated_views)
sim_min  <- min(simulated_views)
sim_max  <- max(simulated_views)
ci       <- quantile(simulated_views, c(0.025, 0.975))

sim_mean
sim_sd
sim_min
sim_max
ci

# ---- Export as high-res PNG for the preprint ----
png("figure_1_view_count_distribution_v2.png",
    width = 8, height = 5.5, units = "in", res = 300)

par(family = "serif",
    mar = c(5, 5, 4, 2),
    cex.main = 1.3,
    cex.lab = 1.1,
    cex.axis = 0.95)

hist(simulated_views,
     breaks = 50,
     main = "Simulated YouTube View Counts",
     xlab = "View Count",
     ylab = "Frequency",
     col = "#ADD8E6",
     border = "white",
     xlim = c(3050, 3550),
     ylim = c(0, 750),
     las = 1)

# subtle horizontal gridlines behind the bars would require replotting,
# so instead add them lightly on top at low opacity intervals
abline(h = seq(0, 700, by = 100), col = "gray90", lty = 1, lwd = 0.5)

# redraw bars over gridlines so they sit on top cleanly
hist(simulated_views,
     breaks = 50,
     col = "#ADD8E6",
     border = "white",
     add = TRUE)

# observed value line
abline(v = observed_views, col = "firebrick", lwd = 2)

# mean of simulated distribution (dashed, for comparison)
abline(v = sim_mean, col = "gray40", lwd = 1.5, lty = 2)

legend("topright",
       legend = c(paste0("Observed views (", observed_views, ")"),
                  paste0("Simulated mean (", round(sim_mean, 1), ")")),
       col = c("firebrick", "gray40"),
       lwd = c(2, 1.5),
       lty = c(1, 2),
       bty = "n",
       cex = 0.9)

# stats subtitle
mtext(paste0("n = 10,000 simulations | SD = ", round(sim_sd, 1),
             " | 95% CI: [", ci[1], ", ", ci[2], "]"),
      side = 3, line = 0.3, cex = 0.85, col = "gray30")

box(col = "gray50")

dev.off()