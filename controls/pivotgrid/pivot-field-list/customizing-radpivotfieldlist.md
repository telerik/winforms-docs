---
title: Customizing RadPivotFieldList
page_title: Customizing RadPivotFieldList - RadPivotFieldList
description: RadPivotFieldList can be customized by accessing the elements building its controls or by handling events and define which fields to be extracted and displayed.
slug: winforms/pivotgrid/pivot-field-list/customizing-radpivotfieldList
tags: customizing,radpivotfieldlist 
published: True
position: 1
---

# Customizing RadPivotFieldList

**RadPivotFieldList** can be customized by accessing the elements building its controls or by handling events and define which fields to be extracted and displayed.

## Visual Field Manipulation

__RadPivotFieldList__ internally contains a __RadTreeView__ built with nodes coming from the data source object as fields. The tree can be easily accessed and its elements modified.

| Before Sorting | After Sorting |
| ------ | ------ |
|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 004](images/pivotgrid-radpivotfieldlist004.png)|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 005](images/pivotgrid-radpivotfieldlist005.png)|

#### Sorting the Nodes

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=SortTree}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=SortTree}}
````C#
this.radPivotFieldList1.FieldsControl.SortOrder = System.Windows.Forms.SortOrder.Ascending;

````
````VB.NET
Me.RadPivotFieldList1.FieldsControl.SortOrder = System.Windows.Forms.SortOrder.Descending

```` 



{{endregion}}

| Before Hiding | After Hiding |
| ------ | ------ |
|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 006](images/pivotgrid-radpivotfieldlist006.png)|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 007](images/pivotgrid-radpivotfieldlist007.png)|

#### Hiding Nodes

The nodes in the pivot field list are built dynamically so in order to hide a particular node and persist the changes we would need to handle the __UpdateCompleted__ event.

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=SubscribeToUpdateCompleted}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=SubscribeToUpdateCompleted}}
````C#
this.radPivotGrid1.UpdateCompleted += radPivotGrid1_UpdateCompleted;

````
````VB.NET
AddHandler Me.RadPivotGrid1.UpdateCompleted, AddressOf RadPivotGrid1_UpdateCompleted

```` 



{{endregion}}

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=HandleUpdateCompleted}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=HandleUpdateCompleted}}
````C#
private void radPivotGrid1_UpdateCompleted(object sender, EventArgs e)
{
    RadTreeNode promotionField = this.radPivotFieldList1.FieldsControl.Nodes.Where(n => n.Text == "Promotion").FirstOrDefault();
    if (promotionField != null)
    {
        promotionField.Visible = false;
    }
}

````
````VB.NET
Private Sub RadPivotGrid1_UpdateCompleted(sender As Object, e As EventArgs)
    Dim promotionField As RadTreeNode = Me.RadPivotFieldList1.FieldsControl.Nodes.Where(Function(n) n.Text = "Promotion").FirstOrDefault()
    If promotionField IsNot Nothing Then
        promotionField.Visible = False
    End If
End Sub

```` 



{{endregion}}

## Remove Fields Logically

In the case of a [LocalSourceDataProvider]({%slug winforms/pivotgrid/populating-with-data/using-the-localsourcedataprovider%}) object used to populate the items in __RadPivotGrid__, the nodes can be manipulated by handling the __AddingContainerNode__ and __GetDescriptionsDataAsyncCompleted__ events.

#### Setup the Providers

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=SetupProviders}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=SetupProviders}}
````C#
this.provider = new LocalDataSourceProvider() { ItemsSource = this.orders };
LocalDataSourceFieldDescriptionsProvider descriptionProvider = new LocalDataSourceFieldDescriptionsProvider();
descriptionProvider.AddingContainerNode += descriptionProvider_AddingContainerNode;
descriptionProvider.GetDescriptionsDataAsyncCompleted += descriptionProvider_GetDescriptionsDataAsyncCompleted;
this.provider.FieldDescriptionsProvider = descriptionProvider;

````
````VB.NET
Me.provider = New LocalDataSourceProvider() With {.ItemsSource = orders}
Dim descriptionProvider As LocalDataSourceFieldDescriptionsProvider = New LocalDataSourceFieldDescriptionsProvider()
AddHandler descriptionProvider.AddingContainerNode, AddressOf descriptionProvider_AddingContainerNode
AddHandler descriptionProvider.GetDescriptionsDataAsyncCompleted, AddressOf descriptionProvider_GetDescriptionsDataAsyncCompleted
Me.provider.FieldDescriptionsProvider = descriptionProvider

```` 



{{endregion}}

| Before Canceling | After Canceling |
| ------ | ------ |
|![pivotgrid-radpivotfieldlist 006](images/pivotgrid-radpivotfieldlist006.png)|![pivotgrid-radpivotfieldlist 007](images/pivotgrid-radpivotfieldlist007.png)|

