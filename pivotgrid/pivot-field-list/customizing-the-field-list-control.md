---
title: Customizing the Field List Control
page_title: Customizing the Field List Control | UI for WinForms Documentation
description: Customizing the Field List Control
slug: winforms/pivotgrid/pivot-field-list/customizing-the-field-list-control
tags: customizing,radpivotfieldlist 
published: True
position: 1
---

## Visual Field Manipulation

__RadPivotFieldList__ internally contains a __RadTreeView__ built with nodes coming from the data source object as fields. The tree can be easily accessed and its elements modified.

#### Sorting the Nodes

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=SortTree}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=SortTree}}
````C#
this.radPivotFieldList1.FieldsControl.SortOrder = System.Windows.Forms.SortOrder.Ascending;

````
````VB.NET
```` 



{{endregion}}

#### Hiding Nodes

The nodes in the pivot field list are built dynamically so in order to hide a particular node and persist the changes we would need to handle the __UpdateCompleted__ event.

{{source=..\SamplesCS\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.cs region=SubscribeToUpdateCompleted}} 
{{source=..\SamplesVB\PivotGrid\PivotFieldList\PivotGridFieldListCustomizations.vb region=SubscribeToUpdateCompleted}}
````C#
this.radPivotGrid1.UpdateCompleted += radPivotGrid1_UpdateCompleted;

````
````VB.NET
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
```` 



{{endregion}}

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
```` 



{{endregion}}

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
```` 



{{endregion}}