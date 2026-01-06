library(readr)
library(dplyr)
library(ggplot2)
library(tidyr)
library(readxl)

# Old: Pre Module 1
data <- read.csv("./input/data_2.csv")

summary(data)

print(round(mean(subset(na.omit(data), species == "Adelie" & island == "Torgersen")$bill_length_mm), 2))
print(round(mean(subset(na.omit(data), species == "Adelie" & island == "Biscoe")$bill_length_mm), 2))
print(round(mean(subset(na.omit(data), species == "Adelie" & island == "Dream")$bill_length_mm), 2))


# Plot
penguins_clean <- na.omit(data)
plot(penguins_clean$bill_length_mm, penguins_clean$bill_depth_mm, type = "n", xlab = "Bill Length (mm)", ylab = "Bill Depth (mm)", main = "Penguin Bill Dimensions")
points(
  penguins_clean$bill_length_mm[penguins_clean$species == "Adelie"], penguins_clean$bill_depth_mm[penguins_clean$species == "Adelie"],
  col = "red", pch = 16
)
points(penguins_clean$bill_length_mm[penguins_clean$species == "Chinstrap"], penguins_clean$bill_depth_mm[penguins_clean$species == "Chinstrap"], col = "green", pch = 17)
points(penguins_clean$bill_length_mm[penguins_clean$species == "Gentoo"],
  penguins_clean$bill_depth_mm[penguins_clean$species == "Gentoo"],
  col = "blue", pch = 18
)
legend("topright",
  legend = unique(penguins_clean$species),
  col = c(
    "red",
    "green",
    "blue"
  ), pch = c(16, 17, 18)
)


# New: Homework after Module 1
# All one pipe!
read_csv(
  file = "./input/data_2.csv"
) |>
  drop_na() |>
  ggplot(aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species, shape = species)) +
  labs(
    title = "Penguin Bill Dimensions",
    x = "Bill Depth (mm)",
    y = "Bill Length (mm)",
  ) +
  theme_classic() +
  theme(
    legend.title = element_blank(),
    legend.position = "top",
    legend.justification = "right"
  )

# New: Homework after Module 1 Lesson 6 using readxl
read_excel(
  path = "./input/data.xlsx",
  sheet = "Tab 1",
  na = "NA"
) |>
  drop_na() |>
  ggplot(aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point(aes(color = species, shape = species)) +
  labs(
    title = "Penguin Bill Dimensions",
    x = "Bill Depth (mm)",
    y = "Bill Length (mm)",
  ) +
  theme_classic() +
  theme(
    legend.title = element_blank(),
    legend.position = "top",
    legend.justification = "right"
  )

# ggplot2 function made in Module 1 Lesson 7
# plot function
create_scatterplot <- function(data, selected_species, selected_island) {
  # Filter the data for the specified species and island
  filtered_data <- data %>%
    na.omit() %>%
    filter(species == selected_species, island == selected_island)
  
  # Create the scatterplot
  plot <- ggplot(
    filtered_data,
    aes(x = bill_length_mm, y = bill_depth_mm, color = species, shape = species)
  ) +
    geom_point() +
    labs(
      x = "Bill Length (mm)",
      y = "Bill Depth (mm)",
      title = paste("Penguin Bill Dimensions -", selected_species, "-", selected_island)
    )
  
  return(plot)
}

# Use the function
create_scatterplot(data, "Adelie", "Torgersen")

