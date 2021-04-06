library(assertthat)

# Calculate the population for every district for 2021 and name the new column einwohner_2021. The yearly increasing rate is 1.1%. Note: the data is based on a survey from 2019.
# * Store the result in the object hamburg_2021
# * Round the population for 2021
# * Calculate the difference in population between 2019 and 2020 and name the new column differenz
# * Filter for all districts with a population increase of more than 5000 people
# * Select bezirk and differenz
# * Arrange the output in descending order.
# * Calculate the sum of people who moved to Hamburg between 2019 and 2021 and store the result in the object hamburg_pop_increase and name the column differenz_sum

hamburg_df <- data.frame(
  bezirk = c("Hamburg-Mitte", "Altona", "Eimsbüttel", "Hamburg-Nord","Wandsbeck","Bergedorf","Harburg"),
  einwohner = c(301543,275264,267051,314593,441012,130260,169426),
  bevoelkerungsdichte = c(2121,3534,5362,5443,2990,841,1353),
  bezirksamtsleiter = c("Droßmann","von Berg","Gätgens","Werner-Boelz","Ritzenhoff","Dornquast","Fredenhagen"),
  flaeche = c(TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE)
)



if(
  assert_that(
    has_name(hamburg_2021, "bezirk"),
    msg = "Die Spalte 'bezirk' fehlt"
  ) &&
  assert_that(
    has_name(hamburg_2021, "differenz"),
    msg = "Die Spalte 'differenz' fehlt"
  ) &&
  assert_that(
    hamburg_2021$differenz[1] == 9756,
    msg = "Die Differenz wurde falsch berechnet oder die Sortierung ist falsch"
  ) &&
  assert_that(
    has_name(hamburg_pop_increase, "differenz_sum"),
    msg = "Das Object wurde falsch benannt oder die Spalte 'differenz_sum fehlt"
  ) &&
  assert_that(
    hamburg_pop_increase$differenz_sum == 35381,
    msg = "Die Differenz für den Zeitraum zwischen 2019 und 2021 wurde falsch berechnet"
  )
) {
  writeLines("Congrats! 10/10 points!")
}