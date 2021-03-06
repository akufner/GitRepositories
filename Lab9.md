#Problem Set 1

> 20/20

1) West

2) It's using the data from ModernMap to plot the location of the continents.  col=rgb(1,0,0,0.33) makes the map red and opaque.  rgb stands for red, green, blue.  lty=0.01 makes the outlines of the continents.  add=TRUE adds this map to the previous map.

3) 
````R
> AlbianMap<-downloadPaleogeography(Age=110)
````
4) 
````R
> plot(AlbianMap, col=rgb(0,1,0,0.33), lty=0.01, add=TRUE)
````
5) There appears to be more north and south movement in the Eastern Hemisphere.

6) Seems to be more movement east and west in the Western Hemisphere.  (Mostly west)

#Problem Set 2

1) 
````R
> PaleoceneEoceneMap<-downloadPaleogeography(Age=56)
> plot(PaleoceneEoceneMap, col=rgb(0,0.5,0.5,0.4), lty=0.01)
````
2) 
````R
> DataPBDB<-downloadPBDB(Taxa=c("Anthozoa"),StartInterval="Paleocene",StopInterval="Eocene")
````
3) 2847

4) 
````R
+"occurrence_no": Identity of occurrence 
+"record_type": type of object
+"reid_no": Indicates whether an occurrence was reidentified
+"flags": If an identification is superceded by a more recent ID it will be marked with a letter R.
+"collection_no": ID of collection
+"identified_name": taxonomic name
+"identified_rank": taxonomic rank
+"identified_no": unique ID of taxon
+"difference": If ID'd name is different from accepted name this gives the reason why
+"accepted_name": accepted taxonomic name
+"accepted_rank": taxonomic rank of accepted name
+"accepted_no": ID of taxonomic name
+"early_interval": Gives earliest time interval of occurrence.
+"late_interval": Gives last time interval of occurrence.
+"max_ma": Early date of time range in millions of years.
+"min_ma": Late date of time range in millions of years.
+"reference_no": ID of reference from which data was entered
+"paleomodel": primary model specified by parameter pgm
+"paleolng": paleolongitude of collection
+"paleolat": paleolatitude of collection       
+"geoplate": ID of geological plate on whic collection lies
+"phylum" these last five seem very self-explanatory
+"class"
+"order"
+"family"         
+"genus" 
````
5) 
````R
> points(DataPBDB[,"paleolng"], DataPBDB[,"paleolat"])
````
6) Mediterranean region, marine, must have been a shallow sea with abundant reefs.

#Problem Set 3

1) 
````R
> DataPBDB<-downloadPBDB(Taxa=c("Perissodactyla"),StartInterval="Paleogene",StopInterval="Paleogene")
````
2) Ungulates with an odd number of toes like horses, rhinos, and tapirs.

3) 
````R
> DataPBDB[which(DataPBDB[,"collection_no"]=="112723"),]
````
4) 501, India

5) 
````R
> NewerData<-DataPBDB[which(DataPBDB[,"geoplate"]=="501"),]
> dim(NewerData)
[1] 84 26
````
84 occurrences

6) It drifted north and collided with Asia.

7) The family Brontotheridae was only present on the Indian plate in the beginning of the Eocene, and when it collided with the Asian plate by the end of the Eocene, they migrated to China.  
