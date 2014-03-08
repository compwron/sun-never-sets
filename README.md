Purpose:

Given a list of city names, produce a chart of whether the "sun never sets" on the city set. 

Inspired by a TWer speculating that there are so many offices now that the sun may never set completely on the company. This appears to be true.

to run:
ruby sun_never_sets.rb input/cities.txt

results:

```
Times are in UTC, from midnight to midnight in 15-min increments
Sunrise/sunset times are on the day that the program is run

| sun is up
- sun is down


||||||||||------------------------------------------------|||||||||||||||||||||||||||||||||||||| San Francisco
-------------------------------------------------||||||||||||||||||||||||||||||||||||||||||||--- Chicago
||------------------------------------------------|||||||||||||||||||||||||||||||||||||||||||||| Dallas
|------------------------------------------------||||||||||||||||||||||||||||||||||||||||||||||| Austin
||||----------------------------------------------------|||||||||||||||||||||||||||||||||||||||| Atlanta
---------------------------------------------||||||||||||||||||||||||||||||||||||||||||||------- New York
----------------------------------------------||||||||||||||||||||||||||||||||||||||||||||||||-- Toronto
-------------------------------------||||||||||||||||||||||||||||||||||||||||||||||||----------- Porto Alegre
---------------------------------------------||||||||||||||||||||||||||||||||||||||||||||||||--- Quito
---------------------------------||||||||||||||||||||||||||||||||||||||||||||||||--------------- Recife
-----------------------------------------||||||||||||||||||||||||||||||||||||||||||||||||------- Sao Paulo
----||||||||||||||||||||||||||||||||||||||||||||------------------------------------------------ Bangalore
---||||||||||||||||||||||||||||||||||||||||||||||||--------------------------------------------- Chennai
----||||||||||||||||||||||||||||||||||||||||||||------------------------------------------------ Gurgaon
-----||||||||||||||||||||||||||||||||||||||||||||||||------------------------------------------- Pune
-----------------------||||||||||||||||||||||||||||||||||||||||||||||||------------------------- Hamburg
-----------------------------------------------||||||||||||||||||||||||||||||||||||||||||||||||- London
--------------------------------------------||||||||||||||||||||||||||||||||||||||||||||-------- Manchester
||||||||||||||||||||||||||||||||||||||||||------------------------------------------------|||||| Beijing
|||||||||||||||||||||||||||||||||||||||||||||------------------------------------------------||| Chengdu
||||||||||||||||||||||||||||||||||||----------------------------------------------------|||||||| Shanghai
||||||||||||||||||||||||||||||||||||||||----------------------------------------------------|||| Xi'an
||||||||||||||||||||||||||||||||||||||||||------------------------------------------------|||||| Beijing
||||||||||------------------------------------------------|||||||||||||||||||||||||||||||||||||| Brisbane
----------------------------------------------||||||||||||||||||||||||||||||||||||||||||||||||-- Melbourne
||||||||||||||||||||||||||||||||||||||||------------------------------------------------|||||||| Perth
||||||||||||||||||||||||||||||||||||||||||||------------------------------------------------|||| Singapore
|||||||||||||||||||||||||||||||||||--------------------------------------------||||||||||||||||| Sydney
||||||||||------------------------------------------------|||||||||||||||||||||||||||||||||||||| Brisbane
----------------||||||||||||||||||||||||||||||||||||||||||||||||-------------------------------- Johannesburg
---------------||||||||||||||||||||||||||||||||||||||||||||||||||||----------------------------- Kampala
```

TODO:
- calculate down to the minute (display 15-min increments?)
- show gaps
