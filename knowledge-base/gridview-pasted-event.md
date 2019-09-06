---
title: Create Pasted event in RadGridView
description: This article shows how you can create Pasted event in RadGridView.
type: how-to
page_title: How to create Pasted event in RadGridView
slug: gridview-pasted-event
position: 0
tags: gridview, paste
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

**RadGridView** offers the **Pasting** event which is appropriate for modifying the Clipboard data before pasting it in the grid. You can cancel this event as well in order to prevent pasting data in some cases. 

A common requirement is to detect when the paste operation is completed in **RadGridView**. Note that  the **CellValidating**/**CellValidated** events are fired after the paste operation. You can use a simple boolean flag which will be set to *true* in the **Pasting** event. Thus, you can detect when the **CellValidating**/**CellValidated** events are fired as a result from paste action. 

However, this article will offer a solution how to create your own **Pasted** event.

## Solution 

In order to create a custom **Pasted** event in **RadGridView**, you need to:

* Create your own **EventArgs** (let's call the class **PastedEventArgs**) with the necessary properties, e.g. **ClipboardData**.
* Raise and consume an event that provides data. The **EventHandler<TEventArgs>** delegate is associated with the event, and an instance of a custom event data object is provided.
* Create a derivative of **RadGridView** and replace the default **MasterGridViewTemplate** with a custom one in which **Paste** method you should raise the **Pasted** event that is just defined.
* Replace the default **RadGridView** with the custom one in your project.

A full implementation is available in the following code snippet:


````C#
 
public Form1()
{
    InitializeComponent();

    CustomMasterGridViewTemplate masterTemplate = this.radGridView1.MasterTemplate as CustomMasterGridViewTemplate;
    masterTemplate.Pasted += masterTemplate_Pasted;
}

private void masterTemplate_Pasted(object sender, PastedEventArgs e)
{
    Console.WriteLine(e.ClipboardData);
}

public class CustomGrid : RadGridView
{
    protected override RadGridViewElement CreateGridViewElement()
    {
        return new CustomRadGridViewElement();
    }

    public override string ThemeClassName
    {
        get
        {
            return typeof(RadGridView).FullName;
        }
    }
}

public class CustomRadGridViewElement : RadGridViewElement
{
    protected override MasterGridViewTemplate CreateTemplate()
    {
        return new CustomMasterGridViewTemplate();
    }

    protected override Type ThemeEffectiveType   
    {
        get  
        {
            return typeof(RadGridViewElement);   
        }
    }
}

public class CustomMasterGridViewTemplate : MasterGridViewTemplate
{
    public event EventHandler<PastedEventArgs> Pasted;
    
    protected virtual void OnPasted(string data)
    {
        if (Pasted != null)
            Pasted(this, new PastedEventArgs(data));
    }

    public override void Paste()
    {
        string data = Clipboard.GetData(DataFormats.UnicodeText).ToString();
        base.Paste();
        OnPasted(data);
    }
}

public class PastedEventArgs : EventArgs
{
    public PastedEventArgs(string clipboardData)
    {
        ClipboardData = clipboardData;
    }

    public string ClipboardData { get; private set; }
}
              
       
````
````VB.NET
    
    Public Sub New()
        InitializeComponent()
        Dim masterTemplate As CustomMasterGridViewTemplate = TryCast(Me.RadGridView1.MasterTemplate, CustomMasterGridViewTemplate)
        AddHandler masterTemplate.Pasted, AddressOf masterTemplate_Pasted
    End Sub

    Private Sub masterTemplate_Pasted(ByVal sender As Object, ByVal e As PastedEventArgs)
        Console.WriteLine(e.ClipboardData)
    End Sub

    Public Class CustomGrid
    Inherits RadGridView

        Protected Overrides Function CreateGridViewElement() As RadGridViewElement
            Return New CustomRadGridViewElement()
        End Function

        Public Overrides Property ThemeClassName As String
            Get
                Return GetType(RadGridView).FullName
            End Get
            Set(value As String)
                MyBase.ThemeClassName = value
            End Set
        End Property
    End Class

    Public Class CustomRadGridViewElement
    Inherits RadGridViewElement

        Protected Overrides Function CreateTemplate() As MasterGridViewTemplate
            Return New CustomMasterGridViewTemplate()
        End Function

        Protected Overrides ReadOnly Property ThemeEffectiveType As Type
            Get
                Return GetType(RadGridViewElement)
            End Get
        End Property
    End Class

    Public Class CustomMasterGridViewTemplate
    Inherits MasterGridViewTemplate

        Public Event Pasted As EventHandler(Of PastedEventArgs)

        Protected Overridable Sub OnPasted(ByVal data As String)
            RaiseEvent Pasted(Me, New PastedEventArgs(data))
        End Sub

        Public Overrides Sub Paste()
            Dim data As String = Clipboard.GetData(DataFormats.UnicodeText).ToString()
            MyBase.Paste()
            OnPasted(data)
        End Sub
    End Class

    Public Class PastedEventArgs
    Inherits EventArgs

        Private _clipboardData As String
        Public Sub New(ByVal clipboardData As String)
            _clipboardData = clipboardData
        End Sub
        Public Property ClipboardData As String
            Get
                Return _clipboardData
            End Get
            Private Set(ByVal value As String)
                _clipboardData = value
            End Set
        End Property
    End Class   
    
````


# See Also

 * [Copy, Paste, Cut]({%slug winforms/gridview/cut-copy-paste%}) 





    
   
  
    
 
