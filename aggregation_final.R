library(dplyr)
setwd('C:/Python/project6')
d <- read.csv('./data/108785617_22016_553_airline_delay_causes.csv')


# Aggregate number of flights by year and carrier
agg <- d %>%
  filter(!is.na(arr_del15)) %>%
  group_by(year, carrier_name) %>%
  summarise(arr_flights=sum(arr_flights), 
            arr_del15=sum(arr_del15),
            arr_delay=sum(arr_delay))

# Compute percentage of delay
agg$arr_del15_rate <- round(agg$arr_del15 / agg$arr_flights, 3)
# Compute average of delay in minutes
agg$arr_delay_ave <- round(agg$arr_delay / agg$arr_del15, 1)

# Filter by target carriers that exist in 2016
fltrd <- agg[agg$carrier_name %in% agg$carrier_name[agg$year == 2016], ]

# Remove 2016 data since only Jan and Feb is available
fltrd <- fltrd[fltrd$year != 2016, ]
# Remove "Inc." and "Co." from carrier name
fltrd$carrier_name <- sub(" Inc\\.| Co\\.", "", fltrd$carrier_name)
# Remove "Airlines", "Air Lines" and "Airways" from carrier name
fltrd$carrier_name <- sub(" Airlines| Air Lines| Airways", "", fltrd$carrier_name)


write.csv(fltrd, './data/airline_delay_causes_aggregated_final.csv', row.names=FALSE)

