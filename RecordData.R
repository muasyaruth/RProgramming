require(tidyverse)
data()
view(starwars)

#remove null values
NewStarwars <- starwars %>%
  na.omit()
view(NewStarwars)
