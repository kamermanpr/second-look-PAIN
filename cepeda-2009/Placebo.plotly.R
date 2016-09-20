setwd('~/GoogleDrive/DataAnalysis/MiscellaneousHIVSNAnalyses/Cepeda2009')
library(plotly)
library(ggplot2)
library(ggthemes)
library(scales)
library(grid)

## Figure 2
# Fig 2 dataframe
fig2<-data.frame(Condition=c('Central', 'PDN', 'HIV-SN', 'PHN'), 
                     N=c(128, 2969, 280, 839), 
                     Mean=c(-0.53, -1.45, -1.82, -1.16),
                     L95CI=c(-0.86, -1.55, -2.12, -1.29),
                     U95CI=c(-0.19, -1.35, -1.51, -1.03))

# Sort into ascending order by 'Mean'
fig2<-fig2[order(-fig2$Mean), ]
fig2$Condition<-factor(fig2$Condition, 
                       levels=c('Central', 'PHN', 'PDN', 'HIV-SN'),
                       ordered=T)

# ggplot
gg.fig2<-ggplot(data=fig2, aes(x=Mean, y=Condition)) +
    geom_errorbarh(aes(xmin=L95CI, xmax=U95CI, height=0.2), size=1, colour='black') +
    geom_point(size=8, colour='black') +
    geom_point(size=6, colour='red') +
    geom_vline(xintercept=0, size=1, linetype=2) +
    guides(colour='none') +
    labs(x='Mean (95% CI) change in pain intensity\nfrom baseline', y='') +
    theme_economist() +
    theme(plot.margin=unit(c(1,1,2,1), 'lines'),
          axis.line.x=element_line(size=1),
          axis.ticks.x=element_line(size=1),
          axis.text=element_text(size=16),
          axis.title.x=element_text(size=16, face='bold', vjust=-0.6)) 
ggplotly(gg.fig2, filename = 'Misc.HIVSN.analyses/Cepeda2009/Fig2')

## Figure 3
# Fig 3 dataframe
fig3<-data.frame(Condition=c('Central', 'PDN', 'HIV-SN', 'PHN'), 
                     N=c(128, 2969, 280, 839), 
                     Mean=c(0.07, 0.2, 0.43, 0.12),
                     L95CI=c(0.02, 0.15, 0.35, 0.08),
                     U95CI=c(0.12, 0.26, 0.51, 0.14))

# Sort into ascending order by 'Mean'
fig3<-fig3[order(fig3$Mean), ]
fig3$Condition<-factor(fig3$Condition, 
                       levels=c('Central', 'PHN', 'PDN', 'HIV-SN'),
                       ordered=T)

# ggplot
gg.fig3<-ggplot(data=fig3, aes(x=Mean, y=Condition)) +
    geom_errorbarh(aes(xmin=L95CI, xmax=U95CI, height=0.2), size=1, colour='black') +
    geom_point(size=8, colour='black') +
    geom_point(size=6, colour='red') +
    geom_vline(xintercept=0, size=1, linetype=2) +
    guides(colour='none') +
    labs(x='Proportion of placebo responders (95% CI)\n', y='') +
    theme_economist() +
    theme(plot.margin=unit(c(1,1,1,1), 'lines'),
          axis.line.x=element_line(size=1),
          axis.ticks.x=element_line(size=1),
          axis.text=element_text(size=16),
          axis.title.x=element_text(size=16, face='bold', vjust=-0.6)) 
ggplotly(gg.fig3, filename = 'Misc.HIVSN.analyses/Cepeda2009/Fig3')
