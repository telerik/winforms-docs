---
title: Create Prinatble Panel
page_title: Create Prinatble Panel
description: Create Prinatble Panel
slug: tpf-printing-support-how-to-create-printable-panel
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
            

The first step would be to just create the custom class

#### __[C#]__

{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=class}}
	    
	    public class PrintablePanel : RadPanel, IPrintable
	    
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=class}}
	
	Public Class PrintablePanel
	    Inherits RadPanel
	    Implements IPrintable
	
	{{endregion}}



For the current example the __BeginPrint__ and __EndPrint__ methods should just return a hard-coded values:
        

#### __[C#]__

{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=beginEnd}}
	            
	        public int BeginPrint(RadPrintDocument sender, PrintEventArgs args)
	        {
	            return 1;
	        }
	            
	        public bool EndPrint(RadPrintDocument sender, PrintEventArgs args)
	        {
	            return true;
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=beginEnd}}
	
	    Public Function BeginPrint(sender As RadPrintDocument, args As PrintEventArgs) As Integer Implements IPrintable.BeginPrint
	
	        Return 1
	    End Function
	
	    Public Function EndPrint(sender As RadPrintDocument, args As PrintEventArgs) As Boolean Implements IPrintable.EndPrint
	        Return True
	    End Function
	
	{{endregion}}



In the __GetSettingsDialog__ method you should just return an new settings dialog:
        

#### __[C#]__

{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=dialog}}
	
	        public Form GetSettingsDialog(RadPrintDocument document)
	        {
	            return new PrintSettingsDialog(document);
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=dialog}}
	
	    Public Function GetSettingsDialog(document As RadPrintDocument) As Form Implements IPrintable.GetSettingsDialog
	        Return New PrintSettingsDialog(document)
	    End Function
	
	{{endregion}}



The __PrintPage__ method is the place where the panel actual would be converted to image and drawn:
        

#### __[C#]__

{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=page}}
	            
	        public bool PrintPage(int pageNumber, RadPrintDocument sender, PrintPageEventArgs args)
	        {
	            Bitmap bmp = new Bitmap(this.Width, this.Height);
	            this.DrawToBitmap(bmp, new Rectangle(Point.Empty, this.Size));
	            args.Graphics.DrawImage(bmp, Point.Empty);
	        
	            return false;
	        }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=page}}
	
	    Public Function PrintPage(pageNumber As Integer, sender As RadPrintDocument, args As PrintPageEventArgs) As Boolean Implements IPrintable.PrintPage
	        Dim bmp As New Bitmap(Me.Width, Me.Height)
	        Me.DrawToBitmap(bmp, New Rectangle(Point.Empty, Me.Size))
	        args.Graphics.DrawImage(bmp, Point.Empty)
	
	        Return False
	    End Function
	{{endregion}}



Besides the interface methods implementation you can create the __Print__ and __PrintPreview__ methods:
        

#### __[C#]__

{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=print}}
	            
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
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=print}}
	
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
	{{endregion}}



The final method left is the __CreatePrintDocument__. It returns a new RadPrintDocument associated with the current instance:
        

#### __[C#]__

{{source=..\SamplesCS\TPF\Printing support\CreatePrintablePanel.cs region=create}}
	
	        private RadPrintDocument CreatePrintDocument()
	        {
	            RadPrintDocument doc = new RadPrintDocument();
	            doc.AssociatedObject = this;
	            return doc;
	        }
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Printing support\CreatePrintablePanel.vb region=create}}
	
	    Private Function CreatePrintDocument() As RadPrintDocument
	        Dim doc As New RadPrintDocument()
	        doc.AssociatedObject = Me
	        Return doc
	    End Function
	
	{{endregion}}


