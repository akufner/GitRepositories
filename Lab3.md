> 16.8/20

## Excercise Questions 1
1. 704
2. 24429

1. The citation tells who described the species and when.
2. class: Strophomenata, order:	Strophomenida, family: Strophomenidae, genus:	Strophomena, species:	planumbona
3. Union
4. Ordovician
5. Liberty

## Exercise Questions 2
1. The different colors denote different time periods.  Orange=Paleogene, Yellow=Neogene
2. United States, England, and Belgium
3. Cincinatti, Ohio
4. Late Ordovician

1. <strike>Perpendicular</strike> 
>parallel -0.5 points
2. Myalinida

## Exercise Questions 3
1. https://training.paleobiodb.org/data1.2/occs/list.json?datainfo&rowcount&base_name=Ambonychia&strat=Lexington Limestone
2. https://training.paleobiodb.org/data1.2/occs/list.csv?datainfo&rowcount&base_name=mammal&interval=Paleocene,Oligocene
3. https://training.paleobiodb.org/data1.2/taxa/opinions.csv?datainfo&rowcount&base_name=Testudines&rank=order&interval=Mesozoic
4. https://training.paleobiodb.org/data1.2/colls/list.csv?datainfo&rowcount&base_name=Aves, Marsupialia, Sirenia&cc=US
5. <strike>https://training.paleobiodb.org/data1.2/occs/list.csv?datainfo&rowcount&base_name=Ficus&taxon_reso=genus&cc=US</strike>
> -1 points you need Gastropoda:Ficus to get the snail not the plant.

## Exercise Questions 4
1. Gastrocoptidae
2. Cretaceous Aptian 125-113 Ma
3. Eocene Bridgerian 50.3-46.2 Ma
4. Tropics
5. Kotodzha and Raiga Formations

## Exercise Questions 5
1. URL<-"https://paleobiodb.org/data1.2/colls/list.csv?base_name=Mammut&interval=Pliocene"
2. 39, 13
3. Collections
4. Mammuthus, Mammoth, Pliocene
5. https://paleobiodb.org/data1.2/colls/list.csv?base_name=Mammut&interval=Miocene,Pleistocene
6. <strike>https://paleobiodb.org/data1.2/colls/list.csv?base_name=Mammut&interval=Miocene,Pleistocene&show=paleolng,paleolat</strike>
> You need to use show=paleoloc, -1 points


##Exercise Question 6

````R
downloaddata<-function(taxon="TAXON", interval="INTERVAL") {
      starthtml<-"http://paleobiodb.org/data1.2/occs/list.csv?base_name="
      int<-"&interval="
      GetData<-paste(starthtml, taxon, int, interval, sep="")
      GetData1<-read.csv(GetData)
      GetData1
      }
````
      
> Nice

Morphologic Measurements
1. No I can't.

> -2 points. Why not? At least explain why.

2. Smithian (Early Triassic) ammonoid faunas from northwestern Guangxi (South China): taxonomy and biochronology

3. 10, 15, 17, 22, 25

> -1 points, why did you choose these?
