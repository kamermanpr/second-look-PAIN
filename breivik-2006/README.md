Prevalence of chronic pain in 15 European countries and Israel
==============================================================

### Summary

Breivik *et al.* 2006 describe the mean prevalence of chronic pain, of moderate-to-severe intensity, across 15 European countries and Israel to be 19%, with a range from 12% (Spain) to 30% (Norway). Using bootstrap resampling, and weighting data from each country according to the proportion of total participants from a country, I estimated the mean (95% confidence interval) prevalence of moderate-to-severe chronic pain in adults to be: 18.4% (15.9 to 21.4). The R outputs below show the bootstrap mean and 95% confidence interval.

***Mean***
>
    ## WEIGHTED BOOTSTRAP
    ## Call:
    ## boot(data = data.1, statistic = func, R = 10000, stype = "w", 
    ##     weights = data.1$SampleWeight)
    ## 
    ## 
    ## Bootstrap Statistics :
    ##      original        bias    std. error  mean(t*)
    ## t1* 0.1859404 -6.300319e-05  0.01386178  0.184358


***Confidence interval***
> 
    ## BOOTSTRAP CONFIDENCE INTERVAL CALCULATIONS
    ## Based on 10000 bootstrap replicates
    ## 
    ## CALL : 
    ## boot.ci(boot.out = bootMeanPrev, type = "basic")
    ## 
    ## Intervals : 
    ## Level      Basic         
    ## 95%   ( 0.1591,  0.2135 )  
    ## Calculations and Intervals on Original Scale


### Description of the analysis

These analyses use data extracted from a paper published by Breivik and colleagues (2006) on the epidemiology of chronic pain in adults (>18 years) in 15 European countries and Israel. The original manuscript presented the prevalence of chronic pain in each of the countries, and the arithmetic mean prevalence across all 16 countries (19%). The data were extracted from **Fig 1** of the paper, and the analysis involves the generation of a bootstrap mean and 95% confidence interval of the mean of chronic pain across the 16 countries. The probability of being sampled in the bootstrap was weighted for each country according to the proportion of the total sample derived from a particular country. 

This folder contains a markdown file [Breivik2006.md](Breivik2006.md), , and the original RMarkdown analysis script [Breivik2006.Rmd](Breivik2006.Rmd), describing the analysis and results. 

### Data source

Breivik H, Collett B, Ventafridda V, Cohen R, Gallacher D. Survey of chronic pain in Europe: prevalence, impact on daily life, and treatment. *Eur J Pain* **10**: 287-333, 2006. [doi: 10.1016/j.ejpain.2005.06.009](http://doi.wiley.com/10.1016/j.ejpain.2005.06.009)

### Abstract for Breivik *et al.*, 2006

This large scale computer-assisted telephone survey was undertaken to explore the prevalence, severity, treatment and impact of chronic pain in 15 European countries and Israel. Screening interviews identified respondents aged ≥18 years with chronic pain for in-depth interviews. 19% of 46,394 respondents willing to participate (refusal rate 46%) had suffered pain for ≥6 months, had experienced pain in the last month and several times during the last week. Their pain intensity was ≥5 on a 10-point Numeric Rating Scale (NRS) (1 = no pain, 10 = worst pain imaginable) during last episode of pain. In-depth interviews with 4839 respondents with chronic pain (about 300 per country) showed: 66% had moderate pain (NRS = 5–7), 34% had severe pain (NRS = 8–10), 46% had constant pain, 54% had intermittent pain. 59% had suffered with pain for two to 15 years, 21% had been diagnosed with depression because of their pain, 61% were less able or unable to work outside the home, 19% had lost their job and 13% had changed jobs because of their pain. 60% visited their doctor about their pain 2–9 times in the last six months. Only 2% were currently treated by a pain management specialist. One-third of the chronic pain sufferers were currently not being treated. Two-thirds used non-medication treatments, e.g,. massage (30%), physical therapy (21%), acupuncture (13%). Almost half were taking non-prescription analgesics; ‘over the counter’ (OTC) NSAIDs (55%), paracetamol (43%), weak opioids (13%). Two-thirds were taking prescription medicines: NSAIDs (44%), weak opioids (23%), paracetamol (18%), COX-2 inhibitors (1-36%), and strong opioids (5%). Forty percent had inadequate management of their pain. Interesting differences between countries were observed, possibly reflecting differences in cultural background and local traditions in managing chronic pain. Conclusions: Chronic pain of moderate to severe intensity occurs in 19% of adult Europeans, seriously affecting the quality of their social and working lives. Very few were managed by pain specialists and nearly half received inadequate pain management. Although differences were observed between the 16 countries, we have documented that chronic pain is a major health care problem in Europe that needs to be taken more seriously.

### Case definition used by Breivik *et al.*, 2006

The respondents were considered to suffer from long lasting pain if they (a) had suffered from pain for at least six months, (b) had experienced pain in the last month, (c) experienced pain at least two times per week, and (d) rated their pain intensity when they last experienced pain as at least 5 on a 10-point Numeric Rating Scale (NRS) with 1 = no pain at all and 10 = the worst pain imaginable.
