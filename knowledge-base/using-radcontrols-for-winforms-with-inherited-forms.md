---
title: Using RadControls for WinForms with inherited forms
description: Using RadControls for WinForms with inherited forms. Check it now!
type: how-to
page_title: Using RadControls for WinForms with inherited forms
slug: using-radcontrols-for-winforms-with-inherited-forms
res_type: kb
---

## How To  

Use RadControls for WinForms with inherited forms  
   
## Problem

When the **Modifiers** property of a RadControl is set to "protected" or "public" in a base form, the code DOM serialization and the overall design-time behavior of the control is incorrect in the child form.  
   
## Considerations

In general, we advise against visual inheritance (inheriting a form that has serialized code from design-time). There are many problems with the code DOM serialization that should be considered. However, in some simple cases it is possible to use visual inheritance.  
   
## Solution
 
To start off, we recommend leaving the **Modifiers** property of the generated fields in the base form unchanged (for VB developers: it may be better to set **Modifiers** to **Private**, but do not set it to **Protected** or **Public**). Instead, create a public property that returns the private field and inform the Visual Studio to use that property for serialization. You will have to use the **AccessedThroughProperty** attribute.  
   
## Example

Let's have a form **BaseForm** with **RadRibbonBar** in it and a child form **DerivedForm** that inherits **BaseForm**. In order to have working design-time for the ribbon in **DerivedForm** you have to modify the designer file of **BaseForm**:  
   
````C#
partial class BaseForm  
{  
    //......  
 
    [System.Runtime.CompilerServices.AccessedThroughProperty("MainRibbon")]  
    private Telerik.WinControls.UI.RadRibbonBar radRibbonBar1;  
 
 
    public Telerik.WinControls.UI.RadRibbonBar MainRibbon  
    {  
        get { return this.radRibbonBar1; }  
    }  
}

````
````VB.NET


Partial Class BaseForm  
    Inherits System.Windows.Forms.Form  
 
    '......  
 
    <System.Runtime.CompilerServices.AccessedThroughProperty("MainRibbon")> _  
    Private RadRibbonBar1 As Telerik.WinControls.UI.RadRibbonBar  
 
 
    Public ReadOnly Property MainRibbon() As Telerik.WinControls.UI.RadRibbonBar  
        Get 
            Return Me.RadRibbonBar1  
        End Get 
    End Property 
 
End Class 

```` 
   
Do not forget to build the project that contains **BaseForm** before opening **DerivedForm** in design-time.  
   
## Notes
  
Even though all serialization in the **DerivedForm** is done through the public property there are some limitations that should be considered:  
 
- Do not modify the control's properties that are serialized via **DesignerSerializationVisibility.Content **in the **BaseForm**. If these properties are modified in the **BaseForm**, their subsequent modifications in **DerivedForm** will not be serialized;
- Be careful when using UserControls or Panels with child controls in the **BaseForm** - it is highly possible that subsequent modifications for the child controls in **DerivedForm** will not work;
- The Visual Studio design-time should not delete the manually written property, but sometimes the attribute of the field is removed. Keep an eye on that code when modifying the base form in design-time.

 
For more information on how to control the Visual Studio's code DOM serialization see:  
 [http://msdn.microsoft.com/en-us/library/ms973818.aspx](http://msdn.microsoft.com/en-us/library/ms973818.aspx)
 

