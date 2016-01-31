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

## Read-And-Delete

1. Edit YAML front matter
2. Write using R Markdown
3. Use an empty line followed by three dashes to separate slides!

--- .class #id 

## Slide 2: Overview
The haze phenomenon has persistently return to Malaysia and Singapore on an annual basis over the past 3 decades. 

This simple application was created to illustrate and analyse the Air Pollution Index (API) readings collected from 2013 to 2015 at the town Banting (near capital Kuala Lumpur) in Malaysia to examine the haze situation.

This was built as part of a deliverable for the course Developing Data Products (https://www.coursera.org/learn/data-products/home/welcome) as part of the Coursera Data Science Specialization.

--- .class #id 

## Slide 3: Application

Let us create a simple scatterplot.


```r
require(ggplot2)
qplot(wt, mpg, data = mtcars)
```

<img src="assets/fig/simple-plot-1.png" title="plot of chunk simple-plot" alt="plot of chunk simple-plot" style="display: block; margin: auto;" />


--- .class #id 


## Slide 4

--- .class #id 

## Slide 5

--- .class #id 
