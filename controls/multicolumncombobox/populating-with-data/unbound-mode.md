---
title: Unbound Mode
page_title: Unbound Mode - WinForms MultiColumnComboBox Control
description: WinForms MultiColumnComboBox supports unbound mode allowing to add columns and rows programmatically.
slug: winforms/multicolumncombobox/unbound-mode
tags: databinding
published: True
position: 1 
---

# Unbound Mode

**RadMultiColumnComboBox** supports unbound mode allowing to add columns and rows programmatically.

#### Unbound mode

{{source=..\SamplesCS\MultiColumnComboBox\MCCBgettingStarted.cs region=UnboundMode}} 
{{source=..\SamplesVB\MultiColumnComboBox\MCCBgettingStarted.vb region=UnboundMode}} 

````C#
this.radMultiColumnComboBox1.MultiColumnComboBoxElement.Columns.Add("Name");
this.radMultiColumnComboBox1.MultiColumnComboBoxElement.Columns.Add("Id");
            
for (int i = 0; i < 10; i++)
{
    this.radMultiColumnComboBox1.EditorControl.Rows.Add("Item" + i, i);
}

````
````VB.NET
Me.radMultiColumnComboBox1.MultiColumnComboBoxElement.Columns.Add("Name")
Me.radMultiColumnComboBox1.MultiColumnComboBoxElement.Columns.Add("Id")
For i As Integer = 0 To 9
    Me.RadMultiColumnComboBox1.EditorControl.Rows.Add("Item" & i, i)
Next

````

{{endregion}} 

>caption Figure 1: Unbound mode

![multicolumncombobox-unbound-mode 001](images/multicolumncombobox-unbound-mode001.png)


# See Also

* [Data Binding]({%slug winforms/multicolumncombobox/databinding%})	