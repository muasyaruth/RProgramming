require(tidyverse)
view(mtcars)
#Using the mtcars dataset, rename column mpg to miles_per_gallon.
myCars <- mtcars
view(myCars)
mtcars %>%
  rename(miles_per_gallon = mpg)


#Using the iris dataset, reorder the columns to the following order:Species, Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
view(iris)
newIris <-iris
view(newIris)
newIris %>%
  select(Species, Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)
head(newIris %>%
       select(Species, Sepal.Length, Sepal.Width, Petal.Length, Petal.Width))
head(newIris %>%
       select(Species, Sepal.Length, Sepal.Width, Petal.Length, Petal.Width), 5)

#Using the mtcars dataset, rename:hp → horsepower and wt → weight
view(myCars)
newCars <- head(myCars)
newCars <- head(myCars,5)
view(newCars)
newCars %>%
  rename(horsepower= hp, weight= wt)


#Using the mtcars dataset, rename:hp → horsepower and wt → weight
myCars %>%
 head(rename(horsepower= hp, weight= wt), 5)


#Using the mtcars dataset, rename:hp → horsepower and wt → weight
myCars %>%
 rename(horsepower = hp, weight= wt)


#Using the mtcars dataset, rename:hp → horsepower and wt → weight
head(myCars %>%
      rename(horsepower = hp, weight= wt), 5)


#Using the airquality dataset, move the column Temp to be the first column.
view(airquality)
airquality %>%
 select(Temp, everything())


#Using the PlantGrowth dataset, reorder the columns alphabetically.
view(PlantGrowth <- PlantGrowth[, order(names(PlantGrowth))])






     