# Load in packages
library(tidyverse)
library(readxl)
library(VIM)
library(cfbfastR)
library(nflreadr)
library(data.table) 
library(mltools)
library(dplyr)
library(nflfastR)
#Obtain a cfbd api key, see how to here: https://cfbfastr.sportsdataverse.org/index.html

# First we start with the qbs - We need to extract rushing and passing data which we will get from the cfbfastR library. We will be getting data from 2004 to 2023
passing_2023 <- cfbfastR::cfbd_stats_season_player(2023, category = "passing")
rushing_2023 <- cfbfastR::cfbd_stats_season_player(2023, category = "rushing")
a <- passing_2023[1:12]
b <- rushing_2023[1:5]
c <- rushing_2023[13:17]
d <- cbind(b,c)
qbs_2023 <- left_join(a, d)
passing_2022 <- cfbfastR::cfbd_stats_season_player(2022, category = "passing")
rushing_2022 <- cfbfastR::cfbd_stats_season_player(2022, category = "rushing")
a <- passing_2022[1:12]
b <- rushing_2022[1:5]
c <- rushing_2022[13:17]
d <- cbind(b,c)
qbs_2022 <- left_join(a, d)
passing_2021 <- cfbfastR::cfbd_stats_season_player(2021, category = "passing")
rushing_2021 <- cfbfastR::cfbd_stats_season_player(2021, category = "rushing")
a <- passing_2021[1:12]
b <- rushing_2021[1:5]
c <- rushing_2021[13:17]
d <- cbind(b,c)
qbs_2021 <- left_join(a, d)
passing_2020 <- cfbfastR::cfbd_stats_season_player(2020, category = "passing")
rushing_2020 <- cfbfastR::cfbd_stats_season_player(2020, category = "rushing")
a <- passing_2020[1:12]
b <- rushing_2020[1:5]
c <- rushing_2020[13:17]
d <- cbind(b,c)
qbs_2020 <- left_join(a, d)
passing_2019 <- cfbfastR::cfbd_stats_season_player(2019, category = "passing")
rushing_2019 <- cfbfastR::cfbd_stats_season_player(2019, category = "rushing")
a <- passing_2019[1:12]
b <- rushing_2019[1:5]
c <- rushing_2019[13:17]
d <- cbind(b,c)
qbs_2019 <- left_join(a, d)
passing_2018 <- cfbfastR::cfbd_stats_season_player(2018, category = "passing")
rushing_2018 <- cfbfastR::cfbd_stats_season_player(2018, category = "rushing")
a <- passing_2018[1:12]
b <- rushing_2018[1:5]
c <- rushing_2018[13:17]
d <- cbind(b,c)
qbs_2018 <- left_join(a, d)
passing_2017 <- cfbfastR::cfbd_stats_season_player(2017, category = "passing")
rushing_2017 <- cfbfastR::cfbd_stats_season_player(2017, category = "rushing")
a <- passing_2017[1:12]
b <- rushing_2017[1:5]
c <- rushing_2017[13:17]
d <- cbind(b,c)
qbs_2017 <- left_join(a, d)
passing_2016 <- cfbfastR::cfbd_stats_season_player(2016, category = "passing")
rushing_2016 <- cfbfastR::cfbd_stats_season_player(2016, category = "rushing")
a <- passing_2016[1:12]
b <- rushing_2016[1:5]
c <- rushing_2016[13:17]
d <- cbind(b,c)
qbs_2016 <- left_join(a, d)
passing_2015 <- cfbfastR::cfbd_stats_season_player(2015, category = "passing")
rushing_2015 <- cfbfastR::cfbd_stats_season_player(2015, category = "rushing")
a <- passing_2015[1:12]
b <- rushing_2015[1:5]
c <- rushing_2015[13:17]
d <- cbind(b,c)
qbs_2015 <- left_join(a, d)
passing_2014 <- cfbfastR::cfbd_stats_season_player(2014, category = "passing")
rushing_2014 <- cfbfastR::cfbd_stats_season_player(2014, category = "rushing")
a <- passing_2014[1:12]
b <- rushing_2014[1:5]
c <- rushing_2014[13:17]
d <- cbind(b,c)
qbs_2014 <- left_join(a, d)
passing_2013 <- cfbfastR::cfbd_stats_season_player(2013, category = "passing")
rushing_2013 <- cfbfastR::cfbd_stats_season_player(2013, category = "rushing")
a <- passing_2013[1:12]
b <- rushing_2013[1:5]
c <- rushing_2013[13:17]
d <- cbind(b,c)
qbs_2013 <- left_join(a, d)
passing_2012 <- cfbfastR::cfbd_stats_season_player(2012, category = "passing")
rushing_2012 <- cfbfastR::cfbd_stats_season_player(2012, category = "rushing")
a <- passing_2012[1:12]
b <- rushing_2012[1:5]
c <- rushing_2012[13:17]
d <- cbind(b,c)
qbs_2012 <- left_join(a, d)
passing_2011 <- cfbfastR::cfbd_stats_season_player(2011, category = "passing")
rushing_2011 <- cfbfastR::cfbd_stats_season_player(2011, category = "rushing")
a <- passing_2011[1:12]
b <- rushing_2011[1:5]
c <- rushing_2011[13:17]
d <- cbind(b,c)
qbs_2011 <- left_join(a, d)
passing_2010 <- cfbfastR::cfbd_stats_season_player(2010, category = "passing")
rushing_2010 <- cfbfastR::cfbd_stats_season_player(2010, category = "rushing")
a <- passing_2010[1:12]
b <- rushing_2010[1:5]
c <- rushing_2010[13:17]
d <- cbind(b,c)
qbs_2010 <- left_join(a, d)
passing_2009 <- cfbfastR::cfbd_stats_season_player(2009, category = "passing")
rushing_2009 <- cfbfastR::cfbd_stats_season_player(2009, category = "rushing")
a <- passing_2009[1:12]
b <- rushing_2009[1:5]
c <- rushing_2009[13:17]
d <- cbind(b,c)
qbs_2009 <- left_join(a, d)
passing_2008 <- cfbfastR::cfbd_stats_season_player(2008, category = "passing")
rushing_2008 <- cfbfastR::cfbd_stats_season_player(2008, category = "rushing")
a <- passing_2008[1:12]
b <- rushing_2008[1:5]
c <- rushing_2008[13:17]
d <- cbind(b,c)
qbs_2008 <- left_join(a, d)
passing_2007 <- cfbfastR::cfbd_stats_season_player(2007, category = "passing")
rushing_2007 <- cfbfastR::cfbd_stats_season_player(2007, category = "rushing")
a <- passing_2007[1:12]
b <- rushing_2007[1:5]
c <- rushing_2007[13:17]
d <- cbind(b,c)
qbs_2007 <- left_join(a, d)
passing_2006 <- cfbfastR::cfbd_stats_season_player(2006, category = "passing")
rushing_2006 <- cfbfastR::cfbd_stats_season_player(2006, category = "rushing")
a <- passing_2006[1:12]
b <- rushing_2006[1:5]
c <- rushing_2006[13:17]
d <- cbind(b,c)
qbs_2006 <- left_join(a, d)
passing_2005 <- cfbfastR::cfbd_stats_season_player(2005, category = "passing")
rushing_2005 <- cfbfastR::cfbd_stats_season_player(2005, category = "rushing")
a <- passing_2005[1:12]
b <- rushing_2005[1:5]
c <- rushing_2005[13:17]
d <- cbind(b,c)
qbs_2005 <- left_join(a, d)
passing_2004 <- cfbfastR::cfbd_stats_season_player(2004, category = "passing")
rushing_2004 <- cfbfastR::cfbd_stats_season_player(2004, category = "rushing")
a <- passing_2004[1:12]
b <- rushing_2004[1:5]
c <- rushing_2004[13:17]
d <- cbind(b,c)
qbs_2004 <- left_join(a, d)

