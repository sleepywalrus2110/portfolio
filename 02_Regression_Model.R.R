model1 <- lm(Spends_Cr ~ Cards_in_Force_Cr,
             data = combined)

summary(model1)

model1 <- lm(Spends_Cr ~ Cards_in_Force_Cr,
             data = combined)
summary(model1)

plot(model1)
<return>

  cards_model <- lm(Cards_in_Force_Cr ~ c(1:8))

summary(cards_model)  

predict(cards_model,
        newdata = data.frame(`c(1:8)` = 9))

cards_model <- lm(Cards_in_Force_Cr ~ c(1:8), data = combined)
cards_model
summary(cards_model)

predict(cards_model,
        newdata = data.frame(`c(1:8)` = 9))

combined$Year_Num <- 1:nrow(combined)
combined[, c("FY","Year_Num")]
cards_model <- lm(Cards_in_Force_Cr ~ Year_Num,
                  data = combined)
summary(cards_model)
predict(cards_model,
        newdata = data.frame(Year_Num = 9))
Cards_in_Force_Cr ~ c(1:8)

summary(cards_model)

forecast_data <- data.frame(
  FY = c(combined$FY, "FY26F"),
  Cards = c(combined$Cards_in_Force_Cr, 2.281071)
)

library(ggplot2)

forecast_data <- data.frame(
  FY = c(combined$FY, "FY26F"),
  Cards = c(combined$Cards_in_Force_Cr, 2.281071)
)

forecast_data

ggplot(forecast_data,
       aes(x = FY,
           y = Cards,
           group = 1)) +
  geom_line(linewidth = 1.5) +
  geom_point(size = 4) +
  geom_text(aes(label = round(Cards,2)),
            vjust = -0.7) +
  labs(
    title = "SBI Card Customer Base Forecast",
    subtitle = "FY26 forecast based on linear trend model",
    x = "Financial Year",
    y = "Cards in Force (Crore)"
  ) +
  theme_minimal()
