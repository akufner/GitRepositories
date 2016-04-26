# Problem Set 1
1)
````R
> dim(OrdovicianMatrix)
[1] 45 23
# 23 is the gamma diversity
> dim(SilurianMatrix)
[1] 68 53
# 53 is the gamma diversity
````
2)
````R
> meanOrd<-mean(rowSums(OrdovicianMatrix))
> meanSil<-mean(rowSums(SilurianMatrix))
> meanOrd
[1] 13.13333
> meanSil
[1] 21
# This is the alpha diversity
````
3)
````R
> betaOrd<-23-meanOrd
> betaSil<-53-meanSil
> betaOrd
[1] 9.866667
> betaSil
[1] 32
#This is the beta diversity
````
4) Alpha increases by 7.86667, beta increases by 22.13333, gamma increases by 30

5)
````R
> perAlphaOrd<-meanOrd/23
> perAlphaSil<-meanSil/53
> perBetaOrd<-betaOrd/23
> perBetaSil<-betaSil/53
> perAlphaOrd
[1] 0.5710145
> perAlphaSil
[1] 0.3962264
> perBetaOrd
[1] 0.4289855
> perBetaSil
[1] 0.6037736

````
Alpha decreases when measured as a percentage, it means that there are more genera that are less widespread. This doesn't match what we learned in class. What we learned in class only pertained to trilobites.

6)The time intervals are probably not the same length, so there will be some distortion.

# Problem Set 2
1)
````R
> LatePermian<-downloadPBDB(Taxa="Animalia",StartInterval="Guadalupian",StopInterval="Lopingian")
> LatePermian<-cleanRank(LatePermian,"genus")
> LatePermian<-constrainAges(LatePermian,Epochs)
> LatePermian<-macrostratMatch(LatePermian)
> PermianMatrix<-presenceMatrix(LatePermian,SampleDefinition="unit_name",TaxonRank="genus")
> PermianMatrix<-cullMatrix(PermianMatrix, 2, 10)
#Same thing for the other three but with their time intervals.
````
2)
````R
> dim(PermianMatrix)
[1]  22 311
> dim(TriassicMatrix)
[1]  15 177
> dim(CretaceousMatrix)
[1]  96 774
> dim(PaleogeneMatrix)
[1]  120 1031
#The second number for each of these ^ is the gamma diversity.

> meanPerm<-mean(rowSums(PermianMatrix))
> meanTri<-mean(rowSums(TriassicMatrix))
> meanCret<-mean(rowSums(CretaceousMatrix))
> meanPal<-mean(rowSums(PaleogeneMatrix))
> meanPerm
[1] 57.63636
> meanTri
[1] 34.8
> meanCret
[1] 57.90625
> meanPal
[1] 52.83333
#These are the alpha diversity values

> betaPerm<-311-meanPerm
> betaTri<-177-meanTri
> betaCret<-774-meanCret
> betaPal<-1031-meanPal
> betaPerm
[1] 253.3636
> betaTri
[1] 142.2
> betaCret
[1] 716.0938
> betaPal
[1] 978.1667
#These are the beta diversity values
````
3)
````R
> perAlphaPerm<-meanPerm/311
> perAlphaTri<-meanTri/177
> perAlphaCret<-meanCret/774
> perAlphaPal<-meanPal/1031
> perAlphaPerm
[1] 0.1853259
> perAlphaTri
[1] 0.1966102
> perAlphaCret
[1] 0.07481428
> perAlphaPal
[1] 0.05124475
#These are the alpha biodiversities

> perBetaPerm<-betaPerm/311
> perBetaTri<-betaTri/177
> perBetaCret<-betaCret/774
> perBetaPal<-betaPal/1031
> perBetaPerm
[1] 0.8146741
> perBetaTri
[1] 0.8033898
> perBetaCret
[1] 0.9251857
> perBetaPal
[1] 0.9487553
#These are the beta biodiversities
````
4)
````R
> meanTri-meanPerm
[1] -22.83636
> meanPal-meanCret
[1] -5.072917
#Alpha decreases across extinction events.
````
5)
````R
> perAlphaTri-perAlphaPerm
[1] 0.01128424
> perAlphaPal-perAlphaCret
[1] -0.02356953
#It apparently increases across the P-T and decreases across the K-Pg.
````
#Problem Set 3

