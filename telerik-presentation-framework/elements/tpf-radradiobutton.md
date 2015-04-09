---
title: RadRadioButtonElement
page_title: RadRadioButtonElement
description: RadRadioButtonElement
slug: tpf-elements-radradiobutton
tags: radradiobuttonelement
published: True
position: 1
---

# RadRadioButtonElement



## 

__RadRadioButtonlElement__ contains the logic and user interface for a single RadRadioButton.
        ![tpf-elements-radradiobutton 001](images/tpf-elements-radradiobutton001.png)

#### __[C#]__

{{source=..\SamplesCS\TPF\Elements\MyRadioButtonControl.cs region=myRadioButtonControl}}
	    public class MyRadioButtonControl : RadControl
	    {
	        protected override void CreateChildItems(RadElement parent)
	        {
	            RadRadioButtonElement radRadioButtonElement = new RadRadioButtonElement();
	            radRadioButtonElement.ToggleState = ToggleState.On;
	            radRadioButtonElement.RadioCheckAlignment = ContentAlignment.BottomRight;
	            this.RootElement.Children.Add(radRadioButtonElement);
	            base.CreateChildItems(parent);
	        }
	    }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TPF\Elements\MyRadioButtonControl.vb region=myRadioButtonControl}}
	Public Class MyRadioButtonControl
	    Inherits RadControl
	    Protected Overrides Sub CreateChildItems(ByVal parent As RadElement)
	        Dim radRadioButtonElement As New RadRadioButtonElement()
	        radRadioButtonElement.ToggleState = ToggleState.On
	        radRadioButtonElement.RadioCheckAlignment = ContentAlignment.BottomRight
	        Me.RootElement.Children.Add(radRadioButtonElement)
	        MyBase.CreateChildItems(parent)
	    End Sub
	End Class
	{{endregion}}


