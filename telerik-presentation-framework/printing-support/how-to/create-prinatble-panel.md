---
title: Create Prinatble Panel
page_title: Create Prinatble Panel | UI for WinForms Documentation
description: Create Prinatble Panel
slug: winforms/telerik-presentation-framework/printing-support/how-to/create-prinatble-panel
tags: create,prinatble,panel
published: True
position: 0
---

# Create Prinatble Panel



## 

This example shows how you can implement printable panel. This can be very useful when you want to print several controls at once.
          To achieve this you can create a custom panel that inherits from RadPanel and implements the __IPrintable__ interface. This
          interface contains four methods:
        

* __BeginPrint__ - Called when the printing begins.
            

* __EndPrint__ - Called when the printing ends.
            

* __PrintPage__ - Prints the page with the specified number.
            

* __GetSettingsDialog__ - Gets a print settings dialog that is specific for the printable object.
            

The first step would be to just create the custom class#_[C#]_

	



{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=class}} 
{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=class}} 

````C#
    
    public class PrintablePanel : RadPanel, IPrintable
````
````VB.NET

Public Class PrintablePanel
    Inherits RadPanel
    Implements IPrintable

    '
````

{{endregion}} 




For the current example the __BeginPrint__ and __EndPrint__ methods should just return a hard-coded values:
        #_[C#]_

	



{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=beginEnd}} 
{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=beginEnd}} 

````C#
            
        public int BeginPrint(RadPrintDocument sender, PrintEventArgs args)
        {
            return 1;
        }
            
        public bool EndPrint(RadPrintDocument sender, PrintEventArgs args)
        {
            return true;
        }
````
````VB.NET

    Public Function BeginPrint(sender As RadPrintDocument, args As PrintEventArgs) As Integer Implements IPrintable.BeginPrint

        Return 1
    End Function

    Public Function EndPrint(sender As RadPrintDocument, args As PrintEventArgs) As Boolean Implements IPrintable.EndPrint
        Return True
    End Function

    '
````

{{endregion}} 




In the __GetSettingsDialog__ method you should just return an new settings dialog:
        #_[C#]_

	



{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=dialog}} 
{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=dialog}} 

````C#

        public Form GetSettingsDialog(RadPrintDocument document)
        {
            return new PrintSettingsDialog(document);
        }
````
````VB.NET

    Public Function GetSettingsDialog(document As RadPrintDocument) As Form Implements IPrintable.GetSettingsDialog
        Return New PrintSettingsDialog(document)
    End Function

    '
````

{{endregion}} 




The __PrintPage__ method is the place where the panel actual would be converted to image and drawn:
        #_[C#]_

	



{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=page}} 
{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=page}} 

````C#
            
        public bool PrintPage(int pageNumber, RadPrintDocument sender, PrintPageEventArgs args)
        {
            Bitmap bmp = new Bitmap(this.Width, this.Height);
            this.DrawToBitmap(bmp, new Rectangle(Point.Empty, this.Size));
            args.Graphics.DrawImage(bmp, Point.Empty);
        
            return false;
        }
````
````VB.NET

    Public Function PrintPage(pageNumber As Integer, sender As RadPrintDocument, args As PrintPageEventArgs) As Boolean Implements IPrintable.PrintPage
        Dim bmp As New Bitmap(Me.Width, Me.Height)
        Me.DrawToBitmap(bmp, New Rectangle(Point.Empty, Me.Size))
        args.Graphics.DrawImage(bmp, Point.Empty)

        Return False
    End Function
    '
````

{{endregion}} 




Besides the interface methods implementation you can create the __Print__ and __PrintPreview__ methods:
        #_[C#]_

	



{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=print}} 
{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=print}} 

````C#
            
        public void Print()
        {
            RadPrintDocument doc = this.CreatePrintDocument();
            doc.Print();
        }
         
        public void PrintPreview()
        {
            RadPrintDocument doc = this.CreatePrintDocument();
            RadPrintPreviewDialog dialog = new RadPrintPreviewDialog(doc);
        
            dialog.ThemeName = this.ThemeName;
            dialog.ShowDialog();
        }
````
````VB.NET

    Public Sub Print()
        Dim doc As RadPrintDocument = Me.CreatePrintDocument()
        doc.Print()
    End Sub

    Public Sub PrintPreview()
        Dim doc As RadPrintDocument = Me.CreatePrintDocument()
        Dim dialog As New RadPrintPreviewDialog(doc)

        dialog.ThemeName = Me.ThemeName
        dialog.ShowDialog()
    End Sub
    '
````

{{endregion}} 




The final method left is the __CreatePrintDocument__. It returns a new RadPrintDocument associated with the current instance:
        #_[C#]_

	



{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=create}} 
{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=create}} 

````C#

        private RadPrintDocument CreatePrintDocument()
        {
            RadPrintDocument doc = new RadPrintDocument();
            doc.AssociatedObject = this;
            return doc;
        }
````
````VB.NET

    Private Function CreatePrintDocument() As RadPrintDocument
        Dim doc As New RadPrintDocument()
        doc.AssociatedObject = Me
        Return doc
    End Function

    '
````

{{endregion}} 



