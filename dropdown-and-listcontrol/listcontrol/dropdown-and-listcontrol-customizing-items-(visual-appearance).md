---
title: Customizing Items (visual appearance)
page_title: Customizing Items (visual appearance)
description: Customizing Items (visual appearance)
slug: dropdown-and-listcontrol-listcontrol-customizing-items-(visual-appearance)
tags: customizing,items,(visual,appearance)
published: True
position: 5
---

# Customizing Items (visual appearance)



## 

You can use the __ItemDataBound__ event to change item content based on the data that is bound to each item. The __ListItemDataBoundEventArgs__ include properties for the native DataBoundItem (a DataRowView object, which provides access to the entire row being bound) and the data item of RadListControl. In the example below the DisplayName property is "FirstName". Two other columns, "FirstName" and "TitleOfCourtesy", are pre-pended to the data list item.

With the introduction of the __HTML-like text rendering featurehttp://www.telerik.com/help/winforms/tpfhtml-like_text_formatting.html__, Telerik Presentation Framework increased the level of the available customizations that you can apply. That said, you are able to use this feature to indicate different roles of different parts of the __Text__ property value.

The aim of this article is to demonstrate how you can achieve to look shown below. As you can see we have three different parts of the text: *TitleOfCourtesy*, *FullName*(*FirstName* + *LastName*) and *Title*. For the purposes of the example, we are going to add an image as well.

![dropdown-and-listcontrol-listcontrol-customizing-items-visual-appearance 001](images/dropdown-and-listcontrol-listcontrol-customizing-items-visual-appearance001.png)



1. Handle the ItemDataBound event to fill the data list items with custom data. 


#### __[C#] Handling the ItemDataBound event__

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=itemDataBound}}
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
	{{endregion}}



#### __[VB.NET] Handling the ItemDataBound event__

{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=itemDataBound}}
	    Private Sub radListControl1_ItemDataBound(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.ListItemDataBoundEventArgs)
	        Dim view As DataRowView = CType(args.NewItem.DataBoundItem, DataRowView)
	        args.NewItem.Text = "<html><b>" & view("TitleOfCourtesy") & "</b>" & " " & view("FirstName") & " " & view("LastName") & "<br><i>" & view("Title")
	        Dim row As NwindDataSet.EmployeesRow = TryCast(view.Row, NwindDataSet.EmployeesRow)
	        args.NewItem.Image = GetImageFromData(row.Photo)
	    End Sub
	{{endregion}}



#### __[C#] Image helper method__

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=getImageData}}
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
	{{endregion}}



#### __[VB.NET] Image helper method__

{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=getImageData}}
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
	{{endregion}}



1. Since the *<br>* tag will split the __Text__ value in different lines, it is essential to set the __AutoSizeItems__ of RadListControl to *true*:
        	
        	

#### __[C#] Setting AutoSizeItems__

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=autoSizeItems}}
	            this.radListControl1.AutoSizeItems = true;
	{{endregion}}



#### __[VB.NET] Setting AutoSizeItems__

{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=autoSizeItems}}
	        Me.radListControl1.AutoSizeItems = True
	{{endregion}}



1. Should you want to have apply some padding to the visual items, you should do it on CreatingVisualListItem event: 


#### __[C#] Applying Padding to the visual list items__

{{source=..\SamplesCS\DropDownListControl\ListControl\CustomizingItems.cs region=creatingVisualListItem}}
	        void radListControl1_CreatingVisualListItem(object sender, CreatingVisualListItemEventArgs args)
	        {
	            RadListVisualItem visualItem = new RadListVisualItem();
	            visualItem.Padding = new Padding(5, 5, 0, 5);
	            args.VisualItem = visualItem;
	        }
	{{endregion}}



#### __[VB.NET] Applying Padding to the visual list items__

{{source=..\SamplesVB\DropDownListControl\ListControl\CustomizingItems.vb region=creatingVisualListItem}}
	    Private Sub radListControl1_CreatingVisualListItem(ByVal sender As Object, ByVal args As Telerik.WinControls.UI.CreatingVisualListItemEventArgs)
	        Dim visualItem As RadListVisualItem = New RadListVisualItem()
	        visualItem.Padding = New Padding(5, 5, 0, 5)
	        args.VisualItem = visualItem
	    End Sub
	{{endregion}}


