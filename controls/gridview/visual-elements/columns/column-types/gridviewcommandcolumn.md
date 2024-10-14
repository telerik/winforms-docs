---
title: GridViewCommandColumn
page_title: GridViewCommandColumn - WinForms GridView Control
description: WinForms GridViewCommandColumn displays a button element that responds to user input mouse clicks and keyboard key presses.
slug: winforms/gridview/columns/column-types/gridviewcommandcolumn
tags: gridviewcommandcolumn
published: True
position: 7
previous_url: gridview-columns-gridviewcommandcolumn
---

# GridViewCommandColumn

__GridViewCommandColumn__ displays a button element that responds to user input mouse clicks and keyboard key presses. Either mouse click or keyboard input fires the __CommandCommandCellClick__ event. The button text can be supplied through the column __FieldName__ property values or by the column __DefaultText__ property. To display the same button text for every cell, set the __UseDefaultText__ property to *true* and the __DefaultText__ property to the value you want displayed in the button. __UseDefaultText__ is *false* by default. __GridViewCommandColumn__ inherits from __GridViewDataColumn.__

The example below creates two __GridViewCommandColumns__. The first has __UseDefaultText__ set to  *false* and so displays the __FieldName__ value for "ProductName" in the button text. The second has the __UseDefaultText__ property set to *true* and the __DefaultText__ property set to "Order". In both cases the RadGridView.__CommandCellClick__ reacts to a mouse click, casts "sender" to be __GridCommandCellElement__ and makes use of the __Value__ property.

![WinForms RadGridView GridViewCommandColumn](images/gridview-columns-gridviewcommandcolumn001.png)

#### Add GridViewCommandColumn to the grid.

{{source=..\SamplesCS\GridView\Columns\GridViewCommandColumn1.cs region=addCommandColumn}} 
{{source=..\SamplesVB\GridView\Columns\GridViewCommandColumn1.vb region=addCommandColumn}} 

````C#
public GridViewCommandColumn1()
{
    InitializeComponent();
    GridViewCommandColumn commandColumn = new GridViewCommandColumn();
    commandColumn.Name = "CommandColumn";
    commandColumn.UseDefaultText = false;
    commandColumn.FieldName = "ProductName";
    commandColumn.HeaderText = "Order";
    radGridView1.MasterTemplate.Columns.Add(commandColumn);
    GridViewCommandColumn commandColumn2 = new GridViewCommandColumn();
    commandColumn2.Name = "CommandColumn2";
    commandColumn2.UseDefaultText = true;
    commandColumn2.DefaultText = "Order";
    commandColumn2.FieldName = "ProductName";
    commandColumn2.HeaderText = "Order";
    radGridView1.MasterTemplate.Columns.Add(commandColumn2);
    radGridView1.CommandCellClick += new CommandCellClickEventHandler(radGridView1_CommandCellClick);
}
void radGridView1_CommandCellClick(object sender, EventArgs e)
{
    MessageBox.Show("You ordered " + ((sender as GridCommandCellElement)).Value);
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Dim commandColumn As New GridViewCommandColumn()
    commandColumn.Name = "CommandColumn"
    commandColumn.UseDefaultText = False
    commandColumn.FieldName = "ProductName"
    commandColumn.HeaderText = "Order"
    RadGridView1.MasterTemplate.Columns.Add(commandColumn)
    Dim commandColumn2 As New GridViewCommandColumn()
    commandColumn2.Name = "CommandColumn2"
    commandColumn2.UseDefaultText = True
    commandColumn2.DefaultText = "Order"
    commandColumn2.FieldName = "ProductName"
    commandColumn2.HeaderText = "Order"
    RadGridView1.MasterTemplate.Columns.Add(commandColumn2)
    AddHandler RadGridView1.CommandCellClick, AddressOf radGridView1_CommandCellClick
End Sub
Sub radGridView1_CommandCellClick(ByVal sender As Object, ByVal e As EventArgs)
    MessageBox.Show("You ordered " + ((TryCast(sender, GridCommandCellElement))).Value)
End Sub

````

{{endregion}} 

## Buttons Styles

You can use the __Image__ and __TextImageRelation__ properties of the **GridViewCommandColumn** in order to set the image for all buttons in the grid. 

The following article shows how you can access the buttons in the **CellFormating** event and change their styles: [Formatting GridViewCommandColumn]({%slug winforms/gridview/cells/formatting-command-column%}).

# See Also
* [GridViewBrowseColumn]({%slug winforms/gridview/columns/column-types/gridviewbrowsecolumn%})

* [GridViewCalculatorColumn]({%slug winforms/gridview/columns/column-types/gridviewcalculatorcolumn%})

* [GridViewCheckBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcheckboxcolumn%})

* [GridViewColorColumn]({%slug winforms/gridview/columns/column-types/gridviewcolorcolumn%})

* [GridViewComboBoxColumn]({%slug winforms/gridview/columns/column-types/gridviewcomboboxcolumn%})

* [GridViewDateTimeColumn]({%slug winforms/gridview/columns/column-types/gridviewdatetimecolumn%})

* [GridViewDecimalColumn]({%slug winforms/gridview/columns/column-types/gridviewdecimalcolumn%})

* [GridViewHyperlinkColumn]({%slug winforms/gridview/columns/column-types/gridviewhyperlinkcolumn%})

* [GridViewSparklineColumn]({%slug gridview-columntypes-sparklinecolumn%})

* [How to Filter GridViewCommandColumn in RadGridView]({%slug filter-commandcolumn-in-gridview%})

