---
title: How to Deal with Invalid FORMATETC structure Error when Copying Data from RadGridView
description: Learn how to handle Invalid FORMATETC structure Error when Copying Data from the WinForms GridView. 
type: how-to
page_title: How to Deal with "Invalid FORMATETC structure" Error when Copying Data from RadGridView
slug: invalid-formatetc-structure-when-copying-data-from-radgridview
position: 5
tags: grid, copy, invalid, formatetc
ticketid: 1492104
res_type: kb
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2022.3.913|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

When the user performs a Copy operation in RadGridView either with Ctrl + C or via the context menu option, it is possible to observe the following error: 

*System.Runtime.InteropServices.COMException occurred
Message: Exception thrown: 'System.Runtime.InteropServices.COMException' in System.Windows.Forms.dll
Additional information: **Invalid FORMATETC structure (Exception from HRESULT: 0x80040064 (DV_E_FORMATETC))***
 
This tutorial gives more details about the error and how it may be prevented.

## Solution

This error doesn't seem to be related directly to the RadGridView control from the Telerik UI for WinForms suite. When a Copy operation is performed, RadGridView internally uses Clipboard.[SetDataObject(Object)](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.clipboard.setdataobject?view=windowsdesktop-7.0#system-windows-forms-clipboard-setdataobject(system-object)) method. In different general programming forums, it is confirmed that if the [SetDataObject(Object, Boolean)](https://learn.microsoft.com/en-us/dotnet/api/system.windows.forms.clipboard.setdataobject?view=windowsdesktop-7.0#system-windows-forms-clipboard-setdataobject(system-object-system-boolean)) method overload is used, the error doesn't occur anymore. 
 
The following sample code snippet demonstrates how to customize the copy behavior in RadGridView: 

````C#

        public class CustomGrid : RadGridView
        {
            public override string ThemeClassName
            {
                get
                {
                    return typeof(RadGridView).FullName;
                }
            }
            protected override RadGridViewElement CreateGridViewElement()
            {
                return new CustomRadGridViewElement();
            }
        }

        public class CustomRadGridViewElement : RadGridViewElement
        {
            protected override Type ThemeEffectiveType
            {
                get
                {
                    return typeof(RadGridViewElement);
                }
            }
            protected override MasterGridViewTemplate CreateTemplate()
            {
                return new CustomMasterGridViewTemplate();
            }
        }

        public class CustomMasterGridViewTemplate : MasterGridViewTemplate
        {
            public override void Copy()
            {
                MethodInfo mi = typeof(MasterGridViewTemplate).GetMethod("CopyContent", BindingFlags.Instance | BindingFlags.NonPublic);
                object copyResult = mi.Invoke(this, new object[] { false });
                Clipboard.SetDataObject(copyResult, true);
            } 
        }

````
````VB.NET

    Public Class CustomGrid
        Inherits RadGridView

        Public Overrides Property ThemeClassName As String
            Get
                Return GetType(RadGridView).FullName
            End Get
            Set(value As String)
                MyBase.ThemeClassName = value
            End Set
        End Property

        Protected Overrides Function CreateGridViewElement() As RadGridViewElement
            Return New CustomRadGridViewElement()
        End Function
    End Class

    Public Class CustomRadGridViewElement
        Inherits RadGridViewElement

        Protected Overrides ReadOnly Property ThemeEffectiveType As Type
            Get
                Return GetType(RadGridViewElement)
            End Get
        End Property

        Protected Overrides Function CreateTemplate() As MasterGridViewTemplate
            Return New CustomMasterGridViewTemplate()
        End Function
    End Class

    Public Class CustomMasterGridViewTemplate
        Inherits MasterGridViewTemplate

        Public Overrides Sub Copy()
            Dim mi As MethodInfo = GetType(MasterGridViewTemplate).GetMethod("CopyContent", BindingFlags.Instance Or BindingFlags.NonPublic)
            Dim copyResult As Object = mi.Invoke(Me, New Object() {False})
            Clipboard.SetDataObject(copyResult, True)
        End Sub
    End Class

````

# See Also

* [Copy/Paste/Cut]({%slug winforms/gridview/cut-copy-paste%}) 



 