#Joining all of the rows and then doing some basic data wrangling
all_qbs <- bind_rows(qbs_2023, qbs_2022, qbs_2021, qbs_2020, qbs_2019, qbs_2018, qbs_2017, qbs_2016, qbs_2015, qbs_2014, qbs_2013, qbs_2012, qbs_2011, qbs_2010, qbs_2009, qbs_2008, qbs_2007, qbs_2006, qbs_2005, qbs_2004)
all_qbs[is.na(all_qbs)] <- 0
all_qbs <- filter(all_qbs, all_qbs$athlete_id > 0 )

#We will also get epa stats, adding some advanced metrics to our basic stats
epa_2023 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2023, position = "QB")
epa_2022 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2022, position = "QB")
epa_2021 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2021, position = "QB")
epa_2020 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2020, position = "QB")
epa_2019 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2019, position = "QB")
epa_2018 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2018, position = "QB")
epa_2017 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2017, position = "QB")
epa_2016 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2016, position = "QB")
epa_2015 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2015, position = "QB")
epa_2014 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2014, position = "QB")
epa_2013 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2013, position = "QB")

all_qb_epas <- bind_rows(epa_2023, epa_2022, epa_2021, epa_2020, epa_2019, epa_2018, epa_2017, epa_2016, epa_2015, epa_2014, epa_2013)

#We only have epa data since 2013. So we are going to impute the data using K-Nearest Neighbors. If QBs have similar basic stats, they should also have similar advances stats 
all_qbs_upto2013 <- bind_rows(qbs_2023, qbs_2022, qbs_2021, qbs_2020, qbs_2019, qbs_2018, qbs_2017, qbs_2016, qbs_2015, qbs_2014, qbs_2013)
#Joining all data up to 2013
all_qbs_temp <- left_join(all_qb_epas, all_qbs_upto2013, by = c("name" = "player", "season" = "year", "athlete_id", "team"))

#This is our pre-2013 data. We will eventually bind the two datasets and impute later
pre_2013 <- bind_rows(qbs_2012, qbs_2011, qbs_2010, qbs_2009, qbs_2008, qbs_2007, qbs_2006, qbs_2005, qbs_2004)
pre_2013 <- select(pre_2013, athlete_id, name = player, team, conference.x = conference, season = year, passing_completions, passing_att, passing_pct, passing_yds, passing_td, passing_int, passing_ypa, rushing_car, rushing_yds, rushing_td, rushing_ypc, rushing_long)
all_qbs <- bind_rows(all_qbs_temp, pre_2013)
all_qbs[25:36][is.na(all_qbs[25:36])] <- 0

#We now have multiple seasons so we need to figure out how to aggregate them

#First, we only take the last two season into account
filtered_qbs <- all_qbs %>%
  group_by(athlete_id) %>%
  arrange(athlete_id, desc(season)) %>%
  filter(row_number() <= 2) %>%
  ungroup()

#We need to figure out how to weigh the two seasons. The most recent is multiplied by 1, previous season is multiplied by 0.33.
filtered_qbs <- filtered_qbs %>%
  group_by(athlete_id) %>%
  mutate(weighted_epa_all = (avg_PPA_all)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_all = sum(weighted_epa_all)) %>%
  mutate(weighted_epa_pass = (avg_PPA_pass)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_pass = sum(weighted_epa_pass)) %>%
  mutate(weighted_epa_rush= (avg_PPA_rush)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_rush = sum(weighted_epa_rush)) %>%
  mutate(weighted_completions = (passing_pct)*0.33^(max(season)-season)) %>%
  mutate(weighted_completions = sum(weighted_completions)) %>%
  mutate(weighted_attempts = (passing_att)*0.33^(max(season)-season)) %>%
  mutate(weighted_attempts = sum(weighted_attempts)) %>%
  mutate(weighted_yds = (passing_yds)*0.33^(max(season)-season)) %>%
  mutate(weighted_yds = sum(weighted_yds)) %>%
  mutate(int_percent = passing_int/passing_att) %>%
  mutate(weighted_ints = (int_percent)*0.33^(max(season)-season)) %>%
  mutate(weighted_ints = sum(weighted_ints)) %>%
  mutate(weighted_rush_att = (rushing_car)*0.33^(max(season)-season)) %>%
  mutate(weighted_rush_att = sum(weighted_rush_att)) %>%
  mutate(weighted_rush_tds = (rushing_td)*0.33^(max(season)-season)) %>%
  mutate(weighted_rush_tds = sum(weighted_rush_tds)) %>%
  ungroup()

#Lets take only our selected weighted stats and the informational stats
weighted_qbs <- select(filtered_qbs, season, athlete_id, name, position, team, conference = conference.x, weighted_epa_all, weighted_epa_pass, weighted_epa_rush, weighted_attempts, weighted_completion_pct = weighted_completions, weighted_yds, weighted_int_pct = weighted_ints, weighted_rush_att, weighted_rush_tds)

