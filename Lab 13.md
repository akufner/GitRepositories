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
Alpha decreases when measured as a percentage, it means that there are more genera that are less widespread. This doesn't match what we learned in class.

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

2)

3)

4)
5)

#Problem 4
