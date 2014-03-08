Purpose:

Given a list of city names, produce a chart of whether the "sun never sets" on the city set. 

(Inspired by a TWer speculating that there are so many offices now that the sun may never set completely on the company. I believe that this may be true at some times of year, but probably not during all seasons.)

to run:
ruby sun_never_sets.rb

results:

```
for each hour of the day:
| means sun is up
- means sun is down

Times are un UTC
123456789.............24
|------------||||||||||| Atlanta sunrise: 2014-03-07 14:07:16 UTC sunset: 2014-03-09 01:39:11 UTC
-----------||||||||||||| Austin sunrise: 2014-03-07 12:29:52 UTC sunset: 2014-03-09 00:10:27 UTC
-----------||||||||||||- Chicago sunrise: 2014-03-07 12:16:14 UTC sunset: 2014-03-07 23:47:43 UTC
-----------||||||||||||| Dallas sunrise: 2014-03-07 12:35:05 UTC sunset: 2014-03-09 00:05:06 UTC
----------||||||||||||-- New York sunrise: 2014-03-07 11:21:07 UTC sunset: 2014-03-07 22:53:50 UTC
||-----------||||||||||| San Francisco sunrise: 2014-03-07 14:32:55 UTC sunset: 2014-03-09 02:11:08 UTC
----------|||||||||||||- Toronto sunrise: 2014-03-07 11:44:23 UTC sunset: 2014-03-07 23:13:39 UTC
--------|||||||||||||--- Porto Alegre sunrise: 2014-03-07 09:19:49 UTC sunset: 2014-03-07 21:51:44 UTC
----------|||||||||||||- Quito sunrise: 2014-03-07 11:21:38 UTC sunset: 2014-03-07 23:28:20 UTC
-------|||||||||||||---- Recife sunrise: 2014-03-07 08:24:17 UTC sunset: 2014-03-07 20:36:53 UTC
---------|||||||||||||-- Sao Paulo sunrise: 2014-03-07 10:16:42 UTC sunset: 2014-03-07 22:28:39 UTC
||||||||||||------------ Bangalore sunrise: 2014-03-09 01:01:19 UTC sunset: 2014-03-07 12:59:20 UTC
||||||||||||------------ Chennai sunrise: 2014-03-09 00:50:43 UTC sunset: 2014-03-07 12:48:41 UTC
||||||||||||------------ Gurgaon sunrise: 2014-03-09 01:09:04 UTC sunset: 2014-03-07 12:55:23 UTC
|||||||||||||----------- Pune sunrise: 2014-03-09 01:18:08 UTC sunset: 2014-03-07 13:12:10 UTC
----|||||||||||||------- Hamburg sunrise: 2014-03-09 05:50:14 UTC sunset: 2014-03-07 17:08:28 UTC
----------|||||||||||||- London sunrise: 2014-03-07 11:58:22 UTC sunset: 2014-03-07 23:32:05 UTC
----------||||||||||||-- Manchester sunrise: 2014-03-07 11:09:17 UTC sunset: 2014-03-07 22:39:48 UTC
||||||||||-----------||| Beijing sunrise: 2014-03-07 22:39:48 UTC sunset: 2014-03-07 10:12:04 UTC
|||||||||||-----------|| Chengdu sunrise: 2014-03-07 23:24:10 UTC sunset: 2014-03-07 11:06:13 UTC
|||||||||------------||| Shanghai sunrise: 2014-03-07 22:14:55 UTC sunset: 2014-03-07 09:56:15 UTC
||||||||||------------|| Xi'an sunrise: 2014-03-07 23:06:34 UTC sunset: 2014-03-07 10:44:55 UTC
||||||||||-----------||| Beijing sunrise: 2014-03-07 22:39:48 UTC sunset: 2014-03-07 10:12:04 UTC
||-----------||||||||||| Brisbane sunrise: 2014-03-07 14:32:48 UTC sunset: 2014-03-09 02:11:06 UTC
----------|||||||||||||- Melbourne sunrise: 2014-03-07 11:41:09 UTC sunset: 2014-03-07 23:26:21 UTC
||||||||||-----------||| Perth sunrise: 2014-03-07 22:10:06 UTC sunset: 2014-03-07 10:45:01 UTC
|||||||||||-----------|| Singapore sunrise: 2014-03-07 23:13:11 UTC sunset: 2014-03-07 11:18:44 UTC
||||||||----------|||||| Sydney sunrise: 2014-03-07 19:47:29 UTC sunset: 2014-03-07 08:24:51 UTC
||-----------||||||||||| Brisbane sunrise: 2014-03-07 14:32:48 UTC sunset: 2014-03-09 02:11:06 UTC
---|||||||||||||-------- Johannesburg sunrise: 2014-03-09 04:05:46 UTC sunset: 2014-03-07 16:33:03 UTC
--||||||||||||||-------- Kampala sunrise: 2014-03-09 03:57:11 UTC sunset: 2014-03-07 16:04:02 UTC
```

TODO:
- calculate down to the minute (display 15-min increments?)
- show gaps