#Lets only take the last season. Now there should only be one entry per QB.
weighted_qbs <- weighted_qbs %>%
  group_by(athlete_id) %>%
  filter(season == max(season)) %>%
  ungroup()

#Time to load in combine stats
combine_test <- nflreadr::load_combine(seasons = 2005:2024)

#Convert height to integers
combine_test <- combine_test %>%
  mutate(ht = ifelse(ht == "5-4", 64, ht)) %>%
  mutate(ht = ifelse(ht == "5-5", 65, ht)) %>%
  mutate(ht = ifelse(ht == "5-6", 66, ht)) %>%
  mutate(ht = ifelse(ht == "5-7", 67, ht)) %>%
  mutate(ht = ifelse(ht == "5-8", 68, ht)) %>%
  mutate(ht = ifelse(ht == "5-9", 69, ht)) %>%
  mutate(ht = ifelse(ht == "5-10", 70, ht)) %>%
  mutate(ht = ifelse(ht == "5-11", 71, ht)) %>%
  mutate(ht = ifelse(ht == "6-0", 72, ht)) %>%
  mutate(ht = ifelse(ht == "6-1", 73, ht)) %>%
  mutate(ht = ifelse(ht == "6-2", 74, ht)) %>%
  mutate(ht = ifelse(ht == "6-3", 75, ht)) %>%
  mutate(ht = ifelse(ht == "6-4", 76, ht)) %>%
  mutate(ht = ifelse(ht == "6-5", 77, ht)) %>%
  mutate(ht = ifelse(ht == "6-6", 78, ht)) %>%
  mutate(ht = ifelse(ht == "6-7", 79, ht)) %>%
  mutate(ht = ifelse(ht == "6-8", 80, ht)) %>%
  mutate(ht = ifelse(ht == "6-9", 81, ht)) %>%
  mutate(ht = ifelse(ht == "6-10", 82, ht)) 

#Changing position names to help with imputing
combine_test <- combine_test %>%
  mutate(pos = ifelse(pos == "OT", "T", pos)) %>%
  mutate(pos = ifelse(pos == "OG", "IOL", pos)) %>%
  mutate(pos = ifelse(pos == "C", "IOL", pos)) %>%
  mutate(pos = ifelse(pos == "OL", "IOL", pos)) %>%
  mutate(pos = ifelse(pos == "OLB", "EDGE", pos)) %>%
  mutate(pos = ifelse(pos == "DE", "EDGE", pos)) %>%
  mutate(pos = ifelse(pos == "SAF", "S", pos))

#Change position to a factor variable
combine_test$pos <- as.factor(combine_test$pos)

#Modify our dataframe to change the factor variables to binary variables
combine_all <- mltools::one_hot(as.data.table(combine_test))
#Only taking the numeric variables - preparing for KNN imputing
combine_all <- combine_all %>%
  select(starts_with("Pos"), ht:shuttle)

#Taking the other variables
combine_names <- select(combine_test, cfb_id, name = player_name)

#Performing KNN imputation on missing combine data
measurables <- VIM::kNN(combine_all, k = 10)
combine_all <- cbind(combine_names, measurables)

#Lets do a KNN for EPA pre-2013
weighted_qbs <- filter(weighted_qbs, weighted_attempts > 200 & weighted_yds > 1750)


qbs_desc <- weighted_qbs[1:6]
qbs_target <- weighted_qbs[7:9]
qbs_knn <- weighted_qbs[10:15]
qbs_knn$weighted_int_pct <- ifelse(is.na(qbs_knn$weighted_int_pct), 0, qbs_knn$weighted_int_pct)

#Normalizing all of the statistics
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
qbs_knn <- as.data.frame(lapply(qbs_knn, normalize))

#Binding the normalized data with the informational data
qbs_knn <- cbind(qbs_target, qbs_knn)
qbs_imputed <-  kNN(qbs_knn, variable = c("weighted_epa_all", "weighted_epa_pass", "weighted_epa_rush"), k = 10)
final_qbs <- cbind(qbs_desc, qbs_imputed)
final_qbs <- final_qbs[1:15]

#Fixing up the combine data
combine_filtered <- combine_all[,2:29]
combine_filtered <- cbind(combine_filtered, combine_test[10])
combine_filtered <- combine_filtered %>%
  select(-starts_with("Pos"))

#Fixing some of the college names so the data can be binded
combine_filtered <- combine_filtered %>%
  mutate(school = ifelse(school == "Miami (FL)", "Miami", school)) %>%
  mutate(school = ifelse(school == "Hawaii", "Hawai'i", school)) %>%
  mutate(school = ifelse(school == "Alabama-Birmingham", "UAB", school)) %>%
  mutate(school = ifelse(school == "Southern Miss", "Southern Mississippi", school)) %>%
  mutate(school = ifelse(school == "Mississippi", "Ole Miss", school)) %>%
  mutate(school = ifelse(school == "Boston Col.", "Boston College", school)) %>%
  mutate(school = ifelse(school == "Texas-San Antonio", "UT San Antonio", school)) %>%
  mutate(school = ifelse(school == "Texas-El Paso", "UTEP", school)) %>%
  mutate(school = ifelse(school == "Central Florida", "UCF", school)) %>%
  mutate(school = ifelse(school == "San Jose State", "San José State", school)) %>%
  mutate(school = ifelse(school == "Middle Tennessee State" | school == "Middle Tennessee St.", "Middle Tennessee", school)) %>%
  mutate(school = ifelse(school == "Iowa St.", "Iowa State", school)) %>%
  mutate(school = ifelse(school == "North Carolina State", "NC State", school)) %>%
  mutate_all(~ gsub("St\\.", "State", .)) %>%
  mutate_all(~ gsub("East\\.", "Eastern", .)) %>%
  mutate_all(~ gsub("West\\.", "Western", .))

#Converting combine data to numeric
combine_filtered$ht <- as.numeric(combine_filtered$ht)
combine_filtered$wt <- as.numeric(combine_filtered$wt)
combine_filtered$forty <- as.numeric(combine_filtered$forty)
combine_filtered$bench <- as.numeric(combine_filtered$bench)
combine_filtered$vertical <- as.numeric(combine_filtered$vertical)
combine_filtered$broad_jump <- as.numeric(combine_filtered$broad_jump)
combine_filtered$cone <- as.numeric(combine_filtered$cone)
combine_filtered$shuttle <- as.numeric(combine_filtered$shuttle)


