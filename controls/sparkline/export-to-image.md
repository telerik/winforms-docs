---
title: Export to Image
page_title: RadSparkline Export to Image
description: The Sparkline control is an information graphic, which is characterized by small size, excellent performance
slug: radsparkline-export-to-image
tags: sparkline
published: True
position: 8
---

# Export to Image
__RadSparkline__ supports exporting to image out of the box. This can be achieved by the __ExportToImage__ method. This method allows to export the image directly to an file or a stream. You an specify the image size as well.

# Example 1: Export to a File

{{source=..\SamplesCS\Sparkline\SparklineCode.cs region=Export}} 
{{source=..\SamplesVB\Sparkline\SparklineCode.vb region=Export}}
````C#
private void RadButton1_Click(object sender, EventArgs e)
{
    radSparkline1.ExportToImage(@"D:\MySpark1.png", new Size(200, 200));
}

````
````VB.NET
Private Sub RadButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    radSparkline1.ExportToImage("D:\MySpark1.png", New Size(200, 200))
End Sub

````
 

{{endregion}} 