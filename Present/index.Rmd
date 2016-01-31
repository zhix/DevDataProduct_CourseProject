---
title       : "Course Project: Shiny Application and Reproducible Pitch"
subtitle    : 31 Jan 2016 
author      : Chong Zhi Xiong
job         : Teacher
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Overview
The haze phenomenon has persistently return to Malaysia and Singapore on an annual basis over the past 3 decades. 

This simple application was created to illustrate and analyse the Air Pollution Index (API) readings collected from 2013 to 2015 at the town Banting (near capital Kuala Lumpur) in Malaysia to examine the haze situation.

This was built as part of a deliverable for the course Developing Data Products (https://www.coursera.org/learn/data-products/home/welcome) as part of the Coursera Data Science Specialization.

--- .class #id 


## Application

To access the application created: 

1. Open RStudio

2. type "runGist("ebbc4d8e682170ea66ef")"

3. Voila! You should be able to see the app. 


--- .class #id

## Functions
There are 4 options on Pollutants where user can choose any combination of them. The selected Pollutants are displayed before the graph is plotted. 

User could also choose to view the graph plot in particular year. 

--- .class #id 

## How it works?

server.R

- Graph is automatically updated by monitoring changes and 
selection under the user inputs. 

- When change is detected, the dataset is subsetted, and graph is plotted accordingly. 

ui.R

- interface is divided into 2 parts where one is for user to control the parameters (Year and Pollutant(s)), another is for plotting the Graph, as well as a brief description on the dataset. 