#Make faster times better - Preparing to normalize all of the combine stats
combine_filtered$forty <- 1 - combine_filtered$forty
combine_filtered$cone <- 1 - combine_filtered$cone
combine_filtered$shuttle <- 1 - combine_filtered$shuttle
#Normalize combine stats
combine_filtered[,2:9] <- as.data.frame(lapply(combine_filtered[,2:9], normalize))

#We need to correct for some combine names
combine_filtered <- combine_filtered %>% 
  mutate(name = ifelse(name == "Manuel White", "Manuel White Jr.", name)) %>%
  mutate(name = ifelse(name == "Gerald Riggs", "Gerald Riggs Jr.", name)) %>%
  mutate(name = ifelse(name == "Roy Helu", "Roy Helu Jr.", name)) %>%
  mutate(name = ifelse(name == "Armando Allen", "Armando Allen Jr.", name)) %>%
  mutate(name = ifelse(name == "Benny Snell", "Benny Snell Jr.", name)) %>%
  mutate(name = ifelse(name == "Patrick Taylor", "Patrick Taylor Jr.", name)) %>%
  mutate(name = ifelse(name == "Tony Jones", "Tony Jones Jr.", name)) %>%
  mutate(name = ifelse(name == "Brian Robinson", "Brian Robinson Jr.", name)) %>%
  mutate(name = ifelse(name == "Pooka Williams", "Pooka Williams Jr.", name)) %>%
  mutate(name = ifelse(name == "James Wilder", "James Wilder Jr.", name)) %>%
  mutate(name = ifelse(name == "Duke Johnson", "Duke Johnson Jr.", name)) %>%
  mutate(name = ifelse(name == "Marion Barber", "Marion Barber III", name)) %>%
  mutate(name = ifelse(name == "Chris Warren", "Chris Warren III", name)) %>%
  mutate(name = ifelse(name == "Larry Rountree", "Larry Rountree III", name)) %>%
  mutate(name = ifelse(name == "George Atkinson", "George Atkinson III", name)) %>%
  mutate(name = ifelse(name == "Kenneth Walker", "Kenneth Walker III", name)) %>%
  mutate(name = ifelse(name == "Todd Gurley", "Todd Gurley II", name)) %>%
  mutate(name = ifelse(name == "Tedd Ginn", "Tedd Ginn Jr.", name)) %>%
  mutate(name = ifelse(name == "Marvin Jones", "Marvin Jones Jr.", name)) %>%
  mutate(name = ifelse(name == "Odell Beckham", "Odell Beckham Jr.", name)) %>%
  mutate(name = ifelse(name == "Simmie Cobbs", "Simmie Cobbs Jr.", name)) %>%
  mutate(name = ifelse(name == "Tavares Martin", "Tavares Martin Jr.", name)) %>%
  mutate(name = ifelse(name == "Steven Mitchell", "Steven Mitchell Jr.", name)) %>%
  mutate(name = ifelse(name == "Stanley Morgan", "Stanley Morgan Jr.", name)) %>%
  mutate(name = ifelse(name == "Steven Sims", "Steven Sims Jr.", name)) %>%
  mutate(name = ifelse(name == "Darrell Stewart", "Darrell Stewart Jr.", name)) %>%
  mutate(name = ifelse(name == "Michael Pittman", "Laviska Shenault Jr.", name)) %>%
  mutate(name = ifelse(name == "Lynn Bowden", "Lynn Bowden Jr.", name)) %>%
  mutate(name = ifelse(name == "Jonathan Adams", "Jonathan Adams Jr.", name)) %>%
  mutate(name = ifelse(name == "Velus Jones", "Velus Jones Jr.", name)) %>%
  mutate(name = ifelse(name == "Marvin Harrison", "Marvin Harrison Jr.", name)) %>%
  mutate(name = ifelse(name == "Brian Thomas", "Brian Thomas Jr.", name)) %>%
  mutate(name = ifelse(name == "Bennie Fowler", "Bennie Fowler III", name)) %>%
  mutate(name = ifelse(name == "Felton Davis", "Felton Davis III", name)) %>%
  mutate(name = ifelse(name == "Henry Ruggs", "Henry Ruggs III", name)) %>%
  mutate(name = ifelse(name == "Johnny Johnson", "Johnny Johnson III", name)) %>%
  mutate(name = ifelse(name == "Calvin Austin", "Calvin Austin III", name)) %>%
  mutate(name = ifelse(name == "Will Fuller", "Will Fuller V", name)) %>%
  mutate(name = ifelse(name == "Vernon Adams", "Vernon Adams Jr.", name)) %>%
  mutate(name = ifelse(name == "Robert Griffin", "Robert Griffin III", name)) %>%
  mutate(name = ifelse(name == "Mitchell Trubisky", "Mitch Trubisky", name))
  
  
#Joining the QB data and combine data
final_qbs1 <- left_join(final_qbs, combine_filtered, by = c("name", "team" = "school"))
final_qbs1$position <- "QB"  

final_qbs1 <- na.omit(final_qbs1)
#Getting the data ready to be compared
qbs_python <- cbind(final_qbs1$name, final_qbs1[7:23])
#Weighing the statistics - Measurables are weighted higher
qbs_python$ht <- 3*qbs_python$ht
qbs_python$wt <- 3*qbs_python$wt
qbs_python$weighted_epa_all <- 2*qbs_python$weighted_epa_all
qbs_python$weighted_epa_pass <- 2*qbs_python$weighted_epa_pass
qbs_python$weighted_epa_rush <- 2*qbs_python$weighted_epa_rush

#Exporting as csv to the python file
write.csv(qbs_python, "qbs_python.csv")

#Reading in data FROM the python file
knn_qbs <- read.csv("top_similar_players_qbs.csv")

#We need to convert the data to wide (More columns less rows) so we nee to prepare the data
knn_qbs <- knn_qbs %>%
  group_by(base_player) %>%
  mutate(rank = row_number()) %>%
  ungroup()

#Converting euclidian distance to a similarity percentage
knn_qbs$distance <- 1/(1+knn_qbs$distance)

#Converting to a wide format - Now the similar players will be in the same row as the selected player
knn_qbs <- knn_qbs %>%
  pivot_wider(
    names_from = rank,                
    values_from = c(name, distance)  
  )

