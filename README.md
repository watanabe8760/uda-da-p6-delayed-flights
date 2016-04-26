# Vizualization - Which Airline is not likely to Delay?

http://bl.ocks.org/watanabe8760/1a0de27919ab73084736299e53f73349

## Summary

Do you like to delay when you fly? If not, take a look at the graph and check which airline is more likely to delay. The graph shows percentage of delayed flights for each airline per year. The term "delay" is defined as more than 15 minutes delay from the expected arrival time.

## Data

The original data *108785617_22016_553_airline_delay_causes.csv* was downloaded from [Airline On-Time Statistics and Delay Causes](http://www.transtats.bts.gov/OT_Delay/OT_DelayCause1.asp).

In the website, the specification of data was specified as follows.

```
Select a carrier : All
Select an airport: All
Period from      : June, 2003 
Period to        : February, 2016
```

*108785617_22016_553_airline_delay_causes.csv* was manipulated by R code (*aggregation_final.R*) and the data set *airline_delay_causes_aggregated_final.csv* which is used for the visualization was created.


## Design

To show a clear comparison of the percentage, a simple horizontal bar chart has been chosen. Since y-axis labels are self-explanatory I did not put anything to the y-axis title. By sorting the airlines by percentage it emphasizes which airline has better performance. For readers, maybe the biggest concern is how often airlines delayed in a recent few years though, year buttons at the bottom allow readers to check around more past arbitrarily. This is the initial design implemented in *index_1.html*.

After receiving feedback about notations on X/Y axes from Reviewer A and B (please see Feedback section), words like "Airlines", "Air lines" and "Airways" were removed from y-axis labels and x-axis title was removed. To compensate the x-axis title removal, "%"s were added to x-axis tick labels. These aesthetical modifications are reflected in *index_2.html*. Since I was expecting to have another line chart because of Reviewer C's comment, I also added "Show History" button. But in this visualization the functionality is not implemented.

In *index_3.html* a line graph which Reviewer C mentioned has been implemented. This graph enables us to see the changes over time more easily. Thinking of a combination with the bar chart previously created, "Go Back to Per Year" button was added though, the functionality is not implemented.

The bar chart and the line chart were combined in *index_4.html*. Now "Show History" button and "Go Back to Per Year" button work as expected so that readers can go back and forth between two charts.

As the final visualization, after receiving feedback from Reviewer D, *index_final.html* focuses only on the line chart to tell a story that Delta is the best airlines to be chosen when its broad range of destination is taken into consideration. To emphasize the story the title changed accordingly and some explanation was added at the bottom. Also to make the interactive functionality clear, "Click" annotation was added. As opposed to the comment of Reviewer B, Reviewer D suggested to put x/y axis labels for clear communication so I added them in a simple manner.


## Feedback

Reviewer A:  
It would be better to remove word "Airline" from y axis labels, it looks redundant.

Reviewer B:  
It would be better to remove X axis title and added % sign to x axis tick labels.

Reviewer C:  
It would be better to use a line graph with the years on the X axis, percent delayed on the Y axis, and the various airlines each represented by their own line. This way, you could easily compare the trends for each airline and see whether a single airline dominates over the date range, or whether "leadership" in delayed flights changes over time.

Reviewer D:  
1. Visualization doesn't have a specific explanatory story and chart title can aid in telling the explanatory story.
2. There could be a note on the chart letting the chart reader know what functionality the chart has.
3. Chart could have a note about where the data came from as well as what "delayed flights" refers to.
4. x and y axes should be labeled for clear communication.


## Recources
* Airline on-time performance - http://stat-computing.org/dataexpo/2009/
* Airline On-Time Statistics and Delay Causes - http://www.transtats.bts.gov/OT_Delay/OT_DelayCause1.asp
* Airline On-Time Performance and Causes of Flight Delays FAQ - http://www.rita.dot.gov/bts/help_with_data/aviation/index.html
* d3 API Reference - https://github.com/mbostock/d3/wiki/API-Reference
* dimple Wiki - https://github.com/PMSI-AlignAlytics/dimple/wiki
* Bl.ocks, Mike Bostock - http://bl.ocks.org/
* Horizontal Bar, dimple examples - http://dimplejs.org/examples_viewer.html?id=bars_horizontal
* Vertical Lollipop, dimple examples - http://dimplejs.org/examples_viewer.html?id=scatter_vertical_lollipop
* Interactive Legend, dimple examples - http://dimplejs.org/advanced_examples_viewer.html?id=advanced_interactive_legends
* An example of dimple chart update - http://jsfiddle.net/nf57j/27/
* How to Juxtapose DIV and Anchor, Stackoverflow - http://stackoverflow.com/questions/13237961/how-to-juxtapose-div-and-anchor
* Dimple.js how to customize range of values on Y-axis from 0 to 100?, Stackoverflow - http://stackoverflow.com/questions/25559658/dimple-js-how-to-customize-range-of-values-on-y-axis-from-0-to-100
* change cursor to finger pointer, Stackoverflow - http://stackoverflow.com/questions/8809909/change-cursor-to-finger-pointer
* CSS Selector Reference - http://www.w3schools.com/cssref/css_selectors.asp
* CSS Buttons - http://www.w3schools.com/css/css3_buttons.asp
* HTML Event Attributes - http://www.w3schools.com/tags/ref_eventattributes.asp
* WHERE WE FLY, Hawaiian Airlines - https://www.hawaiianairlines.com/destinations
* Alaska Airlines Network - http://flyingbettertogether.com/
* Delta US Route Map - http://www.delta.com/content/dam/delta-www/pdfs/route-maps/us-route-map.pdf
