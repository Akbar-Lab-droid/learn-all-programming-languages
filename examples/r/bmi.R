# BMI calculator - R
bmi <- function(weight_kg, height_m) {
  weight_kg / (height_m ^ 2)
}

category <- function(value) {
  if (value < 18.5) "Underweight"
  else if (value < 25) "Normal"
  else if (value < 30) "Overweight"
  else "Obese"
}

people <- data.frame(
  name = c("Akbar", "Budi", "Citra"),
  weight = c(70, 85, 50),
  height = c(1.75, 1.70, 1.60)
)
for (i in 1:nrow(people)) {
  value <- bmi(people$weight[i], people$height[i])
  print(paste(people$name[i], ": BMI", round(value, 1), "-", category(value)))
}