#Time to load in the nfl headshots
nfl_stats <- nflfastR::load_player_stats(2014:2023)
nfl_headshots <- select(nfl_stats, name = player_display_name, season, url = headshot_url)

#Include the player's most recent headshot
nfl_headshots <- nfl_headshots %>%
  group_by(name) %>%
  filter(row_number(desc(season)) == 1) %>%
  ungroup()
nfl_headshots <- select(nfl_headshots, -season)

#Adding the headshot urls to the headshot
shiny_qbs <- left_join(knn_qbs, nfl_headshots, by = c("base_player" = "name"))
final_qbs1$draft_class <- final_qbs1$season+1

#Adding in some of the basic information about each QB
information <- select(final_qbs1, draft_class, athlete_id, position, college = team)


shiny_qbs <- cbind(information, shiny_qbs)

#Export for the shiny R script
write.csv(shiny_qbs, "shiny_qbs.csv")


# Let us do wide receivers now - We are taking a similar route here and we already have the combine and headshot data
receiving_2023 <- cfbfastR::cfbd_stats_season_player(2023, category = "receiving")
receiving_2022 <- cfbfastR::cfbd_stats_season_player(2022, category = "receiving")
receiving_2021 <- cfbfastR::cfbd_stats_season_player(2021, category = "receiving")
receiving_2020 <- cfbfastR::cfbd_stats_season_player(2020, category = "receiving")
receiving_2019 <- cfbfastR::cfbd_stats_season_player(2019, category = "receiving")
receiving_2018 <- cfbfastR::cfbd_stats_season_player(2018, category = "receiving")
receiving_2017 <- cfbfastR::cfbd_stats_season_player(2017, category = "receiving")
receiving_2016 <- cfbfastR::cfbd_stats_season_player(2016, category = "receiving")
receiving_2015 <- cfbfastR::cfbd_stats_season_player(2015, category = "receiving")
receiving_2014 <- cfbfastR::cfbd_stats_season_player(2014, category = "receiving")
receiving_2013 <- cfbfastR::cfbd_stats_season_player(2013, category = "receiving")
receiving_2012 <- cfbfastR::cfbd_stats_season_player(2012, category = "receiving")
receiving_2011 <- cfbfastR::cfbd_stats_season_player(2011, category = "receiving")
receiving_2010 <- cfbfastR::cfbd_stats_season_player(2010, category = "receiving")
receiving_2009 <- cfbfastR::cfbd_stats_season_player(2009, category = "receiving")
receiving_2008 <- cfbfastR::cfbd_stats_season_player(2008, category = "receiving")
receiving_2007 <- cfbfastR::cfbd_stats_season_player(2007, category = "receiving")
receiving_2006 <- cfbfastR::cfbd_stats_season_player(2006, category = "receiving")
receiving_2005 <- cfbfastR::cfbd_stats_season_player(2005, category = "receiving")
receiving_2004 <- cfbfastR::cfbd_stats_season_player(2004, category = "receiving")

all_receivers <- bind_rows(receiving_2023, receiving_2022, receiving_2021, receiving_2020, receiving_2019, receiving_2018, receiving_2017, receiving_2016, receiving_2015, receiving_2014, receiving_2013, receiving_2012, receiving_2011, receiving_2010, receiving_2009, receiving_2008, receiving_2007, receiving_2006, receiving_2005, receiving_2004)
all_receivers[is.na(all_receivers)] <- 0
all_receivers <- filter(all_receivers, all_receivers$athlete_id > 0 )

epa_2023 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2023, position = "WR")
epa_2022 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2022, position = "WR")
epa_2021 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2021, position = "WR")
epa_2020 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2020, position = "WR")
epa_2019 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2019, position = "WR")
epa_2018 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2018, position = "WR")
epa_2017 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2017, position = "WR")
epa_2016 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2016, position = "WR")
epa_2015 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2015, position = "WR")
epa_2014 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2014, position = "WR")
epa_2013 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2013, position = "WR")

all_wrs_epas <- bind_rows(epa_2023, epa_2022, epa_2021, epa_2020, epa_2019, epa_2018, epa_2017, epa_2016, epa_2015, epa_2014, epa_2013)
all_wrs_upto2013 <- bind_rows(receiving_2023, receiving_2022, receiving_2021, receiving_2020, receiving_2019, receiving_2018, receiving_2017, receiving_2016, receiving_2015, receiving_2014, receiving_2013)
all_wrs_temp <- left_join(all_wrs_epas, all_wrs_upto2013, by = c("name" = "player", "season" = "year", "athlete_id", "team"))

pre_2013 <- bind_rows(receiving_2012, receiving_2011, receiving_2010, receiving_2009, receiving_2008, receiving_2007, receiving_2006, receiving_2005, receiving_2004)
pre_2013 <- select(pre_2013, athlete_id, name = player, team, conference.x = conference, season = year, receiving_rec, receiving_yds, receiving_td, receiving_ypr, receiving_long)
all_wrs <- bind_rows(all_wrs_temp, pre_2013)
all_wrs1 <- all_wrs[1:23]
all_wrs2 <- all_wrs[37:40]
all_wrs <- cbind(all_wrs1, all_wrs2)

filtered_wrs <- all_wrs %>%
  group_by(athlete_id) %>%
  arrange(athlete_id, desc(season)) %>%
  filter(row_number() <= 2) %>%
  ungroup()

filtered_wrs <- filtered_wrs %>%
  group_by(athlete_id) %>%
  mutate(weighted_epa_all = (avg_PPA_all)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_all = sum(weighted_epa_all)) %>%
  mutate(weighted_epa_pass = (avg_PPA_pass)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_pass = sum(weighted_epa_pass)) %>%
  mutate(weighted_rec = (receiving_rec)*0.33^(max(season)-season)) %>%
  mutate(weighted_rec = sum(weighted_rec)) %>%
  mutate(weighted_yds = (receiving_yds)*0.33^(max(season)-season)) %>%
  mutate(weighted_yds = sum(weighted_yds)) %>%
  mutate(weighted_tds = (receiving_td)*0.33^(max(season)-season)) %>%
  mutate(weighted_tds = sum(weighted_tds)) %>%
  mutate(weighted_ypc = (receiving_ypr)*0.33^(max(season)-season)) %>%
  mutate(weighted_ypc = sum(weighted_ypc)) %>%
  ungroup()

