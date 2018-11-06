---
title: Custom Keyboard Handling
page_title: Custom Keyboard Handling | RadPropertyGrid
description: RadPropertyGrid exposes an easy API to customize the behavior of how the input keys are handled.
slug: winforms/propertygrid/custom-keyboard-handling
tags: custom,keyboard,handling
published: True
position: 0
---

# Custom Keyboard Handling

The key strokes are captured by **RadPropertyGrid** and later passed onto the **RadPropertyGridTableElement** which has its own logic for handling the keys. The following keys are considered special and they are handled by the table element: 

* Keys.End 
* Keys.Home
* Keys.Left
* Keys.Right
* Keys.Up
* Keys.Down
* Keys.Enter
* Keys.Escape

For any other keys the **RadPropertyGrid** does not take any actions.

The example below will handle a scenario in which the *Tab* key is captured and later used to navigate the property grid in a forward direction. Once the last item is reached then the next *Tab* key press will move the focus out of the control. 

>note This approach can be used to modify the current implementation for any of the input keys or new keys be added and handled in a special way. Eventually the key message will reach the **ProcessKeyDown** method in the **PropertyGridTableElement** class. This method is virtual and its implementation can be modified.

>caption Figure 1: Custom Tab Key Behavior

![propertygrid-custom-keyaborad-handling 001](images/propertygrid-custom-keyaborad-handling.gif)

## Custom RadPropertyGrid Control

We need to create a custom **RadPropertyGrid** control so that we can override the initialization of the table element and substitute it with a custom one handling the *Tab* key according to our own logic. 

>note The **ThemeClassName** property needs to be overridden so that the new control can be styled using the base control`s theme settings.

#### Control`s Implementation

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomKeyboardNavigation.cs region=CustomRadPropertyGrid}} 
{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomKeyboardNavigation.vb region=CustomRadPropertyGrid}}
````C#
public class CustomRadPropertyGrid : RadPropertyGrid
{
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadPropertyGrid).FullName;
        }
    }
    protected override PropertyGridElement CreatePropertyGridElement()
    {
        return new CuistomPropertyGridElement();
    }
    protected override bool IsInputKey(Keys keyData)
    {
        PropertyGridTraverser traverser = new PropertyGridTraverser(this.PropertyGridElement.PropertyTableElement);
        traverser.MoveTo(this.SelectedGridItem);
        if (keyData == Keys.Tab && traverser.MoveNext())
        {
            return true;
        }
        return base.IsInputKey(keyData);
    }
}

````
````VB.NET
Public Class CustomRadPropertyGrid
    Inherits RadPropertyGrid
    Public Overrides Property ThemeClassName As String
        Get
            Return GetType(RadButton).FullName
        End Get
        Set(value As String)
            MyBase.ThemeClassName = value
        End Set
    End Property
    Protected Overrides Function CreatePropertyGridElement() As PropertyGridElement
        Return New CuistomPropertyGridElement
    End Function
    Protected Overrides Function IsInputKey(ByVal keyData As Keys) As Boolean
        Dim traverser As PropertyGridTraverser = New PropertyGridTraverser(Me.PropertyGridElement.PropertyTableElement)
        traverser.MoveTo(Me.SelectedGridItem)
        If ((keyData = Keys.Tab) _
                AndAlso traverser.MoveNext) Then
            Return True
        End If
        Return MyBase.IsInputKey(keyData)
    End Function
End Class

```` 



{{endregion}}

## Custom Elements 

The various elements building the control are created in special virtual methods allowing easy substitutions.

>note The **ThemeEffectiveType** property needs to be overridden so that the custom elements can be styled using their base element`s theme settings.

#### Elements` Implementation

{{source=..\SamplesCS\PropertyGrid\PropertyGridCustomKeyboardNavigation.cs region=CustomElements}} 
{{source=..\SamplesVB\PropertyGrid\PropertyGridCustomKeyboardNavigation.vb region=CustomElements}}
````C#
public class CuistomPropertyGridElement : PropertyGridElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(PropertyGridElement);
        }
    }
    protected override PropertyGridSplitElement CreateSplitElement()
    {
        return new CustomPropertyGridSplitElement();
    }
}
public class CustomPropertyGridSplitElement : PropertyGridSplitElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(PropertyGridSplitElement);
        }
    }
    protected override PropertyGridTableElement CreateTableElement()
    {
        return new CustomPropertyGridTableElement();
    }
}
public class CustomPropertyGridTableElement : PropertyGridTableElement
{
    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(PropertyGridTableElement);
        }
    }
    public override bool ProcessKeyDown(KeyEventArgs e)
    {
        if (e.KeyCode == Keys.Tab)
        {
            if (this.SelectedGridItem == null)
            {
                PropertyGridTraverser traverser = new PropertyGridTraverser(this);
                if (traverser.MoveNext())
                {
                    this.ProcessSelection(traverser.Current, false);
                }
            }
            else
            {
                PropertyGridTraverser traverser = new PropertyGridTraverser(this);
                traverser.MoveTo(this.SelectedGridItem);
                if (traverser.MoveNext())
                {
                    this.ProcessSelection(traverser.Current, false);
                }
            }
            return true;
        }
        return base.ProcessKeyDown(e);
    }
}

````
````VB.NET
Public Class CuistomPropertyGridElement
    Inherits PropertyGridElement
    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(PropertyGridElement)
        End Get
    End Property
    Protected Overrides Function CreateSplitElement() As PropertyGridSplitElement
        Return New CustomPropertyGridSplitElement
    End Function
End Class
Public Class CustomPropertyGridSplitElement
    Inherits PropertyGridSplitElement
    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(PropertyGridSplitElement)
        End Get
    End Property
    Protected Overrides Function CreateTableElement() As PropertyGridTableElement
        Return New CustomPropertyGridTableElement
    End Function
End Class
Public Class CustomPropertyGridTableElement
    Inherits PropertyGridTableElement
    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(PropertyGridTableElement)
        End Get
    End Property
    Public Overrides Function ProcessKeyDown(ByVal e As KeyEventArgs) As Boolean
        If (e.KeyCode = Keys.Tab) Then
            If (Me.SelectedGridItem Is Nothing) Then
                Dim traverser As PropertyGridTraverser = New PropertyGridTraverser(Me)
                If traverser.MoveNext Then
                    Me.ProcessSelection(traverser.Current, False)
                End If
            Else
                Dim traverser As PropertyGridTraverser = New PropertyGridTraverser(Me)
                traverser.MoveTo(Me.SelectedGridItem)
                If traverser.MoveNext Then
                    Me.ProcessSelection(traverser.Current, False)
                End If
            End If
            Return True
        End If
        Return MyBase.ProcessKeyDown(e)
    End Function
End Class

```` 



{{endregion}}

# See Also

* [Keyboard Navigation]({%slug winforms/propertygrid/keyboard-navigation%})
* [Inherit Themes]({%slug winforms/telerik-presentation-framework/inherit-themes-from-radcontrols-derivatives%})