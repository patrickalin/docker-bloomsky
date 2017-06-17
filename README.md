# Docker-bloomsky

[![](https://images.microbadger.com/badges/image/patrickalin/docker-bloomsky.svg)](https://microbadger.com/images/patrickalin/docker-bloomsky "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/patrickalin/docker-bloomsky.svg)](https://microbadger.com/images/patrickalin/docker-bloomsky "Get your own version badge on microbadger.com")
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

A simple Go client for the BloomSky API.

* It's possible to show informations in the console or in a embedded web server.
* It's also possible to export datas to Time Series Database InfluxData.

## 1 Getting Started

### Prerequisites

* BloomSky API key (get it here: [dashboard.bloomsky.com](https://dashboard.bloomsky.com/) )

### Execution without config.yaml

    docker run -d  --name=bloomsky -e bloomskyAccessToken=ToBECompleted patrickalin/docker-bloomsky

* Don't forget !!!! : You have to change the API Key

### Execution with config.yaml

    docker cp bloomsky:/config.yaml ./config.yaml

    docker run -d  --name=bloomsky -v $(PWD)/config.yaml:/config.yaml patrickalin/nestthermostat

### Execution from docker-compose

[link to docker-compose.yaml](https://github.com/patrickalin/docker-bloomsky/blob/master/docker-compose.yml)

    docker-compose up -d

* Don't forget !!!! : You have to change the API

## 2 Result

### Example : result in the webserver

By default : `http://localhost:1111/`

![Bloosmky webserver](https://raw.githubusercontent.com/patrickalin/bloomsky-client-go/master/img/webserver.png)

### Example : result in the standard console

    Bloomsky
    --------
    Timestamp :         2017-06-09 22:07:10 &#43;0200 CEST
    City :              Thuin
    Device Id :         442C05954A59
    Num Of Followers :  2
    Index UV :          1
    Night :             true
    Wind Direction :    SW
    Wind Gust :         4.16
    Sustained Wind Speed : 2.17
    Wind Gust :         6.6976
    Sustained Wind Speed 3.4937
    Rain :              false
    Daily :             0.44
    24h Rain :          0.44
    Rain Rate :         0
    Rain Daily :        0.44
    24h Rain :          11.18
    Rain Rate :         0
    Temperature F :     59.13 °F
    Temperature C :     15.07 °C
    Humidity :          65
    Pressure InHg :     29.38
    Pressure HPa :      994.92

### Example : result in a influxData

![InfluxData Image ](https://raw.githubusercontent.com/patrickalin/bloomsky-client-go/master/img/InfluxDB.png)

## 3 Github : link project

* [Github project release](https://github.com/patrickalin/bloomsky-client-go)
* [Github build docker](https://github.com/patrickalin/docker-bloomsky)