weighted_wrs <- select(filtered_wrs, season, athlete_id, name, position, team, conference = conference.x, weighted_epa_all, weighted_epa_pass, weighted_rec, weighted_yds, weighted_tds, weighted_ypc)

weighted_wrs <- weighted_wrs %>%
  group_by(athlete_id) %>%
  filter(season == max(season)) %>%
  ungroup()

weighted_wrs <- filter(weighted_wrs, weighted_rec > 20 & weighted_yds > 200)
wrs_desc <- weighted_wrs[1:6]
wrs_target <- weighted_wrs[7]
wrs_knn <- weighted_wrs[9:12]
wrs_knn <- as.data.frame(lapply(wrs_knn, normalize))
wrs_knn <- cbind(wrs_target, wrs_knn)
wrs_imputed <-  kNN(wrs_knn, variable = c("weighted_epa_all"), k = 10)

final_wrs <- cbind(wrs_desc, wrs_imputed)
final_wrs <- final_wrs[1:11]
final_wrs[7] <- as.data.frame(lapply(final_wrs[7], normalize))

final_wrs <- left_join(final_wrs, combine_filtered, by = c("name", "team" = "school"))
final_wrs$position <- "WR"
final_wrs <- na.omit(final_wrs)
final_wrs[12:19] <- as.data.frame(lapply(final_wrs[12:19], normalize))

#Checking for duplicates - Some RBs/QBs are also listed as WRs which will impact our shiny script
common_rows2 <- merge(final_rbs, final_wrs, by = c("name", "team"))
common_rows <- final_wrs$name %in% common_rows2$name
final_wrs <- cbind(final_wrs, common_rows)
final_wrs <- filter(final_wrs, common_rows == "FALSE")

wrs_python <- cbind(name = final_wrs$name, final_wrs[7:19])
wrs_python$ht <- 3*wrs_python$ht
wrs_python$wt <- 3*wrs_python$wt
wrs_python$weighted_epa_all <- 2*wrs_python$weighted_epa_all

write.csv(wrs_python, "wrs_python.csv")
knn_wrs <- read.csv("top_similar_players_wrs.csv")

knn_wrs <- knn_wrs %>%
  group_by(base_player) %>%
  mutate(rank = row_number()) %>%
  ungroup()


knn_wrs$distance <- 1/(1+knn_wrs$distance)

shiny_wrs <- knn_wrs %>%
  pivot_wider(
    names_from = rank,                
    values_from = c(name, distance)  
  )

shiny_wrs <- left_join(shiny_wrs, nfl_headshots, by = c("base_player" = "name"))
final_wrs$draft_class <- final_wrs$season+1

information <- select(final_wrs, name, draft_class, athlete_id, position, college = team)
shiny_wrs <- left_join(information, shiny_wrs, by = c("name" = "base_player"))

write.csv(shiny_wrs, "shiny_wrs.csv")



#Runningbacks next - We will be looking at both rushing and receiving stats
receiving_2023 <- cfbfastR::cfbd_stats_season_player(2023, category = "receiving")
rushing_2023 <- cfbfastR::cfbd_stats_season_player(2023, category = "rushing")
receiving_2023 <- cbind(receiving_2023[1:5], receiving_2023[18:21])
rushing_2023 <- cbind(rushing_2023[1:5], rushing_2023[13:16])
rbs_2023 <- left_join(rushing_2023, receiving_2023)

receiving_2022 <- cfbfastR::cfbd_stats_season_player(2022, category = "receiving")
rushing_2022 <- cfbfastR::cfbd_stats_season_player(2022, category = "rushing")
receiving_2022 <- cbind(receiving_2022[1:5], receiving_2022[18:21])
rushing_2022 <- cbind(rushing_2022[1:5], rushing_2022[13:16])
rbs_2022 <- left_join(rushing_2022, receiving_2022)

receiving_2021 <- cfbfastR::cfbd_stats_season_player(2021, category = "receiving")
rushing_2021 <- cfbfastR::cfbd_stats_season_player(2021, category = "rushing")
receiving_2021 <- cbind(receiving_2021[1:5], receiving_2021[18:21])
rushing_2021 <- cbind(rushing_2021[1:5], rushing_2021[13:16])
rbs_2021 <- left_join(rushing_2021, receiving_2021)

receiving_2020 <- cfbfastR::cfbd_stats_season_player(2020, category = "receiving")
rushing_2020 <- cfbfastR::cfbd_stats_season_player(2020, category = "rushing")
receiving_2020 <- cbind(receiving_2020[1:5], receiving_2020[18:21])
rushing_2020 <- cbind(rushing_2020[1:5], rushing_2020[13:16])
rbs_2020 <- left_join(rushing_2020, receiving_2020)

receiving_2019 <- cfbfastR::cfbd_stats_season_player(2019, category = "receiving")
rushing_2019 <- cfbfastR::cfbd_stats_season_player(2019, category = "rushing")
receiving_2019 <- cbind(receiving_2019[1:5], receiving_2019[18:21])
rushing_2019 <- cbind(rushing_2019[1:5], rushing_2019[13:16])
rbs_2019 <- left_join(rushing_2019, receiving_2019)

receiving_2018 <- cfbfastR::cfbd_stats_season_player(2018, category = "receiving")
rushing_2018 <- cfbfastR::cfbd_stats_season_player(2018, category = "rushing")
receiving_2018 <- cbind(receiving_2018[1:5], receiving_2018[18:21])
rushing_2018 <- cbind(rushing_2018[1:5], rushing_2018[13:16])
rbs_2018 <- left_join(rushing_2018, receiving_2018)

receiving_2017 <- cfbfastR::cfbd_stats_season_player(2017, category = "receiving")
rushing_2017 <- cfbfastR::cfbd_stats_season_player(2017, category = "rushing")
receiving_2017 <- cbind(receiving_2017[1:5], receiving_2017[18:21])
rushing_2017 <- cbind(rushing_2017[1:5], rushing_2017[13:16])
rbs_2017 <- left_join(rushing_2017, receiving_2017)

receiving_2016 <- cfbfastR::cfbd_stats_season_player(2016, category = "receiving")
rushing_2016 <- cfbfastR::cfbd_stats_season_player(2016, category = "rushing")
receiving_2016 <- cbind(receiving_2016[1:5], receiving_2016[18:21])
rushing_2016 <- cbind(rushing_2016[1:5], rushing_2016[13:16])
rbs_2016 <- left_join(rushing_2016, receiving_2016)

