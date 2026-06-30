library(readxl)

excel_sheets("/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx")

library(readxl)

rbi <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx",
  sheet = "RBI_Payment_Data"
)

sbi <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx",
  sheet = "SBI_Card_Annual_Data"
)

combined <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx",
  sheet = "combined"
)

</> r
View(combined)

file.exists("/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx")
</> r
names(combined)

</> r
glimpse(combined)

summary(combined)

any(is.na(combined))
library(tidyverse)
library(tidyverse)
glimpse(combined)

colSums(is.na(combined))

library(ggplot2)

ggplot(combined, aes(x = FY, y = UPI_Volume_Mn, group = 1)) +
  geom_line() +
  geom_point() +
  labs(
    title = "UPI Volume Growth",
    x = "Financial Year",
    y = "UPI Volume (Mn)"
  )

library(readxl)

combined <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx",
  sheet = "combined"
)

View(combined)

combined <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx",
  sheet = "combined"
)

combined[, c("FY","Cards_in_Force_Cr","Spends_Cr")]

view(combined)

"~/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx"

file.info("/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master.xlsx")
combined <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_Master_FINAL.xlsx",
  sheet = "combined"
)


list.files("/Users/sriya/Desktop/data for r project")
library(readxl)

combined <- read_excel(
  "/Users/sriya/Desktop/data for r project/Digital_Credit_Consumer_final.xlsx",
  sheet = "combined"
)
combined[, c("FY","Cards_in_Force_Cr","Spends_Cr")]


