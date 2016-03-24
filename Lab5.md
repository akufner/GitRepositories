## Problem Set 1

> So a tenet of good coding practice is to use self-commenting code. Part of this means using variable names that describe what the variable is, so that other readers can quickly grasph what you did.

> 17/20

1) 634, sum(which(BivalveAbundance ["Miocene",] != 0)^0)

> Awesome, this was really clever use of exponents!

2) 0.9565217

Bart<-sum(which(BrachiopodAbundance ["Pliocene",] != 0)^0)
Ceres<-max(BrachiopodAbundance["Pliocene",])
Ceres/Bart

> I'm not quite sure why this is wrong, so I'll let it pass.

3) 0.9784588
Daisy<-BrachiopodAbundance["Late Ordovician",]
Eeyore<-1-sum((Daisy/sum(Daisy))^2)

4) 5.086654
Fabio<-BivalveAbundance["Late Cretaceous",]
Harry<-Fabio[Fabio>0]
Goofy<- -sum((Harry/sum(Harry))*log(Harry/sum(Harry)))

5) > Igor<-BivalveAbundance["Paleocene",]
> Jessie<-Igor[Igor>0]
> Krabs<- -sum((Jessie/sum(Jessie))*log(Jessie/sum(Jessie)))
> Krabs
[1] 4.511875

6) 11.3% decrease K-Pg event!  Yes, there is less diversity in the Paleocene than the Late Cretaceous according to my calculations using Shannon's entropy.

7) 43.7% decrease, I think this value better reflects the loss of biodiversity because it was a mass extinction followed by an adaptive radiation of (mostly) mammals, so one would expect a large amount of ecological niches to be opened up.

> Hmm... does losing diversity necessarily mean that niches are opened up? It's certainly plausible, but is it a certainty?

## Problem Set 2

1) 634
````R
specnumber(BivalveAbundance ["Miocene",])
````

2) 

````R
> diversity(BrachiopodAbundance["Late Ordovician",], index="simpson")
[1] 0.9784588
````

3) 
````R
> diversity(BivalveAbundance["Late Cretaceous",], index="shannon", , base = exp(1))
[1] 5.086654
````
4) 
````R
> diversity(BivalveAbundance["Paleocene",], index="shannon", , base = exp(1))
[1] 4.511875
````

## Problem Set 3
1) Negatively but weakly correlated -0.2973809

````R
OUTOFORDER1<-rowSums(BrachiopodAbundance)
> LINEEMUP1<- OUTOFORDER1[c("Early Ordovician", "Middle Ordovician", "Late Ordovician", "Llandovery", "Wenlock", "Ludlow", "Pridoli", "Early Devonian", "Middle Devonian", "Late Devonian", "Mississippian", "Pennsylvanian", "Cisuralian", "Guadalupian", "Lopingian", "Early Triassic", "Middle Triassic", "Late Triassic", "Early Jurassic", "Middle Jurassic", "Late Jurassic", "Early Cretaceous", "Late Cretaceous", "Paleocene", "Eocene", "Oligocene", "Miocene", "Pliocene")]
> cor(LINEEMUP, LINEEMUP1)
# similarly for BivalveAbundance
````

> I'm not sure where you went wrong, but this is not correct. The correct answer is closer -0.5
> -1 Points

2) Negatively but weakly correlated.

````R
> cor(diversity(BrachiopodAbundance, index="simpson"), diversity(BivalveAbundance, index="simpson"))
[1] -0.2624135
`````

3) Lopingian - Early Triassic

## Problem Set 4
1) 

````R
> SampleAbundances1<-apply(BrachiopodAbundance, 1, sum)
> SampleAbundances1[which(SampleAbundances1 == min(SampleAbundances1))]
Pleistocene 
           63
> StandardizedRichness1<-apply(BrachiopodAbundance,1,subsampleIndividuals,Quota=63)
> StandardizedRichness1[1:6]
    Mississippian     Pennsylvanian  Early Ordovician Middle Ordovician   Late Ordovician        Llandovery 
            42.92             34.03             37.88             45.84             41.96             41.24
````

2) It is more strongly negatively correlated than the unstandardized value since it is closer to -1.

````R
> BrachiopodOrder<- StandardizedRichness1[c("Early Ordovician", "Middle Ordovician", "Late Ordovician", "Llandovery", "Wenlock", "Ludlow", "Pridoli", "Early Devonian", "Middle Devonian", "Late Devonian", "Mississippian", "Pennsylvanian", "Cisuralian", "Guadalupian", "Lopingian", "Early Triassic", "Middle Triassic", "Late Triassic", "Early Jurassic", "Middle Jurassic", "Late Jurassic", "Early Cretaceous", "Late Cretaceous", "Paleocene", "Eocene", "Oligocene", "Miocene", "Pliocene")]
# similarly for Bivalves
> cor(BivalveOrder, BrachiopodOrder)
[1] -0.4972689
````

3) 
````R
> plot(x=LINEEMUP1, y=LINEEMUP, pch=16,las=1,xlab="Brachiopod Unstandardized Richness",ylab="Bivalve Unstandardized Richness",cex=2)
> plot(x=BrachiopodOrder, y=BivalveOrder, pch=16,las=1,xlab="Brachiopod Standardized Richness",ylab="Bivalve Standardized Richness",cex=2)
````
I think an interesting note is that the unstandardized plot takes on the shape of a hollow curve which is the expectation for distributions in ecology.  The standardized plot appears to show more correlation, so standardizing will change the results of an experiment and therefore does matter.  I hesitate to say it made a great deal of difference in this case, but I am unfamiliar with these types of experiments and for all I know a 0.5 correlation might be a great result showing a significant correlation between bivalve and brachiopod diversity.

> Hollow curves have to do with frequency distributions (like histograms), and are quite different from a time-series plots! -1 Points

4) I think it shows that there is a weak correlation between bivalve and brachiopod abundance, but that is a far cry from saying bivalves outcompeted brachiopods over time.  So no I don't think there is enough evidence to come to that conclusion based solely on these correlations.  There could have been other factors such as climate change or competition with other organisms that caused a decline in brachiopod abundance and subsequent rise in bivalve abundance.
