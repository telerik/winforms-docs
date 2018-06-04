---
title: How to give PropertyGrid Label more width than the Editor
description: An example showing how to give the PropertyGrid Label more width than the Editor
type: how-to
page_title: How to give PropertyGrid Label wider than the Editor
slug: 
position: 
tags: PropertyGrid, Customize Layout, UI for Winforms, Winforms
ticketid: 1170230
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product</td>
		<td>Progress® Telerik® UI for WinForms</td>
	</tr>
</table>


## Description
An example showing how to give the PropertyGrid's Label more width than the Editor and vice-versa. By default, the PropertyGrid will use equal spacing for both sides. When the SelectedObject model has long property names or values, it is desired to have one side wider than the other.

## Solution

The RadPropertyGrid has a `BestFit` that by default provides equal spacing to both the Label and the Value. BestFit has one overload that takes a `PropertyGridBestFitMode` parameter that allows you to choose 

Let's use the following example model for the SelectedObject:

```c#
public class MyModel
{
   public bool ReallyLongPropertyNameThatNeedsMoreSpace { get; set; }
}
```
```VB
Public Class MyModel
    Public Property ReallyLongPropertyNameThatNeedsMoreSpace As Boolean
End Class
```

In the form's Load event handler, assign the `SelectedObject` to an instance of `MyModel`.


```C#
private void RadForm1_Load(object sender, EventArgs e)
{
    radPropertyGrid1.SelectedObject = new MyModel();

    // Option 1 - Provide the Label with more width
    radPropertyGrid1.BestFit(PropertyGridBestFitMode.MaximizeLabelColumnVisibility);

    // Option 2 - Provide the Value/Editor side with more width
    // radPropertyGrid1.BestFit(PropertyGridBestFitMode.MaximizeValueColumnVisibility);
}
```
```VB
Private Sub RadForm1_Load(ByVal sender As Object, ByVal e As EventArgs)
    radPropertyGrid1.SelectedObject = New MyModel()
	
	'Option 1 - Provide the Label with more width
    radPropertyGrid1.BestFit(PropertyGridBestFitMode.MaximizeLabelColumnVisibility)
	
	'Option 2 - Provide the Value/Editor side with more width
	'radPropertyGrid1.BestFit(PropertyGridBestFitMode.MaximizeValueColumnVisibility)
End Sub
```


To get  which has one overload that allows you to give more width to one of the sides of the property.

### Default

![dataentry-customize-editor-controls-layout 001](images/propertygrid-bestfit001.png)

### Maximize LabelColumn Visibility

![dataentry-customize-editor-controls-layout 002](images/propertygrid-bestfit002.png)


## See Also

- [RadPropertyGrid Overview] (https://docs.telerik.com/devtools/winforms/propertygrid/overview)
- [RadPropertyGrid Properties, Methods and Events](https://docs.telerik.com/devtools/winforms/propertygrid/properties-methods-events)

