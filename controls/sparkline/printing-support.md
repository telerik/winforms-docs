---
title: Printing Support
page_title: Printing Support - WinForms Sparkline Control
description: The WinForms Sparkline control supports printing out of the box by the Print or the PrintPreview methods.
slug: radsparkline-printing
tags: sparkline, printing 
published: True
position: 7
---

# Printing

__RadSparkline__ supports printing out of the box. You can use the __Print__ or the __PrintPreview__ to directly print the contents of the Sparkline control.

#### Example 1: Use the PrintPreview Method.

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=Print}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=Print}}
````C#
private void radButton2_Click(object sender, EventArgs e)
{
    radSparkline1.PrintPreview();
}

````
````VB.NET
Private Sub RadButton2_Click(ByVal sender As Object, ByVal e As EventArgs)
    radSparkline1.PrintPreview()
End Sub

````
 

{{endregion}} 