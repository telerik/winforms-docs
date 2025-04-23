---
title: Handling Switch Control in DataGridBooleanColumn for DataGrid in MAUI
description: Learn how to manage Switch control within a DataGridBooleanColumn in MAUI DataGrid without affecting cell selection and editing.
type: how-to
page_title: Use Switch Control in MAUI DataGridBooleanColumn
slug: datagrid-maui-switch-booleancolumn
tags: maui, datagrid, switch, booleancolumn, event handling, cellcontenttemplate
res_type: kb
ticketid: 1684427
---

## Environment
 
| Version | Product | Author | 
| --- | --- | ---- | 
| 10.1.0 | Telerik UI for .NET MAUI DataGrid | [Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev) |

## Description

When using a `DataGridBooleanColumn` with a custom `CellContentTemplate` that includes a `Switch` control, triggering the `Switch` does not call the `SelectionChanged` and `CurrentCellChanged` events as expected. The mouse events are handled by the Switch control. Moreover, setting the `InputTransparent` property of the `Switch` to `true` allows these events to be called but makes the `Switch` non-interactive. 

## Solution

To ensure that the `Switch` control inside the `DataGridBooleanColumn` can both trigger cell selection events (`SelectionChanged` and `CurrentCellChanged`) and remain interactive (toggable), follow these steps:

1. Avoid setting the `InputTransparent` property of the `Switch` to `true`. This keeps the `Switch` interactive.
2. Use the `CellContentTemplate` to include the `Switch` control.
3. Handle the `Switch.Toggled` event to manually set the `CurrentCell` of the DataGrid.
4. Opt out from using the `CellEditTemplate` and prevent the default edit template from appearing by setting `CanUserEdit` to `false`.

Below is the implementation:

````C#

var dgBooleanColumn = new DataGridBooleanColumn
{
    PropertyName = "IsEnabled",
    HeaderText ="Custom Bool Column",
    Width = 50
};

this.dataGrid.Columns.Add(dgBooleanColumn );

var customDataTemplate= new DataTemplate(() =>
{
    var tb = new Switch()
    {
        IsEnabled = true,
        VerticalOptions = LayoutOptions.Center,
        HorizontalOptions = LayoutOptions.Center
    };
    tb.SetBinding(Switch.IsToggledProperty, "IsEnabled");

    tb.Toggled += (sender, e) =>
    {
        var control = sender as Switch;
        if (control.IsFocused)
        {
            var switchBooleanColumn = this.dataGrid.Columns.FirstOrDefault(x => x.HeaderText == "Custom Bool Column");
            if (switchBooleanColumn != null)
            {
                Dispatcher.Dispatch(() =>
                {
                    var cellInfo = new DataGridCellInfo(control.BindingContext, switchBooleanColumn);
                    this.dataGrid.CurrentCell = cellInfo;
                });
            }
        }
    };
    return tb;
});
dgBooleanColumn .CanUserEdit = false;
dgBooleanColumn .CellContentTemplate = customDataTemplate;

````

This solution ensures that the `Switch` control is functional and interacts with the DataGrid's cell selection mechanism as intended.

## See Also

* [MAUI DataGrid Documentation](https://docs.telerik.com/devtools/maui/controls/datagrid/overview)

* [Switch Class](https://docs.microsoft.com/en-us/dotnet/api/xamarin.forms.switch)
