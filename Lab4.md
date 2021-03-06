> Awesome Job 19/20

## Problem Set 1

1) Miocene: 602, Early Jurassic: 169, Cretaceous: 375, Pennsylvanian: 133 > apply(PresencePBDB, 1, sum)

2) 29 > dim(PresencePBDB)

3) Pridoli, Early Devonian, Cisuralian, Late Jurassic, Eocene, Late Cretaceous, Early Cretaceous, Middle Jurassic, 
Paleocene, Oligocene, Miocene, Early Jurassic, Pleistocene, Middle Triassic, Late Triassic, Pliocene, Early Triassic 

````R
> PresencePBDB[,"Mytilus"]
````

4) Middle and Late Devonian, Mississippian, Pennsylvanian, Guadalupian, Lopingian. Mytilus is present before and after these epochs.

## Problem Set 2

To generate a Jaccard similarity index of the Miocene and Pleistocene samples, I would take the sum of the genera that are common between both time periods and divide by the total sum of genera present in both time periods.  To make it into an index of dissimilarity I would use the some of genera unique to each time period in the numerator and leave the denominator the same.

1) 0.8279221

> How did you do it in R though? -1 points 

2) 1-(Jaccard index) or the number of genera that occur in only one of the epochs divided by the total number of genera.

3) 

````R
> vegdist(PresencePBDB[c("Miocene", "Pleistocene"),], method = "jaccard")
              Miocene
Pleistocene 0.1720779
````

4) 

> vegdist(PresencePBDB[c("Miocene", "Pleistocene", "Pliocene", "Oligocene", "Eocene", "Paleocene"),], method = "jaccard")

The Paleocene and Pleistocene are most dissimilar. 0.444

## Problem Set 3

To find the epochs that are the most dissimilar the index of dissimilarity would be closer to 1, so the two epochs with the highest index would be compared.  The high index of dissimilarity between the early Cretaceous and Paleocene epochs is likely due to the K-T mass extinction event.

1) > RandomEpochs<-PresencePBDB[c("Pliocene", "Oligocene", "Paleocene", "Early Cretaceous", "Late Jurassic", "Middle Jurassic"),]

2) > vegdist(RandomEpochs, method = "jaccard")
                  Pliocene Oligocene Paleocene Early Cretaceous
Oligocene        0.1896839                                     
Paleocene        0.3791469 0.4104235                           
Early Cretaceous 0.7462908 0.7480315 0.6400742                 
Late Jurassic    0.8652695 0.8653846 0.7902622        0.4703947
Middle Jurassic  0.8852459 0.8814103 0.7931689        0.4883721
                 Late Jurassic
Oligocene                     
Paleocene                     
Early Cretaceous              
Late Jurassic                 
Middle Jurassic      0.2962963

3) Pliocene, Oligocene, Paleocene, Early Cretaceous, Late Jurassic, Middle Jurassic

4) It seems to be in reverse chronological order which makes sense that genera become more dissimilar over time given that species become extinct and new species radiate into that open ecological space.

5) K-Pg event decimated the large terrestrial and marine fauna roughly 65 mya.

## Problem Set 4

1) > Ordovician<-downloadPBDB(Taxa = "Animalia", StartInterval="Ordovician",StopInterval="Ordovician")

2) > Ordovician<-cleanGenus(Ordovician)

3) > PresenceOrd<-presenceMatrix(Ordovician,SampleDefinition="geoplate")
> PresenceOrd<-cullMatrix(PresenceOrd,minOccurrences=2,minDiversity=25)

4) From what I can see no.  There doesn't appear to be any relationship between the plotted points and the average latitiude or longitude of the samples.  At least not any relationship I would be familiar with.
> OrdovicianDCA<-decorana(PresenceOrd, ira=0)
> plot(OrdovicianDCA, display="sites")
> tapply(Ordovician[,"paleolat"], Ordovician[,"geoplate"], mean)
> tapply(Ordovician[,"paleolng"], Ordovician[,"geoplate"], mean)
