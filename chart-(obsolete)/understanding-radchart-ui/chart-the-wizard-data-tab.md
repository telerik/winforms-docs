---
title: The Wizard Data Tab
page_title: The Wizard Data Tab
description: The Wizard Data Tab
slug: chart-understanding-radchart-ui-the-wizard-data-tab
tags: the,wizard,data,tab
published: True
position: 4
---

# The Wizard Data Tab



The __Data__tab brings together the Series, Series Item, Axis labels and data binding to a single screen. Here you can add data points to your chart manually or by binding to data sources. 

![chart-understanding-radchart-ui-the-wizard-data-tab 001](images/chart-understanding-radchart-ui-the-wizard-data-tab001.png)



The __Data__tab is composed of areas:

## Choose Data Source

__Choose Data Source__ appears on the upper left hand portion of the screen.  Select from an existing data source or select "<new data source" from the drop down list.  If you have an existing data source selected, click the __Edit__button to reconfigure the data source in the __Configure Data Source Wizard__.

## Group Column 

__Group Column__appears on the upper right side. Select a column name from a bound data source to group by that column data.

## Series

Use the __Series__ area of the tab to add, delete and reorder chart series elements using the list box provided. Use the plus and minus buttons to add or delete a series element.  Use the up and down arrows to move a series element up or down in the list. For each selected series element in the list box you can provide a name and select from the [list of chart types]({%slug chart-undestanding-radchart-types-radchart-types-overview%}). 

If you bind to a data source the __Databind Series Elements__ portion will be enabled and allow you to choose column names for your labels and values from the drop down lists provided. When you bind to a data source the __Series__list box will be populated automatically with a series for each numeric column in the data source. If you need to fine tune the behavior or appearance of a series in more depth than the __Data__tab provides, use the __RadChart__[Series]({%slug chart-undestanding-radchart-elements-series-overview%}) property in the property window. In the example below the __Labels__for the series have been bound to a column "TenMostExpensiveProducts", which contains product descriptions. These descriptions display to the right next to each bar in the chart.  Note that [SeriesOrientation]({%slug chart-undestanding-radchart-elements-background-and-plot-areas%}) is Horizontal, so the X-Axis is on the left.

![chart-understanding-radchart-ui-the-wizard-data-tab 002](images/chart-understanding-radchart-ui-the-wizard-data-tab002.png)

## Series Items

For each series you select in the __Series__ area list, you can add, edit, delete and reorder entries in the __Series Items__ list. Use the plus and minus buttons to add and delete series items.  Use the up and down arrows to move series items up or down in the list. For each item you can set the __Name__, __Label__ and __X__ and __Y__ Values. X2 and Y2 values are enabled for [Gantt]({%slug chart-undestanding-radchart-types-gantt-charts%}) and [Bubble]({%slug chart-undestanding-radchart-types-bubble-charts%}) chart types. If you need to refine the behavior or appearance in more detail than provided by this Wizard page, use the __Items collection__ of the __RadChart__[Series]({%slug chart-undestanding-radchart-elements-series-overview%}) from the Property window.

## Axis Labels

This section lets you choose between binding to a column in the data source and using the column data to populate the labels along an Axis. Click the __Add Labels Manually__link to navigate to the [Axis tab]({%slug chart-understanding-radchart-ui-the-wizard-axis-tab%}). The screen shot below shows the X-Axis labels set data bound to a column "TenMostExpensiveProducts" that contains product descriptions.  Note that [SeriesOrientation]({%slug chart-undestanding-radchart-elements-background-and-plot-areas%}) is Horizontal, so the X-Axis items show on the left.

![chart-understanding-radchart-ui-the-wizard-data-tab 003](images/chart-understanding-radchart-ui-the-wizard-data-tab003.png)
