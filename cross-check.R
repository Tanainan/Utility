library(readxl)
library(tidyverse)

dt <- read_excel("~/Downloads/Ging_excluded_included.xlsx")
data <- read_excel("~/Downloads/Cross-check_Ging & P'Nui.xlsx")

d <- left_join(data, dt, by = c("title", "authors", "year"))

which(duplicated(dt$title) == T)

write.csv(d, "cross-check.csv")
