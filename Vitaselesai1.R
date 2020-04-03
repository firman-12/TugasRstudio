library(dplyr)
no1
datasetno1 <- Vita1 %>% select(customer_id, sales) %>% filter(sales== max(sales))

no2
datasetno2 <- Vita1 %>% select(category, sub_category,profit) %>% filter(category== 'Office Supplies') 

no3
datasetno3 <- nrow(Vita1 %>% select(profit) %>% filter(profit <0 )) 

no4
atasetno4 <- Vita1 %>% select (customer_id, sales)%>% filter(customer_id %in% c("JE-16165","KH-16510"," AD-10180"))%>% group_by(customer_id)%>% summarise(total_sales=sum(sales))%>% filter(total_sales == max(total_sales))

no5
dataset1 <- read.csv('Vita1.csv',sep=",",header=TRUE)
yearly <- Vita1 %>% group_by(tahun) %>% 
  summarise(total_sales = sum(sales), total_profit = sum(profit), total_customer = n())
provitmax <- filter(yearly, total_profit == max(total_profit))

no6
plottt <- Vita1 %>% select(profit,sales,tahun) %>% filter(tahun %in% c("2014","2015"))
attach(plottt)
mycol <- c(x = "yellow", y = "green")
plot(sales~profit,
     main= "Sales Vs Profit 2014-2015", 
     xlab = "Sales", ylab="Profit", 
     pch = 1, 
     frame = FALSE 
)      
