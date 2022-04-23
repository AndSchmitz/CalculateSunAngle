# CalculateSunAngle

This is a wrapper script for oce::sunAngle(). It calculates sun angle based on lon, lat, date, time.


Function oce::sunAngle() has been validated against calculations from:
 - [Website1](https://www.sonnenverlauf.de/#/54.1003,10.2425,8/2009.12.23/14:14/1/3)
 - [Website2](https://keisan.casio.com/exec/system/1224682277)
 
Differences were smaller than 1 degree of sun angle.

```R
#Validation 1:
Lon <- 10.2425
Lat <- 54.10028
TimeStampUTC <- ymd_hms(x = "2009-12-23 12:00:00", tz = "UTC")
#Value according to website: 12.02°
#Value according to oce::sunAngle():
sunAngle(
 t = TimeStampUTC,
 latitude = Lat,
 longitude = Lon
 )$altitude
#yields 11.95078

#Validation 2:
Lon <- 10.2425
Lat <- 54.10028
TimeStampUTC <- ymd_hms(x = "2009-06-15 12:00:00", tz = "UTC")
#Value according to website: 58.31°
#Value according to oce::sunAngle():  
 sunAngle(
   t = TimeStampUTC,
   latitude = Lat,
   longitude = Lon
 )$altitude
#yields 58.29907
```
