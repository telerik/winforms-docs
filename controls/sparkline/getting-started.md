---
title: Export to Image
page_title: RadSparkline Export to Image
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-getting-started
tags: sparkline
published: True
position: 3
---

# Getting Started

1\. To start using the RadSparkLine fir you need to place the control on the form. By default the control should look like a regular panel.

![](images/sparkline-getting-started001.png)

2\. Once the control is on the form got to the code behind and create a new SparkBarSeries. 

#### Adding SparkBarSeries to RadSparkline

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=GettingStarted}} 
{{source=..\SamplesCS\Sparkline\SparklineCode.vb region=GettingStarted}}
 

{{endregion}} 


3\. Here is the method that returns the sample data as well.

#### Sample Data

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=SampleData}} 
{{source=..\SamplesCS\Sparkline\SparklineCode.vb region=SampleData}}
 

{{endregion}} 

4. The RadSparkline now shows the data and indicates the high an low points.

![](images/sparkline-getting-started002.png)