1)
````R
> OrdovicianMatrix<-abundanceMatrix(LateOrdovician,SampleDefinition="unit_name",TaxonRank="genus")
> TriassicMatrix<-abundanceMatrix(EarlyTriassic,SampleDefinition="unit_name",TaxonRank="genus")
> SilurianMatrix<-abundanceMatrix(EarlySilurian,SampleDefinition="unit_name",TaxonRank="genus")
> PermianMatrix<-abundanceMatrix(LatePermian,SampleDefinition="unit_name",TaxonRank="genus")
> CretaceousMatrix<-abundanceMatrix(LateCretaceous,SampleDefinition="unit_name",TaxonRank="genus")
> PaleogeneMatrix<-abundanceMatrix(EarlyPaleogene,SampleDefinition="unit_name",TaxonRank="genus")
> OrdovicianMatrix<-cullMatrix(OrdovicianMatrix,2,10)
> SilurianMatrix<-cullMatrix(SilurianMatrix,2,10)
> TriassicMatrix<-cullMatrix(TriassicMatrix,2,10)
> PermianMatrix<-cullMatrix(PermianMatrix,2,10)
> CretaceousMatrix<-cullMatrix(CretaceousMatrix,2,10)
> PaleogeneMatrix<-cullMatrix(PaleogeneMatrix,2,10)
````

2)
````R
> ShannonOrd<-diversity(OrdovicianMatrix)
> AlpShaOrd<-mean(ShannonOrd)
> GamShaOrd<-sum(ShannonOrd)
> BetaShaOrd<-GamShaOrd-AlpShaOrd
> AlpShaOrd
[1] 2.775078
> BetaShaOrd
[1] 102.6779
> GamShaOrd
[1] 105.453

> ShannonSil<-diversity(SilurianMatrix)
> AlpShaSil<-mean(ShannonSil)
> GamShaSil<-sum(ShannonSil)
> BetaShaSil<-GamShaSil-AlpShaSil
> AlpShaSil
[1] 3.214317
> BetaShaSil
[1] 151.0729
> GamShaSil
[1] 154.2872

> ShannonPerm<-diversity(PermianMatrix)
> # LOL ^^^
> AlpShaPerm<-mean(ShannonPerm)
> GamShaPerm<-sum(ShannonPerm)
> BetaShaPerm<-GamShaPerm-AlpShaPerm
> AlpShaPerm
[1] 3.311213
> BetaShaPerm
[1] 69.53547
> GamShaPerm
[1] 72.84669

> ShannonTri<-diversity(TriassicMatrix)
> AlpShaTri<-mean(ShannonTri)
> GamShaTri<-sum(ShannonTri)
> BetaShaTri<-GamShaTri-AlpShaTri
> AlpShaTri
[1] 2.916701
> BetaShaTri
[1] 40.83382
> GamShaTri
[1] 43.75052

> #There has to be a better way to do this!

> ShannonCret<-diversity(CretaceousMatrix)
> AlpShaCret<-mean(ShannonCret)
> GamShaCret<-sum(ShannonCret)
> BetaShaCret<-GamShaCret-AlpShaCret
> AlpShaCret
[1] 3.320182
> GamShaCret
[1] 318.7375
> BetaShaCret
[1] 315.4173

> ShannonPal<-diversity(PaleogeneMatrix)
> AlpShaPal<-mean(ShannonPal)
> GamShaPal<-sum(ShannonPal)
> BetaShaPal<-GamShaPal-AlpShaPal
> AlpShaPal
[1] 3.462795
> BetaShaPal
[1] 412.0726
> GamShaPal
[1] 415.5354
````

3)
````R
> AlpShaOrd/GamShaOrd
[1] 0.02631579
> BetaShaOrd/GamShaOrd
[1] 0.9736842
> GamShaOrd/GamShaOrd
[1] 1
> #All of these will be one so this is the only one I'm doing.

> AlpShaSil/GamShaSil
[1] 0.02083333
> BetaShaSil/GamShaSil
[1] 0.9791667

> AlpShaPerm/GamShaPerm
[1] 0.04545455
> BetaShaPerm/GamShaPerm
[1] 0.9545455

> AlpShaTri/GamShaTri
[1] 0.06666667
> BetaShaTri/GamShaTri
[1] 0.9333333

> AlpShaCret/GamShaCret
[1] 0.01041667
> BetaShaCret/GamShaCret
[1] 0.9895833

> AlpShaPal/GamShaPal
[1] 0.008333333
> BetaShaPal/GamShaPal
[1] 0.9916667
````

4)
````R
> AlpShaSil-AlpShaOrd
[1] 0.4392395
> AlpShaTri-AlpShaPerm
[1] -0.3945117
> AlpShaCret-AlpShaPal
[1] -0.1426122
````
There does not appear to be a trend since it decreased in two cases and increased in one.

5)
````R
> AlpShaSil/GamShaSil-AlpShaOrd/GamShaOrd
[1] -0.005482456

> AlpShaTri/GamShaTri-AlpShaPerm/GamShaPerm
[1] 0.02121212

> AlpShaPal/GamShaPal-AlpShaCret/GamShaCret
[1] -0.002083333
````
Same deal as the last one...

#Problem 4
I think that, as a general rule, beta diversity neither increases nor decreases following a mass extinction based on the evidence here.
