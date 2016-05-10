> 19.5/20

## Problem Set 1

1) 
````R
> URL<-"https://macrostrat.org/api/units?interval_name=Triassic&format=csv"
> TriassicUnits<-read.csv(URL, row.names=1)
````

2)
````R
> dim(TriassicUnits)
[1] 838  16
838 units
````

3) Mostly igneous, no since I'm not aware of any organisms that live in volcanoes. 

`> TriassicUnits[1:10,]`

4) b_age, t_age

> But, which is which!? -0.5 Points

5) They all range through the Triassic.

Problem Set 2

1)
````R
> URL<-"https://macrostrat.org/api/units?interval_name=Triassic&lith_class=sedimentary&format=csv"
> TriassicUnits<-read.csv(URL, row.names=1)
````

2)

`> ConstrainedTriassic<-TriassicUnits[which(TriassicUnits[,"b_age"]<=251 & TriassicUnits[,"t_age"]>=201),]`

3)
````R
> URLCret<-"https://macrostrat.org/api/units?interval_name=Cretaceous&lith_class=sedimentary&format=csv"
> CretaceousUnits<-read.csv(URLCret, row.names=1)
> ConstrainedCretaceous<-CretaceousUnits[which(CretaceousUnits[,"b_age"]<=145 & CretaceousUnits[,"t_age"]>=66),]
> URLJur<-"https://macrostrat.org/api/units?interval_name=Jurassic&lith_class=sedimentary&format=csv"
> JurassicUnits<-read.csv(URLJur, row.names=1)
> ConstrainedJurassic<-JurassicUnits[which(JurassicUnits[,"b_age"]<=198 & JurassicUnits[,"t_age"]>=146),]
> URLPer<-"https://macrostrat.org/api/units?interval_name=Permian&lith_class=sedimentary&format=csv"
> PermianUnits<-read.csv(URLPer, row.names=1)
> ConstrainedPermian<-PermianUnits[which(PermianUnits[,"b_age"]<=299 & PermianUnits[,"t_age"]>=252),]
> URLCar<-"https://macrostrat.org/api/units?interval_name=Carboniferous&lith_class=sedimentary&format=csv"
> CarboniferousUnits<-read.csv(URLCar, row.names=1)
> ConstrainedCarboniferous<-CarboniferousUnits[which(CarboniferousUnits[,"b_age"]<=359 & CarboniferousUnits[,"t_age"]>=300),]
> URLDev<-"https://macrostrat.org/api/units?interval_name=Devonian&lith_class=sedimentary&format=csv"
> DevonianUnits<-read.csv(URLDev, row.names=1)
> ConstrainedDevonian<-DevonianUnits[which(DevonianUnits[,"b_age"]<=419 & DevonianUnits[,"t_age"]>=360),]
> URLSil<-"https://macrostrat.org/api/units?interval_name=Silurian&lith_class=sedimentary&format=csv"
> SilurianUnits<-read.csv(URLSil, row.names=1)
> ConstrainedSilurian<-SilurianUnits[which(SilurianUnits[,"b_age"]<=443 & SilurianUnits[,"t_age"]>=420),]
> URLOrd<-"https://macrostrat.org/api/units?interval_name=Ordovician&lith_class=sedimentary&format=csv"
> OrdovicianUnits<-read.csv(URLOrd, row.names=1)
> ConstrainedOrdovician<-OrdovicianUnits[which(OrdovicianUnits[,"b_age"]<=485 & OrdovicianUnits[,"t_age"]>=444),]
````

4)
````R
> UnitFreqs<-c(nrow(ConstrainedCretaceous), nrow(ConstrainedJurassic), nrow(ConstrainedTriassic), nrow(ConstrainedPermian), nrow(ConstrainedCarboniferous), nrow(ConstrainedDevonian), nrow(ConstrainedSilurian), nrow(ConstrainedOrdovician))
> UnitFreqs
[1] 4588  881  497  903 2913 1900  969 1923
````

5)
````R
> NoTriassic<-c(nrow(ConstrainedCretaceous), nrow(ConstrainedJurassic), nrow(ConstrainedPermian), nrow(ConstrainedCarboniferous), nrow(ConstrainedDevonian), nrow(ConstrainedSilurian), nrow(ConstrainedOrdovician))
> mean(NoTriassic)
[1] 2011
> sd(NoTriassic)
[1] 1357.996
> nrow(ConstrainedTriassic)
[1] 497
# The Triassic is about 1.12 standard deviations below the mean number of units.
````

6) It's less than 2 stdevs below the mean, so it's not statistically significant. 

7) 
````R
> NoTJ<-c(nrow(ConstrainedCretaceous), nrow(ConstrainedPermian), nrow(ConstrainedCarboniferous), nrow(ConstrainedDevonian), nrow(ConstrainedSilurian), nrow(ConstrainedOrdovician))
> mean(NoTJ)
[1] 2199.333
> sd(NoTJ)
[1] 1383.85
> nrow(ConstrainedTriassic)
[1] 497
> nrow(ConstrainedJurassic)
[1] 881
# The Jurassic is still within 1 stdev, but the Triassic is now 1.23 stdevs below the mean. That makes it slightly more significant, but still not statistically significant.
````

## Problem Set 3

1)
````R
> URL2<-"https://macrostrat.org/api/columns?format=geojson_bare&project_id=1"
> GotURL2<-getURL(URL2)
> NorthAmericaMap<-readOGR(GotURL2,"OGRGeoJSON",verbose=FALSE)
> plot(NorthAmericaMap)
````

2)
````R
> URL3<-"https://macrostrat.org/api/columns?format=geojson_bare&age_top=242&age_bottom=252.2&project_id=1"
> GotURL3<-getURL(URL3)
> NorthAmericaEarlyTriMap<-readOGR(GotURL3,"OGRGeoJSON",verbose=FALSE)
> plot(NorthAmericaEarlyTriMap, col="#B051A5", add=TRUE)
````

3)
````R
> Animals<-downloadPBDB("Animalia", StartInterval="Induan", StopInterval="Anisian")
> points(Animals[,"lng"], Animals[,"lat"], pch=19)
````

4)
````R
> plot(NorthAmericaMap)
> URL4<-"https://macrostrat.org/api/columns?format=geojson_bare&age_top=251&age_bottom=260&project_id=1"
> GotURL4<-getURL(URL4)
> NorthAmericaLopingianMap<-readOGR(GotURL4,"OGRGeoJSON",verbose=FALSE)
> plot(NorthAmericaLopingianMap, col="#FBA794", add=TRUE)
````

5)
````R
> Animals1<-downloadPBDB("Animalia", StartInterval="Lopingian", StopInterval="Lopingian")
> points(Animals1[,"lng"], Animals1[,"lat"], pch=19)
````

6)The amount of sedimentary rock available from both late Permian and early Triassic appears to be about the same. If I were to go strictly off of what these maps show, there's seems to be an increase in the number of fossils available in the early Triassic. I think that this might be sufficient to reject both hypotheses, it seems to be well sampled and have a decent amount of geologic units.
