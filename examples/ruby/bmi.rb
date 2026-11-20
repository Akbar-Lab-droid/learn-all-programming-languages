# BMI calculator - Ruby
def bmi(weight_kg, height_m)
  weight_kg / (height_m * height_m)
end

def category(value)
  return "Underweight" if value < 18.5
  return "Normal" if value < 25
  return "Overweight" if value < 30
  "Obese"
end

[["Akbar", 70, 1.75], ["Budi", 85, 1.70], ["Citra", 50, 1.60]].each do |name, w, h|
  value = bmi(w, h)
  puts "#{name}: BMI #{value.round(1)} - #{category(value)}"
end
