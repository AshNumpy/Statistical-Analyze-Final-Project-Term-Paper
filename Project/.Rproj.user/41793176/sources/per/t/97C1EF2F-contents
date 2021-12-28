library(readr)
corona <- read_csv("coronavirus.csv")

library(dplyr)
library(tidyr)

a <-corona %>%
  filter(continent %in% c("Africa","Asia","Europe","North America","South America")) %>%
  summarize(date=date,continent=continent, location=location, new_cases=new_cases, total_cases=total_cases, new_cases_per_million=new_cases_per_million,
            new_deaths=new_deaths, total_deaths=total_deaths, new_deaths_per_million=new_deaths_per_million, population=population,cases_density_population=total_cases/population)

a <- a%>%
  filter(date > "2020-06-01" & date <"2020-06-30") %>%
  drop_na()

africa <- a %>%
  filter(continent == "Africa")
Asia <- a %>%
  filter(continent == "Asia")
Europe <- a %>%
  filter(continent == "Europe")
North_America <- a %>%
  filter(continent == "North America")
South_America <- a %>%
  filter(continent == "South America")

x_asia <- Asia[sample(nrow(Asia),20),]
x_africa <- africa[sample(nrow(africa),20),]
x_europe <- Europe[sample(nrow(Europe),20),]
x_sth_america <- South_America[sample(nrow(South_America),20),]
x_nrth_america <- North_America[sample(nrow(North_America),20),]

x_corona <- rbind(x_asia,x_africa,x_europe,x_sth_america,x_nrth_america)
x_corona <- x_corona[,-1]

library(writexl)
write.csv(x_corona, "C:\\Users\\lenovo\\Documents\\GitHub\\Statistical-Analyze-Final\\Datasets\\y_corona.csv")


#Gozlemi yapilacak veri Y_CORONA verisi


#ESQUISSE PART
library(esquisse)
y_corona$continent <- as.factor(y_corona$continent)
y_corona$location <- as.factor(y_corona$location)
esquisse::esquisser(data=y_corona)


#TÜM KITALARIN toplam vaka sayılarına ilişkin BAR GRAFİĞİ: 
library(ggplot2)
ggplot(y_corona) +
 aes(x = continent, weight = total_cases) +
 geom_bar(fill = "#112446") +
 theme_minimal()



###ASIA###
#Asianın toplam vaka / toplam ölüm ÇİZGİ GRAFİĞİ:
library(dplyr)
library(ggplot2)
y_corona %>%
  filter(continent %in% "Asia") %>%
  ggplot() +
  aes(x = total_cases, y = total_deaths) +
  geom_line(size = 0.5, colour = "#B22222") +
  scale_x_continuous(trans = "log10") +
  scale_y_continuous(trans = "log10") +
  labs(x = "Toplam vaka", 
       y = "Toplam ölüm sayısı", title = "Vaka / Ölüm Çizgi Grafiği", subtitle = "Asia") +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", hjust = 0.5))


#Asianın Milyon kişi başına yeni ölüm sayısı YOĞUNLUK GRAFİĞİ
library(dplyr)
library(ggplot2)
y_corona %>%
 filter(continent %in% "Asia") %>%
 ggplot() +
 aes(x = new_deaths_per_million) +
 geom_density(adjust = 1L, fill = "#112446") +
 scale_x_continuous(trans = "log") +
 labs(x = "Milyon kişi başına yeni ölüm sayısı", y = "Yoğunluk", title = "Milyona oranla yeni ölüm sayısının yoğunluk grafiği", 
 subtitle = "Asia") +
 theme_minimal() +
 theme(plot.title = element_text(face = "bold", hjust = 0.5))


#Asianın 

esquisse::esquisser(data=y_corona)
