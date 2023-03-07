rm(list = ls())
gc()

source("environments.R")

figDir <- file.path(outDir, "figures", "00")
if (!dir.exists(figDir)) {
  dir.create(figDir, recursive = TRUE)
}

pacman::p_load(
  tidyverse
)

# data
x <- seq(from = -20, to = 20, by = 0.1)

# plots - normal distribution
y <- rnorm(n = x, mean = 0, sd = 1) # number of observations

p <-
  ggplot() +
  aes(x = x, y = y) +
  geom_line()
ggsave(
  file = file.path(figDir, "plot-001.pdf"),
  plot = p
)

y <- dnorm(x = x, mean = 0, sd = 1) # x = vector of quantiles

p <-
  ggplot() +
  aes(x = x, y = y) +
  geom_line()
ggsave(
  file = file.path(figDir, "plot-002.pdf"),
  plot = p
)

y <- pnorm(q = x, mean = 0, sd = 1) # q = vector of quantiles

p <-
  ggplot() +
  aes(x = x, y = y) +
  geom_line()
ggsave(
  file = file.path(figDir, "plot-003.pdf"),
  plot = p
)

# plots - log-normal distribution
y <- rlnorm(n = x, mean = 0, sd = 1) # number of observations

p <-
  ggplot() +
  aes(x = x, y = y) +
  geom_line()
ggsave(
  file = file.path(figDir, "plot-004.pdf"),
  plot = p
)

y <- dlnorm(x = x, mean = 0, sd = 1) # x = vector of quantiles

p <-
  ggplot() +
  aes(x = x, y = y) +
  geom_line()
ggsave(
  file = file.path(figDir, "plot-005.pdf"),
  plot = p
)

y <- plnorm(q = x, mean = 0, sd = 1) # q = vector of quantiles

p <-
  ggplot() +
  aes(x = x, y = y) +
  geom_line()
ggsave(
  file = file.path(figDir, "plot-006.pdf"),
  plot = p
)
