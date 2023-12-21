---
title: Getting Started
page_title: Getting Started - WinForms CheckedDropDownList Control
description: WinForms CheckedDropDownList combines RadDropDownList and RadAutoCompleteBox in order to provide functionality to check items in the drop down area and tokenize them in the text area. 
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/getting-started
tags: getting,started
published: True
position: 3
previous_url: dropdown-and-listcontrol-getting-started
---

# Getting Started with WinForms CheckedDropDownList
 
The following tutorial demonstrates how to populate __RadCheckedDropDownList__ and how to react to a user's choice in code.

>caption Figure 1: Adding items at design time

![WinForms RadCheckedDropDownList Adding Items at Design Time](images/dropdown-and-listcontrol-checkeddropdownlist-getting-started001.png)

1\. Drag __RadCheckedDropDownList__ to a form and click the *Smart Tag*.
            

2\. Click the *Edit Items* button.
            

3\. Add a few items.
            

4\. Check some of them.

5\. In the *Properties* section in Visual Studio select the events button and double click the __ItemCheckedChanged__ event.

6\. Replace the automatically generated event handler with this code:

#### Handling ItemCheckedChanged event

{{source=..\SamplesCS\DropDownListControl\CheckedDropDownList\GettingStarted1.cs region=AddItems}} 
{{source=..\SamplesVB\DropDownListControl\CheckedDropDownList\GettingStarted1.vb region=AddItems}} 

````C#
private void radCheckedDropDownList1_ItemCheckedChanged(object sender, RadCheckedListDataItemEventArgs e)
{
      RadMessageBox.Show(" Item >> " + e.Item.Text + " Checked state >> " + e.Item.Checked);
}

````
````VB.NET
Private Sub radCheckedDropDownList1_ItemCheckedChanged(sender As Object, e As RadCheckedListDataItemEventArgs)
    RadMessageBox.Show(" Item >> " + e.Item.Text + " Checked state >> " + e.Item.Checked)
End Sub

````

>caption Figure 2: Handling ItemCheckedChanged

![WinForms RadCheckedDropDownList Handling ItemCheckedChanged](images/dropdown-and-listcontrol-checkeddropdownlist-getting-started002.png)

# See Also

* [Structure]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure%})
* [Design Time]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/design-time%})
* [How to Order the Tokens Based on the Items Collection]({%slug tokens-order-in-checkeddropdownlist%})

## Telerik UI for WinForms Learning Resources
* [Telerik UI for WinForms CheckedDropDownList Component](https://www.telerik.com/products/winforms/checkeddropdownlist.aspx)
* [Getting Started with Telerik UI for WinForms Components](https://docs.telerik.com/devtools/winforms/getting-started/first-steps)
* [Telerik UI for WinForms Setup](https://docs.telerik.com/devtools/winforms/installation-and-upgrades/installing-on-your-computer)
* [Telerik UI for WinForms Application Modernization](https://docs.telerik.com/devtools/winforms/winforms-converter/overview)
* [Telerik UI for WinForms Visual Studio Templates](https://docs.telerik.com/devtools/winforms/visual-studio-integration/visual-studio-templates)
* [Deploy Telerik UI for WinForms Applications](https://docs.telerik.com/devtools/winforms/deployment-and-distribution/application-deployment)
* [Telerik UI for WinForms Virtual Classroom(Training Courses for Registered Users)](https://learn.telerik.com/learn/course/external/view/elearning/17/telerik-ui-for-winforms)
* [Telerik UI for WinForms License Agreement)](https://www.telerik.com/purchase/license-agreement/winforms-dlw-s)

