---
title: Implement Keyboard Navigation
page_title: Implement Keyboard Navigation | UI for WinForms Documentation
description: Implement Keyboard Navigation
slug: winforms/carousel/how-to/implement-keyboard-navigation
tags: implement,keyboard,navigation
published: False
position: 0
---

# Implement Keyboard Navigation



## 

In order to implement keyboard navigation for rotating and selecting the carousel items, you should first subscribe to the KeyUp event and then implement the following logic in the KeyUP event handler:#_[C#] Keyboard Navigation_

	



{{source=..\SamplesCS\Carousel\CarouselImplementKeyboardNavigation.cs region=keyboardNavigation}} 
{{source=..\SamplesVB\Carousel\CarouselImplementKeyboardNavigation.vb region=keyboardNavigation}} 

````C#
public CarouselImplementKeyboardNavigation()
{
    InitializeComponent();
    this.radCarousel1.KeyUp += new KeyEventHandler(radCarousel1_KeyUp);
}
void radCarousel1_KeyUp(object sender, KeyEventArgs e)
{
    if (e.KeyCode == Keys.Left)
    {
        this.radCarousel1.SelectedIndex--;
    }
    else if (e.KeyCode == Keys.Right)
    {
        this.radCarousel1.SelectedIndex++;
    }
    else if (e.KeyCode == Keys.Enter)
    {
        if (this.radCarousel1.SelectedItem != null)
        {
            ((RadButtonElement)this.radCarousel1.SelectedItem).PerformClick();
        }
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler Me.RadCarousel1.KeyUp, AddressOf radCarousel1_KeyUp
End Sub
Private Sub radCarousel1_KeyUp(ByVal sender As Object, ByVal e As KeyEventArgs)
    If e.KeyCode = Keys.Left Then
        Me.RadCarousel1.SelectedIndex -= 1
    ElseIf e.KeyCode = Keys.Right Then
        Me.RadCarousel1.SelectedIndex += 1
    ElseIf e.KeyCode = Keys.Enter Then
        If Me.RadCarousel1.SelectedItem IsNot Nothing Then
            DirectCast(Me.RadCarousel1.SelectedItem, RadButtonElement).PerformClick()
        End If
    End If
End Sub

````

{{endregion}} 




Basically, we are changing the selected index depending on the arrow key pressed (Left or Right). If we press the Enter key, we simulate the mouse click operation in case we have custom logic in the Click event handler of the respective item.
