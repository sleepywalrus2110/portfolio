ggplot(combined,
       aes(x = FY,
           y = Cards_in_Force_Cr,
           group = 1)) +
  geom_line(linewidth = 1.5) +
  geom_point(size = 4) +
  geom_text(aes(label = round(Cards_in_Force_Cr,2)),
            vjust = -0.8,
            size = 4) +
  expand_limits(y = 2.3)
  labs(
    title = "SBI Card Cards-in-Force Trend (FY18-FY25)",
    subtitle = "Growth in customer card base",
    x = "Financial Year",
    y = "Cards in Force (Crore)"
  ) +
  theme_minimal()

  #UPI Volume Growth Trend
ggplot(combined,
       aes(x = FY,
           y = UPI_Volume_Mn,
           group = 1)) +
  geom_line(linewidth = 1.5) +
  geom_point(size = 4) +
  labs(
    title = "UPI Transaction Volume Trend",
    subtitle = "UPI volume growth in India",
    x = "Financial Year",
    y = "UPI Volume (Million Transactions)"
  ) +
  theme_minimal()

#Relationship Analysis #1
#"UPI exploded in India. Did that hurt credit card usage?"
ggplot(combined,
       aes(x = UPI_Volume_Mn,
           y = CreditCard_Volume_Mn,
           label = FY)) +
  geom_point(size = 4) +
  geom_text(nudge_y = 1000) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "UPI Volume vs Credit Card Volume",
    subtitle = "Relationship between UPI adoption and credit card usage",
    x = "UPI Volume (Million Transactions)",
    y = "Credit Card Volume (Million Transactions)"
  ) +
  theme_minimal()

#Growth in digital payments may expand the ecosystem rather than cannibalize card usage.
cor(combined$UPI_Volume_Mn,
    combined$CreditCard_Volume_Mn)

#Credit Card Base ↔ Credit Card Spending
ggplot(combined,
       aes(x = Cards_in_Force_Cr,
           y = Spends_Cr,
           label = FY)) +
  geom_point(size = 4) +
  geom_text(nudge_y = 15000) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "Cards in Force vs Card Spending",
    subtitle = "Do more customers translate into higher spending?",
    x = "Cards in Force (Crore)",
    y = "Card Spending (₹ Crore)"
  ) +
  theme_minimal()

cor(combined$Cards_in_Force_Cr,
    combined$Spends_Cr)

#UPI Adoption ↔ SBI Card Customer Growth
"If UPI became dominant, why did card customers continue growing?"

ggplot(combined,
       aes(x = UPI_Volume_Mn,
           y = Cards_in_Force_Cr,
           label = FY)) +
  geom_point(size = 4) +
  geom_text(nudge_y = 0.05) +
  geom_smooth(method = "lm", se = FALSE) +
  labs(
    title = "UPI Volume vs SBI Card Customer Base",
    subtitle = "Does UPI growth coincide with card customer growth?",
    x = "UPI Volume (Million Transactions)",
    y = "Cards in Force (Crore)"
  ) +
  theme_minimal()

cor(combined$UPI_Volume_Mn,
    combined$Cards_in_Force_Cr)
