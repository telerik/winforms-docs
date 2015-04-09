---
title: BorderPrimitive
page_title: BorderPrimitive
description: BorderPrimitive
slug: tpf-primitives-borderprimitive
tags: borderprimitive
published: True
position: 2
---

# BorderPrimitive



The __BorderPrimitive__ class is responsible for drawing the border around an area on the screen.
        __BorderPrimitive__ is automatically sized to the inner edges of the parent element. The __BoxStyle__ property
        controls display characteristics and can be set to __SingleBorder, FourBorders__ and
        __OuterInnerBorders__.
      

## SingleBorder
<table><tr><td>![tpf-primitives-borderprimitive 002](images/tpf-primitives-borderprimitive002.png)</td><td>

All four sides of the border are drawn with the same properties except color. Color is controlled by the
                <b>GradientStyles</b> property. To get all colors in the border to display the same, use the
                <b>GrandientStyles.Solid</b> enumeration member. The example below displays a red, 3 pixel border box.
              </td></tr></table>

#### __[C#] Creating a BorderPrimitive with SingleBorder__

{{source=..\SamplesCS\TPF\Primitives\BorderPrimitive1\MyBorderPrimitiveSElement.cs region=myBorderPrimitiveSElement}}
	    public class MyBorderPrimitiveSElement : RadElement
	    {
	        protected override void CreateChildElements()
	        {
	            BorderPrimitive borderPrimitive = new BorderPrimitive();
	            borderPrimitive.Class = "MyBorderPrimtiveClass";
	            borderPrimitive.BoxStyle = BorderBoxStyle.SingleBorder;
	            borderPrimitive.Width = 3;
	            borderPrimitive.ForeColor = Color.Red;
	            borderPrimitive.GradientStyle = GradientStyles.Solid;
	            this.Children.Add(borderPrimitive);
	            base.CreateChildElements();
	        }
	    }
	{{endregion}}



#### __[VB.NET] Creating a BorderPrimitive with SingleBorder__

{{source=..\SamplesVB\TPF\Primitives\BorderPrimitive1\MyBorderPrimitiveSElement.vb region=myBorderPrimitiveSElement}}
	Public Class MyBorderPrimitiveSElement
	    Inherits RadElement
	    Protected Overrides Sub CreateChildElements()
	        Dim borderPrimitive As New BorderPrimitive()
	        borderPrimitive.Class = "MyBorderPrimtiveClass"
	        borderPrimitive.BoxStyle = BorderBoxStyle.SingleBorder
	        borderPrimitive.Width = 3
	        borderPrimitive.ForeColor = Color.Red
	        borderPrimitive.GradientStyle = GradientStyles.Solid
	        Me.Children.Add(borderPrimitive)
	        MyBase.CreateChildElements()
	    End Sub
	End Class
	{{endregion}}



## FourBorders
<table><tr><td>![tpf-primitives-borderprimitive 001](images/tpf-primitives-borderprimitive001.png)</td><td>

Each side of the border can be tailored individually.  <b>ForeColor</b>, <b>Width</b>
                and <b>GradientStyle</b> properties are ignored in favor of width and color properties for each side. The example
                code below describes a box with the left and bottom sides displaying a 3 pixel blue line and the upper and right hand sides displaying a
                1 pixel red border.
              </td></tr></table>

#### __[C#] Creating a BorderPrimitive with FourBorders__

{{source=..\SamplesCS\TPF\Primitives\BorderPrimitive1\MyBorderPrimitiveFBElement.cs region=myBorderPrimitiveFBElement}}
	    public class MyBorderPrimitiveFBElement : RadElement
	    {
	        protected override void CreateChildElements()
	        {
	            BorderPrimitive borderPrimitive = new BorderPrimitive();
	            borderPrimitive.Class = "MyBorderPrimtiveClass";
	            borderPrimitive.BoxStyle = BorderBoxStyle.FourBorders;
	            borderPrimitive.LeftWidth = 3;
	            borderPrimitive.LeftColor = Color.Blue;
	            borderPrimitive.BottomWidth = 3;
	            borderPrimitive.BottomColor = Color.Blue;
	            borderPrimitive.RightWidth = 1;
	            borderPrimitive.RightColor = Color.Red;
	            borderPrimitive.TopWidth = 1;
	            borderPrimitive.TopColor = Color.Red;
	            this.Children.Add(borderPrimitive);
	            base.CreateChildElements();
	        }
	    }
	{{endregion}}



#### __[VB.NET] Creating a BorderPrimitive with FourBorders__