receiving_2015 <- cfbfastR::cfbd_stats_season_player(2015, category = "receiving")
rushing_2015 <- cfbfastR::cfbd_stats_season_player(2015, category = "rushing")
receiving_2015 <- cbind(receiving_2015[1:5], receiving_2015[18:21])
rushing_2015 <- cbind(rushing_2015[1:5], rushing_2015[13:16])
rbs_2015 <- left_join(rushing_2015, receiving_2015)

receiving_2014 <- cfbfastR::cfbd_stats_season_player(2014, category = "receiving")
rushing_2014 <- cfbfastR::cfbd_stats_season_player(2014, category = "rushing")
receiving_2014 <- cbind(receiving_2014[1:5], receiving_2014[18:21])
rushing_2014 <- cbind(rushing_2014[1:5], rushing_2014[13:16])
rbs_2014 <- left_join(rushing_2014, receiving_2014)

receiving_2013 <- cfbfastR::cfbd_stats_season_player(2013, category = "receiving")
rushing_2013 <- cfbfastR::cfbd_stats_season_player(2013, category = "rushing")
receiving_2013 <- cbind(receiving_2013[1:5], receiving_2013[18:21])
rushing_2013 <- cbind(rushing_2013[1:5], rushing_2013[13:16])
rbs_2013 <- left_join(rushing_2013, receiving_2013)

receiving_2012 <- cfbfastR::cfbd_stats_season_player(2012, category = "receiving")
rushing_2012 <- cfbfastR::cfbd_stats_season_player(2012, category = "rushing")
receiving_2012 <- cbind(receiving_2012[1:5], receiving_2012[18:21])
rushing_2012 <- cbind(rushing_2012[1:5], rushing_2012[13:16])
rbs_2012 <- left_join(rushing_2012, receiving_2012)

receiving_2011 <- cfbfastR::cfbd_stats_season_player(2011, category = "receiving")
rushing_2011 <- cfbfastR::cfbd_stats_season_player(2011, category = "rushing")
receiving_2011 <- cbind(receiving_2011[1:5], receiving_2011[18:21])
rushing_2011 <- cbind(rushing_2011[1:5], rushing_2011[13:16])
rbs_2011 <- left_join(rushing_2011, receiving_2011)

receiving_2010 <- cfbfastR::cfbd_stats_season_player(2010, category = "receiving")
rushing_2010 <- cfbfastR::cfbd_stats_season_player(2010, category = "rushing")
receiving_2010 <- cbind(receiving_2010[1:5], receiving_2010[18:21])
rushing_2010 <- cbind(rushing_2010[1:5], rushing_2010[13:16])
rbs_2010 <- left_join(rushing_2010, receiving_2010)

receiving_2009 <- cfbfastR::cfbd_stats_season_player(2009, category = "receiving")
rushing_2009 <- cfbfastR::cfbd_stats_season_player(2009, category = "rushing")
receiving_2009 <- cbind(receiving_2009[1:5], receiving_2009[18:21])
rushing_2009 <- cbind(rushing_2009[1:5], rushing_2009[13:16])
rbs_2009 <- left_join(rushing_2009, receiving_2009)

receiving_2008 <- cfbfastR::cfbd_stats_season_player(2008, category = "receiving")
rushing_2008 <- cfbfastR::cfbd_stats_season_player(2008, category = "rushing")
receiving_2008 <- cbind(receiving_2008[1:5], receiving_2008[18:21])
rushing_2008 <- cbind(rushing_2008[1:5], rushing_2008[13:16])
rbs_2008 <- left_join(rushing_2008, receiving_2008)

receiving_2007 <- cfbfastR::cfbd_stats_season_player(2007, category = "receiving")
rushing_2007 <- cfbfastR::cfbd_stats_season_player(2007, category = "rushing")
receiving_2007 <- cbind(receiving_2007[1:5], receiving_2007[18:21])
rushing_2007 <- cbind(rushing_2007[1:5], rushing_2007[13:16])
rbs_2007 <- left_join(rushing_2007, receiving_2007)

receiving_2006 <- cfbfastR::cfbd_stats_season_player(2006, category = "receiving")
rushing_2006 <- cfbfastR::cfbd_stats_season_player(2006, category = "rushing")
receiving_2006 <- cbind(receiving_2006[1:5], receiving_2006[18:21])
rushing_2006 <- cbind(rushing_2006[1:5], rushing_2006[13:16])
rbs_2006 <- left_join(rushing_2006, receiving_2006)

receiving_2005 <- cfbfastR::cfbd_stats_season_player(2005, category = "receiving")
rushing_2005 <- cfbfastR::cfbd_stats_season_player(2005, category = "rushing")
receiving_2005 <- cbind(receiving_2005[1:5], receiving_2005[18:21])
rushing_2005 <- cbind(rushing_2005[1:5], rushing_2005[13:16])
rbs_2005 <- left_join(rushing_2005, receiving_2005)

receiving_2004 <- cfbfastR::cfbd_stats_season_player(2004, category = "receiving")
rushing_2004 <- cfbfastR::cfbd_stats_season_player(2004, category = "rushing")
receiving_2004 <- cbind(receiving_2004[1:5], receiving_2004[18:21])
rushing_2004 <- cbind(rushing_2004[1:5], rushing_2004[13:16])
rbs_2004 <- left_join(rushing_2004, receiving_2004)

all_rbs <- bind_rows(rbs_2023, rbs_2022, rbs_2021, rbs_2020, rbs_2019, rbs_2018, rbs_2017, rbs_2016, rbs_2015, rbs_2014, rbs_2013, rbs_2012, rbs_2011, rbs_2010, rbs_2009, rbs_2008, rbs_2007, rbs_2006, rbs_2005, rbs_2004)

epa_2023 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2023, position = "RB")
epa_2022 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2022, position = "RB")
epa_2021 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2021, position = "RB")
epa_2020 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2020, position = "RB")
epa_2019 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2019, position = "RB")
epa_2018 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2018, position = "RB")
epa_2017 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2017, position = "RB")
epa_2016 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2016, position = "RB")
epa_2015 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2015, position = "RB")
epa_2014 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2014, position = "RB")
epa_2013 <- cfbfastR::cfbd_metrics_ppa_players_season(year = 2013, position = "RB")

