
install.packages("dplyr")
install.packages("ggplot2")


library(dplyr)
library(ggplot2)

#get data into dataframe
df <- read.csv("C:/Users/bird0/Desktop/cs467/ClimateData.csv")

#replace all empty variables with NA
df[df == "?"] <- NA 

#add leading 0 to single digit months
df$Month <- sprintf("%02d", df$Month)

#merge Year and Month into new column "Date"
df$Date <- paste(df$Year, df$Month, sep="")

#transform dataframe into numeric graph
df[] <- lapply(df, as.numeric) # Force entire dataframe into numeric type



# Create a scatterplots for variables over Date

#Co2
ggplot(df, aes(x=Date, y=CO2)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "CO2 levels in ppmv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "CO2 ppmv")

#MEI
ggplot(df, aes(x=Date, y=MEI)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Multivariate El Nino by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "El Nino/La Nina-Southern Oscillation")

#CH4
ggplot(df, aes(x=Date, y=CH4)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Methan levels in ppmv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Methane ppmv")

#N2O
ggplot(df, aes(x=Date, y=N2O)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Nitrous Oxide levels in ppmv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Nitrous Oxide ppmv")

#CFC.11
ggplot(df, aes(x=Date, y=CFC.11)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Trichlorofluoromethane, levels in ppbv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Trichlorofluoromethane ppbv")

#CFC.12
ggplot(df, aes(x=Date, y=CFC.12)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Dichlorodifluoromethane, levels in ppbv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Dichlorodifluoromethane ppbv")

#TSI
ggplot(df, aes(x=Date, y=TSI)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Total Solar Irradiance by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Total Solar Irradiance")

#Aerosols
ggplot(df, aes(x=Date, y=Aerosols)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Aerosols optical depth at 550 nm by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Aerosols optical depth at 550 nm")

#Temp
ggplot(df, aes(x=Date, y=Temp)) +
  geom_point(color="blue", alpha=0.25) +
  labs(title = "Temperature in Celsius from Global Avg. by Month ", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Temperature in Celsius from Global Avg.")

######Create Linear Regression for Variables over Date

#CO2

ggplot(df, aes(x=Date, y=CO2)) +
geom_point(color= "blue", alpha=0.25) +

geom_smooth(method ="lm", color="red")+
labs(title = "CO2 levels in ppmv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "CO2 ppmv")

#MEI

ggplot(df, aes(x=Date, y=MEI)) +
geom_point(color= "blue", alpha=0.25) +

geom_smooth(method ="lm", color="red")+
labs(title = "Multivariate El Nino by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "El Nino/La Nina-Southern Oscillation")

#CH4
ggplot(df, aes(x=Date, y=CH4)) +
  geom_point(color="blue", alpha=0.25) +
	geom_smooth(method ="lm", color="red")+
  labs(title = "Methan levels in ppmv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Methane ppmv")

#N2O
ggplot(df, aes(x=Date, y=N2O)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Nitrous Oxide levels in ppmv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Nitrous Oxide ppmv")

#CFC.11
ggplot(df, aes(x=Date, y=CFC.11)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Trichlorofluoromethane, levels in ppbv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Trichlorofluoromethane ppbv")

#CFC.12
ggplot(df, aes(x=Date, y=CFC.12)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Dichlorodifluoromethane, levels in ppbv by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Dichlorodifluoromethane ppbv")

#TSI
ggplot(df, aes(x=Date, y=TSI)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Total Solar Irradiance by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Total Solar Irradiance")

#Aerosols
ggplot(df, aes(x=Date, y=Aerosols)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Aerosols optical depth at 550 nm by Month", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Aerosols optical depth at 550 nm")

#Temp
ggplot(df, aes(x=Date, y=Temp)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Temperature in Celsius from Global Avg. by Month ", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "Month", 
       y = "Temperature in Celsius from Global Avg.")


######Create averages over 5 year periods

#cut graph into segments by 5 years

df$interval <- cut(df$Year, breaks = c(1982, 1988, 1993, 1998, 2003, 2008), 
                   labels = c("1983-1987", "1988-1992", "1993-1997", "1998-2002", "2003-2008"))

#fill new dataframe with 5 years averages

df_mean <- df %>%
  group_by(interval) %>%
  summarize_all(mean)

#linear regression model
df_mean$interval <- as.numeric(df_mean$interval)
model <- lm(interval ~ MEI, data = df_mean)
summary(model)

######plotted 5 year averages

#aerosols
ggplot(df_mean, aes(x=interval, y=Aerosols)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Aerosols optical depth at 550 nm by Averaged 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "Aerosols optical depth at 550 nm")
#Temp
ggplot(df_mean, aes(x=interval, y=Temp)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Temperature in Celsius from Global Avg by Averaged 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "Temperature in Celsius from Global Avg")

#Co2
ggplot(df_mean, aes(x=interval, y=CO2)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "CO2 levels in ppmv by Averaged 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "CO2 levels in ppmv")

#CH4
ggplot(df_mean, aes(x=interval, y=CH4)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "CH4 levels in ppmv by Averaged 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "CH4 levels in ppmv")

# TSI Total Solar Irradiance
ggplot(df_mean, aes(x=interval, y=TSI)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Total Solar Irradiance by Averaged 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "Total Solar Irradiance")

#Dichlorodifluoromethane ppbv CFC.12
ggplot(df_mean, aes(x=interval, y=CFC.12)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Dichlorodifluoromethane ppbv 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "Dichlorodifluoromethane ppbv")

#Trichlorofluoromethane ppbv CFC.11
ggplot(df_mean, aes(x=interval, y=CFC.11)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Trichlorofluoromethane ppbv 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "Trichlorofluoromethane ppbv")

#Nitrous Oxide ppmv N2O
ggplot(df_mean, aes(x=interval, y=N2O)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Nitrous Oxide ppmv 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "Nitrous Oxide ppmv")

#Multivariate El Nino - El Nino/La Nina-Southern Oscillation
ggplot(df_mean, aes(x=interval, y=MEI)) +
  geom_point(color="blue", alpha=0.25) +
geom_smooth(method ="lm", color="red")+
  labs(title = "Multivariate El Nino by 5 year periods", 
       subtitle = "May 1, 1983 to Dec 1, 2008", 
       x = "5 year periods", 
       y = "El Nino/La Nina-Southern Oscillation")

#####summary statistics
# Calculate the summary statistics for one variable

#MEI
summary_stats <- summary(df$MEI)
summary_stats


#CO2
summary_stats <- summary(df$CO2)
summary_stats

#CH4
summary_stats <- summary(df$CH4)
summary_stats


#N2O
summary_stats <- summary(df$N2O)
summary_stats


#CFC11
summary_stats <- summary(df$CFC.11)
summary_stats


#CFC12
summary_stats <- summary(df$CFC.12)
summary_stats



#TSI
summary_stats <- summary(df$TSI)
summary_stats

#Aerosols
summary_stats <- summary(df$Aerosols)
summary_stats

#Temp
summary_stats <- summary(df$Temp)
summary_stats

