> 20/20 Awesome

### Problem Set 1

1) 

````R
> dim(MacroPBDB)
[1] 9013   13
> dim(DataPBDB)
[1] 34166    26
> 34166-9013
[1] 25153
````

2) These are likely only North American occurences since the coverage of Macrostrat is limited to North America.

### Problem Set 2

1) 
````R
> CandidateUnits<-c("Chancellor", "Kinzers Fm", "Stephen Fm", "Marjum Limestone", "Wheeler Shale", "Langston Fm", "Weymouth Fm", "Snowy Range Fm", "Parker Slate", "Forteau Fm")
````

2) 
````R
> GenusFrequencies<-apply(GenusMatrix, 2, sum)
````

3) 
````R
> barplot(table(GenusFrequencies))
````

4) Hollow curve

5) 
````R
> RareGenera<-GenusFrequencies[GenusFrequencies<=median(GenusFrequencies)]
````

### Problem Set 3
1) 
````R
> CandidateMatrix<-GenusMatrix[CandidateUnits,]
````

2) Weymouth Fm, Chancellor, Forteau Fm, Marjum Limestone

These sites have a higher percentage of shared genera with the list of rare genera.

3) Chancellor Basin!!! The Burgess Shale! I KNEW IT! It contains a large number of soft-bodied animals.  It gives us a rare glimpse at types of organisms present during the Cambrian that are not preserved elsewhere. 

> Nice!
