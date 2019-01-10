---
title: Customizing Items
page_title: Customizing Items | RadListControl
description: RadListControl is the an alternative to the Microsoft ListBox control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance)
tags: customizing,items,(visual,appearance)
published: True
position: 9
previous_url: dropdown-and-listcontrol-listcontrol-customizing-items-(visual-appearance)
---

# Customizing Items

You can use the __ItemDataBound__ event to change item content based on the data that is bound to each item. The __ListItemDataBoundEventArgs__ include properties for the native __DataBoundItem__ (a DataRowView object, which provides access to the entire row being bound) and the data item of __RadListControl__. In the example below the __DisplayName__ property is set to *"FirstName"*. Two other columns, *"FirstName"* and *"TitleOfCourtesy"*, are pre-pended to the data list item.

With the introduction of the [HTML-like text rendering feature]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}), Telerik Presentation Framework increased the level of the available customizations that you can apply. That said, you are able to use this feature to indicate different roles of different parts of the __Text__ property value.

The aim of this article is to demonstrate how you can achieve to look shown below. As you can see we have three different parts of the text: *TitleOfCourtesy*, *FullName*(*FirstName* + *LastName*) and *Title*. For the purposes of the example, we are going to add an image as well.

>caption Figure 1: Customizing Items

![dropdown-and-listcontrol-listcontrol-customizing-items-visual-appearance 001](images/dropdown-and-listcontrol-listcontrol-customizing-items-visual-appearance001.png)

1\. Handle the __ItemDataBound__ event to fill the data list items with custom data. 

#### Handling the ItemDataBound event 

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=itemDataBound}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=itemDataBound}} 

````C#
void radListControl1_ItemDataBound(object sender, ListItemDataBoundEventArgs args)
{
    DataRowView view = (DataRowView)args.NewItem.DataBoundItem;
    args.NewItem.Text = "<html><b>" + view["TitleOfCourtesy"] + "</b>" +
        " " + view["FirstName"] +
        " " + view["LastName"] +
        "<br><i>" + view["Title"];
    NwindDataSet.EmployeesRow row = view.Row as NwindDataSet.EmployeesRow;
    args.NewItem.Image = GetImageFromData(row.Photo);
}

````
````VB.NET
Private Sub radListControl1_ItemDataBound(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.ListItemDataBoundEventArgs)
    Dim view As DataRowView = CType(args.NewItem.DataBoundItem, DataRowView)
    args.NewItem.Text = "<html><b>" & view("TitleOfCourtesy") & "</b>" & " " & view("FirstName") & " " & view("LastName") & "<br><i>" & view("Title")
    Dim row As NwindDataSet.EmployeesRow = TryCast(view.Row, NwindDataSet.EmployeesRow)
    args.NewItem.Image = GetImageFromData(row.Photo)
End Sub

````

{{endregion}} 


#### Image helper method 

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=getImageData}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=getImageData}} 

````C#
private bool HasOleContainerHeader(byte[] imageByteArray)
{
    const byte OleByte0 = 21;
    const byte OleByte1 = 28;
    return (imageByteArray[0] == OleByte0) && (imageByteArray[1] == OleByte1);
}
private Image GetImageFromData(byte[] imageData)
{
    const int OleHeaderLength = 78;
    MemoryStream memoryStream = new MemoryStream();
    if (HasOleContainerHeader(imageData))
    {
        memoryStream.Write(imageData, OleHeaderLength, imageData.Length - OleHeaderLength);
    }
    else
    {
        memoryStream.Write(imageData, 0, imageData.Length);
    }
    Bitmap bitmap = new Bitmap(memoryStream);
    return bitmap.GetThumbnailImage(55, 65, null, new IntPtr());
}

````
````VB.NET
Private Function HasOleContainerHeader(ByVal imageByteArray As Byte()) As Boolean
    Const OleByte0 As Byte = 21
    Const OleByte1 As Byte = 28
    Return (imageByteArray(0) = OleByte0) AndAlso (imageByteArray(1) = OleByte1)
End Function
Private Function GetImageFromData(ByVal imageData As Byte()) As Image
    Const OleHeaderLength As Integer = 78
    Dim memoryStream As MemoryStream = New MemoryStream()
    If HasOleContainerHeader(imageData) Then
        memoryStream.Write(imageData, OleHeaderLength, imageData.Length - OleHeaderLength)
    Else
        memoryStream.Write(imageData, 0, imageData.Length)
    End If
    Dim bitmap As Bitmap = New Bitmap(memoryStream)
    Return bitmap.GetThumbnailImage(55, 65, Nothing, New IntPtr())
End Function

````

{{endregion}} 

2\. Since the *&lt; br &gt;* tag will split the __Text__ value in different lines, it is essential to set the __AutoSizeItems__ of RadListControl to *true*:
        	
#### Setting AutoSizeItems 

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=autoSizeItems}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=autoSizeItems}} 

````C#
this.radListControl1.AutoSizeItems = true;

````
````VB.NET
Me.radListControl1.AutoSizeItems = True

````

{{endregion}} 
 

3\. Should you want to have apply some padding to the visual items, you should do it on CreatingVisualListItem event: 

#### Applying Padding to the visual list items 

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=creatingVisualListItem}} 
{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=creatingVisualListItem}} 

````C#
void radListControl1_CreatingVisualListItem(object sender, CreatingVisualListItemEventArgs args)
{
    RadListVisualItem visualItem = new RadListVisualItem();
    visualItem.Padding = new Padding(5, 5, 0, 5);
    args.VisualItem = visualItem;
}

````
````VB.NET
Private Sub radListControl1_CreatingVisualListItem(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.CreatingVisualListItemEventArgs)
    Dim visualItem As RadListVisualItem = New RadListVisualItem()
    visualItem.Padding = New Padding(5, 5, 0, 5)
    args.VisualItem = visualItem
End Sub

````

{{endregion}} 



