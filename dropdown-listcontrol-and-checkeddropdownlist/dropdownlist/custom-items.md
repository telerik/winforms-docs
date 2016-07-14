---
title: Custom Items
page_title: Custom Items | UI for WinForms Documentation
description: RadDropDownList is an enhanced alternative to the standard Windows Forms combo box control.
slug: winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/custom-items
tags: custom,items
published: True
position: 8
previous_url: dropdown-and-listcontrol-dropdownlist-customizing-items
---

# Custom Items
 
By default, __RadDropDownList__ displays text and image in its drop-down items. However, the default layout might not be suitable for you, and in this case you can use the flexible mechanism it features for creating visual items with custom content elements, functionality and properties.

This article demonstrates how to display detailed information for each employee from the Northwind.__Employees__ table which is used as data source.

>caption Figure 1: Custom visual items

![dropdown-and-listcontrol-dropdownlist-customizing-items 003](images/dropdown-and-listcontrol-dropdownlist-customizing-items003.png)

1\. Create a class that inherits from __RadListVisualItem__. Override its __CreateChildElements__ method where you can add the desired content elements. The custom item will have no styles, because there are no defined styles for its type in the themes. You can apply the __RadListVisualItem__’s styles to it by defining its __ThemeEffectiveType__.

2\. Override the __Synchronize__ method in order to match the displayed data in the content elements with the respective __DataBoundItem__. As the *“Photo”* column in the Northwind.__Employees__ table contains a byte array, we should convert it to *Image*:

#### Custom RadListVisualItem 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListCustomItems.cs region=CustomVisualItem}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListCustomItems.vb region=CustomVisualItem}} 

````C#
        
public class CustomVisualItem : RadListVisualItem
{
    Font boldFont = new Font("Arial",10f, FontStyle.Bold);
    Font italicFont = new Font("Arial",10f, FontStyle.Italic);
    DockLayoutPanel mainContainer;
    StackLayoutElement leftColumn;
    StackLayoutElement rightColumn;
    LightVisualElement titleElement;
    LightVisualElement photoElement;
    LightVisualElement nameElement;
    LightVisualElement addressElement;
    LightVisualElement phoneElement;
    
    protected override Type ThemeEffectiveType     
    { 
        get    
        { 
            return typeof(RadListVisualItem);     
        }
    }
    
    protected override void CreateChildElements()
    {
        base.CreateChildElements(); 
        
        mainContainer = new DockLayoutPanel();
        leftColumn = new StackLayoutElement();
        rightColumn = new StackLayoutElement();
        titleElement = new LightVisualElement();
        photoElement = new LightVisualElement();
        nameElement = new LightVisualElement();
        addressElement = new LightVisualElement();
        phoneElement = new LightVisualElement();
        
        this.Children.Add(mainContainer);
        mainContainer.LastChildFill = true;
        
        leftColumn.Orientation = Orientation.Vertical;
        leftColumn.Children.Add(photoElement);
        photoElement.DrawBorder = true;
        
        rightColumn.Orientation = Orientation.Vertical;
        rightColumn.Children.Add(nameElement);
        nameElement.Font = boldFont;
        rightColumn.Children.Add(addressElement);
        rightColumn.Children.Add(phoneElement);
        rightColumn.Children.Add(titleElement);
        titleElement.DrawBorder = true;
        titleElement.Font = italicFont;
        titleElement.BorderBoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders;
        titleElement.BorderLeftWidth = 0;
        titleElement.BorderTopWidth = 1;
        titleElement.BorderRightWidth = 0;
        titleElement.BorderBottomWidth = 0;
        
        mainContainer.Children.Add(leftColumn);
        mainContainer.Children.Add(rightColumn);  
        DockLayoutPanel.SetDock(leftColumn, Telerik.WinControls.Layouts.Dock.Left);
        DockLayoutPanel.SetDock(rightColumn, Telerik.WinControls.Layouts.Dock.Right);
        leftColumn.NotifyParentOnMouseInput = true;
        rightColumn.NotifyParentOnMouseInput = true;
        titleElement.NotifyParentOnMouseInput = true;
        photoElement.NotifyParentOnMouseInput = true;
        nameElement.NotifyParentOnMouseInput = true;
        addressElement.NotifyParentOnMouseInput = true;
        phoneElement.NotifyParentOnMouseInput = true;
    }
    