#### Cancel Adding a Particular Node

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=HandleAddingContainerNode}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=HandleAddingContainerNode}}
````C#
private void descriptionProvider_AddingContainerNode(object sender, ContainerNodeEventArgs e)
{
    if (e.ContainerNode.Name == "Promotion")
    {
        e.Cancel = true;
    }
}

````
````VB.NET
Private Sub descriptionProvider_AddingContainerNode(sender As Object, e As ContainerNodeEventArgs)
    If e.ContainerNode.Name = "Promotion" Then
        e.Cancel = True
    End If
End Sub

```` 



{{endregion}}

| Before Removing | After Removing |
| ------ | ------ |
|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 008](images/pivotgrid-radpivotfieldlist008.png)|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 009](images/pivotgrid-radpivotfieldlist009.png)|

#### Remove a Child Date Node

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=HandleGetDescriptionsDataAsyncCompleted}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=HandleGetDescriptionsDataAsyncCompleted}}
````C#
private void descriptionProvider_GetDescriptionsDataAsyncCompleted(object sender, GetDescriptionsDataCompletedEventArgs e)
{
    ContainerNode dateNode = e.DescriptionsData.RootFieldInfo.Children.Where(n => n.Name == "Date").FirstOrDefault();
    if (dateNode != null)
    {
        FieldInfoNode yearNode = dateNode.Children.Where(n => n.Name == "Date.Year").FirstOrDefault() as FieldInfoNode;
        if (yearNode != null)
        {
            dateNode.Children.Remove(yearNode);
        }
    }
}

````
````VB.NET
Private Sub descriptionProvider_GetDescriptionsDataAsyncCompleted(sender As Object, e As GetDescriptionsDataCompletedEventArgs)
    Dim dateNode As ContainerNode = e.DescriptionsData.RootFieldInfo.Children.Where(Function(n) n.Name = "Date").FirstOrDefault()
    If dateNode IsNot Nothing Then
        Dim yearNode As FieldInfoNode = TryCast(dateNode.Children.Where(Function(n) n.Name = "Date.Year").FirstOrDefault(), FieldInfoNode)
        If yearNode IsNot Nothing Then
            dateNode.Children.Remove(yearNode)
        End If
    End If
End Sub

```` 



{{endregion}}

## Formatting nodes

The nodes within the **RadPivotFieldList** can be formatted. You can easily format node elements by handling the **NodeFormatting** event as follows:

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=SubscribeToNodeFormatting}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=SubscribeToNodeFormatting}}
````C#
this.radPivotFieldList1.FieldsControl.NodeFormatting += this.FieldsControl_NodeFormatting;

````
````VB.NET
AddHandler Me.RadPivotFieldList1.FieldsControl.NodeFormatting, AddressOf FieldsControl_NodeFormatting

````

{{endregion}}

Then, introduce the desired customizations to NodeElements:

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=NodeFormatting}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=NodeFormatting}}
````C#
private void FieldsControl_NodeFormatting(object sender, TreeNodeFormattingEventArgs e)
{
    if (e.Node.Text == "Product")
    {
        e.NodeElement.ContentElement.Text = "Custom Product";
    }
    if (e.Node.CheckState == Telerik.WinControls.Enumerations.ToggleState.On)
    {
        e.NodeElement.ContentElement.ForeColor = Color.Red;
        e.Node.BackColor = Color.LightGray;
        e.Node.GradientStyle = GradientStyles.Solid;
    }
    else
    {
        e.NodeElement.ContentElement.ResetValue(LightVisualElement.ForeColorProperty, ValueResetFlags.Local);
        e.NodeElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local);
        e.NodeElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local);
    }
}

````
````VB.NET
Private Sub FieldsControl_NodeFormatting(sender As Object, e As TreeNodeFormattingEventArgs)
    If e.Node.Text = "Product" Then
        e.NodeElement.ContentElement.Text = "Custom Product"
    End If

    If e.Node.CheckState = Telerik.WinControls.Enumerations.ToggleState.[On] Then
        e.NodeElement.ContentElement.ForeColor = Color.Red
        e.Node.BackColor = Color.LightGray
        e.Node.GradientStyle = GradientStyles.Solid
    Else
        e.NodeElement.ContentElement.ResetValue(LightVisualElement.ForeColorProperty, ValueResetFlags.Local)
        e.NodeElement.ResetValue(LightVisualElement.BackColorProperty, ValueResetFlags.Local)
        e.NodeElement.ResetValue(LightVisualElement.GradientStyleProperty, ValueResetFlags.Local)
    End If
End Sub

````

{{endregion}}

|![WinForms RadPivotGrid pivotgrid-radpivotfieldlist 010](images/pivotgrid-radpivotfieldlist010.png)

>note Please note that you should always provide an 'else' clause in the **NodeFormatting** event where you should reset all of the introduced customizations. More information is available [here](https://docs.telerik.com/devtools/winforms/controls/treeview/working-with-nodes/formatting-nodes). 
>


# See Also

* [RadPivotFieldList Overview]({%slug winforms/pivotgrid/pivot-field-list/radpivotfieldlist%})
