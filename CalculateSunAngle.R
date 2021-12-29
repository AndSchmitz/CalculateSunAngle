CalculateSunAngle <- function(
  LatDecimalDegree,
  LonDecimalDegree,
  TimeStampUTC
) {
  #Load library providing function sunAngle()
  library(oce)
  
  SunAngle <- sunAngle(
    t = TimeStampUTC,
    latitude = LatDecimalDegree,
    longitude = LonDecimalDegree
  )$altitude
  
  return(SunAngle)
  
}