    public override void Synchronize()
    {
        base.Synchronize();
        this.Text = string.Empty;
        DataRowView rowView = this.Data.DataBoundItem as DataRowView;
        if (rowView != null)
        {
            this.photoElement.Image = GetImageFromData(rowView.Row["Photo"] as byte[]);
            this.titleElement.Text = rowView.Row["Title"].ToString();
            this.nameElement.Text = rowView.Row["FirstName"].ToString() + " " + rowView.Row["LastName"].ToString();
            this.addressElement.Text = "Address: " + rowView.Row["Address"].ToString().Replace(System.Environment.NewLine, " ");
            this.phoneElement.Text = "Phone: " + rowView.Row["HomePhone"].ToString();
        }
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
    
    private bool HasOleContainerHeader(byte[] imageByteArray)
    {
        const byte OleByte0 = 21;
        const byte OleByte1 = 28;
        return (imageByteArray[0] == OleByte0) && (imageByteArray[1] == OleByte1);
    }
}

````
````VB.NET
    
Public Class CustomVisualItem
Inherits RadListVisualItem
    Private boldFont As Font
    Private italicFont As Font
    Private mainContainer As DockLayoutPanel
    Private leftColumn As StackLayoutElement
    Private rightColumn As StackLayoutElement
    Private titleElement As LightVisualElement
    Private photoElement As LightVisualElement
    Private nameElement As LightVisualElement
    Private addressElement As LightVisualElement
    Private phoneElement As LightVisualElement
    Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
        Get
            Return GetType(RadListVisualItem)
        End Get
    End Property
    Protected Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        boldFont = New Font("Arial", 10.0F, FontStyle.Bold)
        italicFont = New Font("Arial", 10.0F, FontStyle.Italic)
        mainContainer = New DockLayoutPanel()
        leftColumn = New StackLayoutElement()
        rightColumn = New StackLayoutElement()
        titleElement = New LightVisualElement()
        photoElement = New LightVisualElement()
        nameElement = New LightVisualElement()
        addressElement = New LightVisualElement()
        phoneElement = New LightVisualElement()
        Me.Children.Add(mainContainer)
        mainContainer.LastChildFill = True
        leftColumn.Orientation = Orientation.Vertical
        leftColumn.Children.Add(photoElement)
        photoElement.DrawBorder = True
        rightColumn.Orientation = Orientation.Vertical
        rightColumn.Children.Add(nameElement)
        nameElement.Font = boldFont
        rightColumn.Children.Add(addressElement)
        rightColumn.Children.Add(phoneElement)
        rightColumn.Children.Add(titleElement)
        titleElement.DrawBorder = True
        titleElement.Font = italicFont
        titleElement.BorderBoxStyle = Telerik.WinControls.BorderBoxStyle.FourBorders
        titleElement.BorderLeftWidth = 0
        titleElement.BorderTopWidth = 1
        titleElement.BorderRightWidth = 0
        titleElement.BorderBottomWidth = 0
        mainContainer.Children.Add(leftColumn)
        mainContainer.Children.Add(rightColumn)
        DockLayoutPanel.SetDock(leftColumn, Telerik.WinControls.Layouts.Dock.Left)
        DockLayoutPanel.SetDock(rightColumn, Telerik.WinControls.Layouts.Dock.Right)
        leftColumn.NotifyParentOnMouseInput = True
        rightColumn.NotifyParentOnMouseInput = True
        titleElement.NotifyParentOnMouseInput = True
        photoElement.NotifyParentOnMouseInput = True
        nameElement.NotifyParentOnMouseInput = True
        addressElement.NotifyParentOnMouseInput = True
        phoneElement.NotifyParentOnMouseInput = True
    End Sub
    Public Overrides Sub Synchronize()
        MyBase.Synchronize()
        Me.Text = String.Empty
        Dim rowView As DataRowView = TryCast(Me.Data.DataBoundItem, DataRowView)
        If rowView IsNot Nothing Then
            Me.photoElement.Image = GetImageFromData(TryCast(rowView.Row("Photo"), Byte()))
            Me.titleElement.Text = rowView.Row("Title").ToString()
            Me.nameElement.Text = rowView.Row("FirstName").ToString() & " " & rowView.Row("LastName").ToString()
            Me.addressElement.Text = "Address: " & rowView.Row("Address").ToString().Replace(System.Environment.NewLine, " ")
            Me.phoneElement.Text = "Phone: " & rowView.Row("HomePhone").ToString()
        End If
    End Sub
    Private Function GetImageFromData(imageData As Byte()) As Image
        Const OleHeaderLength As Integer = 78
        Dim memoryStream As New MemoryStream()
        If HasOleContainerHeader(imageData) Then
            memoryStream.Write(imageData, OleHeaderLength, imageData.Length - OleHeaderLength)
        Else
            memoryStream.Write(imageData, 0, imageData.Length)
        End If
        Dim bitmap As New Bitmap(memoryStream)
        Return bitmap.GetThumbnailImage(55, 65, Nothing, New IntPtr())
    End Function
    Private Function HasOleContainerHeader(imageByteArray As Byte()) As Boolean
        Const OleByte0 As Byte = 21
        Const OleByte1 As Byte = 28
        Return (imageByteArray(0) = OleByte0) AndAlso (imageByteArray(1) = OleByte1)
    End Function
End Class

````

{{endregion}} 

3\. Subscribe to the __CreatingVisualListItem__ event before populating the __RadDropDownList__ with data and replace the default item with your custom one:

#### Custom RadListVisualItem 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListCustomItems.cs region=ReplaceItem}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListCustomItems.vb region=ReplaceItem}} 

````C#
        
private void radDropDownList1_CreatingVisualListItem(object sender, Telerik.WinControls.UI.CreatingVisualListItemEventArgs args)
{
    args.VisualItem = new CustomVisualItem();
}

````
````VB.NET
Private Sub radDropDownList1_CreatingVisualListItem(sender As Object, args As Telerik.WinControls.UI.CreatingVisualListItemEventArgs)
    args.VisualItem = New CustomVisualItem()
End Sub

````

{{endregion}} 
 
4\. The last thing we need to do is to set the RadDropDownList.__AutoSizeItems__ property to *false* and specify the __ItemHeight__:

#### Custom RadListVisualItem 

{{source=..\SamplesCS\DropDownListControl\DropDownList\DropDownListCustomItems.cs region=AdjustHeight}} 
{{source=..\SamplesVB\DropDownListControl\DropDownList\DropDownListCustomItems.vb region=AdjustHeight}} 

````C#
            
this.radDropDownList1.AutoSizeItems = false;
this.radDropDownList1.DropDownListElement.ListElement.ItemHeight = 90;

````
````VB.NET
Me.RadDropDownList1.AutoSizeItems = False
Me.RadDropDownList1.DropDownListElement.ListElement.ItemHeight = 90

````

{{endregion}} 



