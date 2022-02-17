airtemp <- c(212, 30.3, 78, 32)

celcius1 <- (airtemp[1]-32)*5/9
celcius2 <- (airtemp[2]-32)*5/9
celcius3 <- (airtemp[3]-32)*5/9

# Writing a function for the Fahrenheit to Celsius

#' Fahrenheit to Celsius
#'
#' @param fahr Temperature in Farenheit as a vector
#'
#' @return Temperature in Celsius
#' @export 
#'
#' @examples
#' fahr_to_celcius(c(212, 32))

fahr_to_celcius <- function(fahr){
  celcius <- (fahr-32)*5/9
  return(celcius)
}

celcius4 <- fahr_to_celcius(airtemp[1])
celcius1 == celcius4

airtemp_c <- fahr_to_celcius(airtemp)

airtemp_c2 <- fahr_to_celcius(fahr = airtemp)

#challenge (writing function to convert celcius to farenheit)

celcius_to_fahr <- function(celcius){
  fahr <- (celcius*9/5)+32
  return(fahr)
}

airtemp_fahr <- celcius_to_fahr(airtemp_c2)

airtemp_fahr == airtemp


convert_temps <- function(fahr){
  celsius <- (fahr - 32)*5/9
  kelvin <- celsius + 273.15
  return(data.frame(fahrenheit = fahr, celsius = celsius, kelvin = kelvin))
}

convert_temps(airtemp)