all_rbs_epas <- bind_rows(epa_2023, epa_2022, epa_2021, epa_2020, epa_2019, epa_2018, epa_2017, epa_2016, epa_2015, epa_2014, epa_2013)
all_rbs_upto2013 <- bind_rows(rbs_2023, rbs_2022, rbs_2021, rbs_2020, rbs_2019, rbs_2018, rbs_2017, rbs_2016, rbs_2015, rbs_2014, rbs_2013)
all_rbs_temp <- left_join(all_rbs_epas, all_rbs_upto2013, by = c("name" = "player", "season" = "year", "athlete_id", "team"))

pre_2013 <- bind_rows(rbs_2012, rbs_2011, rbs_2010, rbs_2009, rbs_2008, rbs_2007, rbs_2006, rbs_2005, rbs_2004)
pre_2013 <- select(pre_2013, athlete_id, name = player, team, conference.x = conference, season = year, rushing_car, rushing_yds, rushing_td, rushing_ypc, receiving_rec, receiving_yds, receiving_td, receiving_ypr)

all_rbs <- bind_rows(all_rbs_temp, pre_2013)
filtered_rbs <- all_rbs %>%
  group_by(athlete_id) %>%
  arrange(athlete_id, desc(season)) %>%
  filter(row_number() <= 2) %>%
  ungroup()

filtered_rbs <- filtered_rbs %>%
  group_by(athlete_id) %>%
  mutate(weighted_epa_all = (avg_PPA_all)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_all = sum(weighted_epa_all)) %>%
  mutate(weighted_epa_pass = (avg_PPA_pass)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_pass = sum(weighted_epa_pass)) %>%
  mutate(weighted_epa_rush = (avg_PPA_rush)*0.33^(max(season)-season)) %>%
  mutate(weighted_epa_rush = sum(weighted_epa_rush)) %>%
  mutate(weighted_rec = (receiving_rec)*0.33^(max(season)-season)) %>%
  mutate(weighted_rec = sum(weighted_rec)) %>%
  mutate(weighted_rec_yds = (receiving_yds)*0.33^(max(season)-season)) %>%
  mutate(weighted_rec_yds = sum(weighted_rec_yds)) %>%
  mutate(weighted_rec_tds = (receiving_td)*0.33^(max(season)-season)) %>%
  mutate(weighted_rec_tds = sum(weighted_rec_tds)) %>%
  mutate(weighted_ypr = (receiving_ypr)*0.33^(max(season)-season)) %>%
  mutate(weighted_ypr = sum(weighted_ypr)) %>%
  mutate(weighted_att = (rushing_car)*0.33^(max(season)-season)) %>%
  mutate(weighted_att = sum(weighted_att)) %>%
  mutate(weighted_rush_yds = (rushing_yds)*0.33^(max(season)-season)) %>%
  mutate(weighted_rush_yds = sum(weighted_rush_yds)) %>%
  mutate(weighted_rush_tds = (rushing_td)*0.33^(max(season)-season)) %>%
  mutate(weighted_rush_tds = sum(weighted_rush_tds)) %>%
  mutate(weighted_ypc = (rushing_ypc)*0.33^(max(season)-season)) %>%
  mutate(weighted_ypc = sum(weighted_ypc)) %>%
  ungroup()

weighted_rbs <- select(filtered_rbs, season, athlete_id, name, position, team, conference = conference.x, weighted_epa_all, weighted_epa_pass, weighted_epa_rush, weighted_att, weighted_rush_yds, weighted_rush_tds, weighted_ypc, weighted_rec, weighted_rec_yds, weighted_rec_tds, weighted_ypc)

weighted_rbs <- weighted_rbs %>%
  group_by(athlete_id) %>%
  filter(season == max(season)) %>%
  ungroup()

weighted_rbs <- filter(weighted_rbs, weighted_rush_yds > 400 & weighted_att > 50)

rbs_desc <- weighted_rbs[1:6]
rbs_target <- weighted_rbs[7:9]
rbs_knn <- weighted_rbs[10:16]
rbs_knn[is.na(rbs_knn)] <- 0
rbs_knn <- as.data.frame(lapply(rbs_knn, normalize))
rbs_knn <- cbind(rbs_target, rbs_knn)
rbs_imputed <-  kNN(rbs_knn, variable = c("weighted_epa_all", "weighted_epa_pass", "weighted_epa_rush"), k = 10)
final_rbs <- cbind(rbs_desc, rbs_imputed)
final_rbs <- final_rbs[1:16]


final_rbs <- left_join(final_rbs, combine_filtered, by = c("name", "team" = "school"))
final_rbs$position <- "RB"
final_rbs <- na.omit(final_rbs)

common_rows3 <- merge(final_qbs, final_rbs, by = c("name", "team"))
common_rows3 <- final_rbs$name %in% common_rows3$name
final_rbs <- cbind(final_rbs, common_rows3)
final_rbs <- filter(final_rbs, common_rows3 == "FALSE")
rbs_python <- cbind(name = final_rbs$name, final_rbs[8:24])
rbs_python$ht <- 3*rbs_python$ht
rbs_python$wt <- 3*rbs_python$wt
rbs_python$weighted_epa_pass <- 2*rbs_python$weighted_epa_pass
rbs_python$weighted_epa_rush <- 3*rbs_python$weighted_epa_rush
rbs_python$weighted_att<- 2*rbs_python$weighted_att
rbs_python$weighted_rush_yds <- 2*rbs_python$weighted_rush_yds


write.csv(rbs_python, "rbs_python.csv")
knn_rbs <- read.csv("top_similar_players_rbs.csv")

knn_rbs <- knn_rbs %>%
  group_by(base_player) %>%
  mutate(rank = row_number()) %>%
  ungroup()


knn_rbs$distance <- 1/(1+knn_rbs$distance)

shiny_rbs <- knn_rbs %>%
  pivot_wider(
    names_from = rank,                
    values_from = c(name, distance)  
  )

shiny_rbs <- left_join(shiny_rbs, nfl_headshots, by = c("base_player" = "name"))
final_rbs$draft_class <- final_rbs$season+1

information <- select(final_rbs, name, draft_class, athlete_id, position, college = team)
shiny_rbs <- left_join(information, shiny_rbs, by = c("name" = "base_player"))

write.csv(shiny_rbs, "shiny_rbs.csv")



