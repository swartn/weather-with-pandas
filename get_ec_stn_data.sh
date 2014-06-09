#!/bin/bash
for y in $(seq 1940 2014)
do
wget --output-document=yyj_daily_$y.csv "http://climate.weather.gc.ca/climateData/bulkdata_e.html?format=csv&stationID=118&Year=$y&Month=11&day=1&timeframe=2&submit=Download+Data"
cat  yyj_daily_$y.csv | sed 's/"//g' > syyj_daily_$y.csv
mv syyj_daily_$y.csv yyj_daily_$y.csv
done


