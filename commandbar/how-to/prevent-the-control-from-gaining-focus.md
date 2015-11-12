---
title: Prevent the control from gaining focus
page_title: Prevent the control from gaining focus | UI for WinForms Documentation
description: Prevent the control from gaining focus
slug: winforms/commandbar/how-to/prevent-the-control-from-gaining-focus
tags: prevent,the,control,from,gaining,focus
published: True
position: 2
---

# Prevent the control from gaining focus



## 

Currently, RadCommandBar receives the focus. One can easily override this behavior and do not allow the control to become focused. Here are the three simple steps that need to be followed:
        

1. Create a custom class that derives from RadCommandBar;

1. Override the ThemeClassName property, so that the theming mechanism can recognize the new control as a RadCommandBar;

1. Override the ProcessFocusRequested method and return false. 
 

{{source=..\SamplesCS\CommandBar\HowTo\MakeRadCommandBarUnfocusable.cs region=ForbidFocus}} 
{{source=..\SamplesVB\CommandBar\HowTo\MakeRadCommandBarUnfocusable.vb region=ForbidFocus}} 

````C#
class MyCommandBar : RadCommandBar
{
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadCommandBar).FullName;
        }
    }
    protected override bool ProcessFocusRequested(RadElement element)
    {
        return false;
    }
}

````
````VB.NET
Class MyCommandBar
    Inherits RadCommandBar
    Public Overrides Property ThemeClassName() As String
        Get
            Return GetType(RadButton).FullName
        End Get
        Set(ByVal value As String)
        End Set
    End Property
    Protected Overrides Function ProcessFocusRequested(element As RadElement) As Boolean
        Return False
    End Function
End Class

````

{{endregion}} 