{{source=..\SamplesVB\TPF\Primitives\BorderPrimitive1\MyBorderPrimitiveFBElement.vb region=myBorderPrimitiveFBElement}}
	Public Class MyBorderPrimitiveFBElement
	    Inherits RadElement
	    Protected Overrides Sub CreateChildElements()
	        Dim borderPrimitive As New BorderPrimitive()
	        borderPrimitive.Class = "MyBorderPrimtiveClass"
	        borderPrimitive.BoxStyle = BorderBoxStyle.FourBorders
	        borderPrimitive.LeftWidth = 3
	        borderPrimitive.LeftColor = Color.Blue
	        borderPrimitive.BottomWidth = 3
	        borderPrimitive.BottomColor = Color.Blue
	        borderPrimitive.RightWidth = 1
	        borderPrimitive.RightColor = Color.Red
	        borderPrimitive.TopWidth = 1
	        borderPrimitive.TopColor = Color.Red
	        Me.Children.Add(borderPrimitive)
	        MyBase.CreateChildElements()
	    End Sub
	End Class
	{{endregion}}



## OuterInnerBorders
<table><tr><td>![tpf-primitives-borderprimitive 003](images/tpf-primitives-borderprimitive003.png)</td><td>

Inner and outer colors can be specified using the <b>ForeColor</b> and <b>InnerColor</b> property
              families. The <b>GradientStyle</b> property determines how the primitive colors are displayed. 
              A Solid <b>GradientStyle</b> will only take the ForeColor and InnerColor properties into account. The 
              code example below sets a 1 pixel width, sets the GradientStyle to Linear, sets the ForeColor related properties to blue 
              and green colors and the InnerColor related properties to light blue and green colors</td></tr></table>

#### __[C#] Creating a BorderPrimitive with OuterInnerBorders__

{{source=..\SamplesCS\TPF\Primitives\BorderPrimitive1\MyBorderPrimitiveOIElement.cs region=myBorderPrimitiveOIElement}}
	    public class MyBorderPrimitiveOIElement : RadElement
	    {
	        protected override void CreateChildElements()
	        {
	            BorderPrimitive borderPrimitive = new BorderPrimitive();
	            borderPrimitive.Class = "MyBorderPrimtiveClass";
	            borderPrimitive.BoxStyle = BorderBoxStyle.OuterInnerBorders;
	            borderPrimitive.Width = 1;
	            borderPrimitive.GradientStyle = GradientStyles.Linear;
	            borderPrimitive.ForeColor = Color.DarkBlue;
	            borderPrimitive.ForeColor2 = Color.Blue;
	            borderPrimitive.ForeColor3 = Color.Green;
	            borderPrimitive.ForeColor4 = Color.DarkGreen;
	            borderPrimitive.InnerColor = Color.LightBlue;
	            borderPrimitive.InnerColor2 = Color.SkyBlue;
	            borderPrimitive.InnerColor3 = Color.LightGreen;
	            borderPrimitive.InnerColor4 = Color.LightSkyBlue;
	            this.Children.Add(borderPrimitive);
	            base.CreateChildElements();
	        }
	    }
	{{endregion}}



#### __[VB.NET] Creating a BorderPrimitive with OuterInnerBorders__

{{source=..\SamplesVB\TPF\Primitives\BorderPrimitive1\MyBorderPrimitiveOIElement.vb region=myBorderPrimitiveOIElement}}
	Public Class MyBorderPrimitiveOIElement
	    Inherits RadElement
	    Protected Overrides Sub CreateChildElements()
	        Dim borderPrimitive As New BorderPrimitive()
	        borderPrimitive.Class = "MyBorderPrimtiveClass"
	        borderPrimitive.BoxStyle = BorderBoxStyle.OuterInnerBorders
	        borderPrimitive.Width = 1
	        borderPrimitive.GradientStyle = GradientStyles.Linear
	        borderPrimitive.ForeColor = Color.DarkBlue
	        borderPrimitive.ForeColor2 = Color.Blue
	        borderPrimitive.ForeColor3 = Color.Green
	        borderPrimitive.ForeColor4 = Color.DarkGreen
	        borderPrimitive.InnerColor = Color.LightBlue
	        borderPrimitive.InnerColor2 = Color.SkyBlue
	        borderPrimitive.InnerColor3 = Color.LightGreen
	        borderPrimitive.InnerColor4 = Color.LightSkyBlue
	        Me.Children.Add(borderPrimitive)
	        MyBase.CreateChildElements()
	    End Sub
	End Class
	{{endregion}}


