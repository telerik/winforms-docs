---
title: FocusPrimitive
page_title: FocusPrimitive
description: FocusPrimitive
slug: tpf-primitives-focusprimitive
tags: focusprimitive
published: True
position: 5
---

# FocusPrimitive



## 

FocusPrimitive supplies user interface cues that an element has received focus. The constructor for FocusPrimitive takes a
          BorderPrimitive that provides the basic dimensions. Fore colors and inner colors may be set explicitly or default control colors are used.
        ![tpf-primitives-focusprimitive 001](images/tpf-primitives-focusprimitive001.png)

#### __[C#] Creating a FocusPrimitive__

{{region myFocusPrimitiveElement}}
	    public class MyFocusPrimitiveElement : RadElement
	    {
	        protected override void CreateChildElements()
	        {
	            BorderPrimitive borderPrimitive = new BorderPrimitive();
	            borderPrimitive.Class = "MyBorderPrimtiveClass";
	            borderPrimitive.BoxStyle = BorderBoxStyle.SingleBorder;
	            borderPrimitive.Width = 3;
	            borderPrimitive.ForeColor = Color.Red;
	            borderPrimitive.GradientStyle = GradientStyles.Solid;
	            FocusPrimitive focusPrimitive = new FocusPrimitive(borderPrimitive);
	            this.Children.Add(borderPrimitive);
	            this.Children.Add(focusPrimitive);
	            base.CreateChildElements();
	        }
	    }
	{{endregion}}



#### __[VB.NET] Creating a FocusPrimitive__

{{region myFocusPrimitiveElement}}
	Public Class MyFocusPrimitiveElement
	    Inherits RadElement
	    Protected Overrides Sub CreateChildElements()
	        Dim borderPrimitive As New BorderPrimitive()
	        borderPrimitive.Class = "MyBorderPrimtiveClass"
	        borderPrimitive.BoxStyle = BorderBoxStyle.SingleBorder
	        borderPrimitive.Width = 3
	        borderPrimitive.ForeColor = Color.Red
	        borderPrimitive.GradientStyle = GradientStyles.Solid
	        Dim focusPrimitive As New FocusPrimitive(borderPrimitive)
	        Me.Children.Add(borderPrimitive)
	        Me.Children.Add(focusPrimitive)
	        MyBase.CreateChildElements()
	    End Sub
	End Class
	{{endregion}}


