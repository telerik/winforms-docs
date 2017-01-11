---
title: Serialize/Deserialize to XML
page_title: Serialize/Deserialize to XML | RadDataFilter
description: This article shows how you can save or load the expression that you have built. 
slug: winforms/datafilter/save-load-filters
tags: data, filter, save, load
published: True
position: 10
---

# Serialize/Deserialize Filters

You can use the __SaveXML__ and __LoadXml__ methods to save the current expression either in a file or in a stream. The following snippets are showing how you can save or load the current state.

#### SaveXML
{{source=..\SamplesCS\DataFilter\DataFilterGettingStarted.cs region=Save}} 
{{source=..\SamplesVB\DataFilter\DataFilterGettingStarted.vb region=Save}}
````C#
private void radButton1_Click(object sender, EventArgs e)
{
    radDataFilter1.SaveXML("Test.xml");
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    RadDataFilter1.SaveXML("Test.xml")
End Sub

````
 


{{endregion}}


#### LoadXML

{{source=..\SamplesCS\DataFilter\DataFilterGettingStarted.cs region=Load}} 
{{source=..\SamplesVB\DataFilter\DataFilterGettingStarted.vb region=Load}}
````C#
private void radButton2_Click(object sender, EventArgs e)
{
    radDataFilter1.LoadXML("Test.xml");
}

````
````VB.NET
Private Sub radButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
    RadDataFilter1.LoadXML("Test.xml")
End Sub

````
 


{{endregion}}





