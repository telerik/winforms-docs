---
title: Changing the text color of a disabled RadTextBox
description: Changing the text color of a disabled RadTextBox. Check it now!
type: how-to
page_title: Changing the text color of a disabled RadTextBox
slug: changing-the-text-color-of-a-disabled-radtextbox
tags: treeview
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2011 SP1|RadTreeView for WinForms|Nikolay Diyanov|Oct 4, 2011|

 
## PROBLEM  
   
Our editor controls (RadDropDownList, RadTextBox, RadSpinEditor, RadMaskedEditBox and RadDateTimePicker) use the standard Microsoft TextBox for the textbox part. You can easily change the BackColor of a TextBox if it is disabled. However, the TextBox implementation does not provide any means for changing the color of the the text of a disabled TextBox instance.  
   
## SOLUTION  
   
In order to work around this limiation, you can create a custom TextBox instance that does not use the default text painting, but uses its own text painting instead. Then, you can add this custom instance in the structure of a Rad editor and display it only if the Rad editor becomes disabled.  
   
Let's take and analyze the case of RadTextBox: 
1.First, we should create a custom TextBox instance. Our editors use an extended TextBox implementation called HostedTextBoxBase. Therefore, our class should derive from HostedTextBoxBase. In the body of our class, we should override the OnPaint method where we should draw our own text. In addition, we should call the SetStyle in the constructor of the customized HostedTextBoxBase, passing the ControlStyles.UserPaint as a parameter. Please note that the color of the text that we will draw is Red:
    
````C#
public class MyTextBox : HostedTextBoxBase
{
    public MyTextBox()
    {
        this.SetStyle(ControlStyles.UserPaint, true);
    }
  
    protected override void OnPaint(PaintEventArgs e)
    {
        SolidBrush drawBrush = new SolidBrush(Color.Red); 
        e.Graphics.DrawString(Text, Font, drawBrush, -1f, -1f);
    }
}

````
````VB.NET
Public Class MyTextBox
	Inherits HostedTextBoxBase
	Public Sub New()
		Me.SetStyle(ControlStyles.UserPaint, True)
	End Sub

	Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
		Dim drawBrush As New SolidBrush(Color.Red)
		e.Graphics.DrawString(Text, Font, drawBrush, -1f, -1f)
	End Sub
End Class


```` 

2.Now it is time to create a descendant of RadTextBox. In this descendant we should create a RadTextBoxItem - this is an element of our framework that will host the customized HostedTextBoxBase. We can add the created RadTextBoxItem object to the structure of the control in the overridden CreateChildItems method. We should also override the OnEnabledChanged method. In this method we hide the default RadTextBoxItem instance so that the new one can be displayed. Finally, in order to keep the appropriate styling of the control, we should override the [ThemeClassName property](http://docs.telerik.com/help/winforms/tpf-inherit-themes-from-radcontrols-derivatives.html):   
 
````C#
public class MyRadTextBox : RadTextBox
{       
    MyTextBox mtb = new MyTextBox();
    RadTextBoxItem tbi;
  
    protected override void CreateChildItems(Telerik.WinControls.RadElement parent)
    {
        base.CreateChildItems(parent);
  
        tbi = new RadTextBoxItem(mtb);
        mtb.Font = this.Font;
        this.TextBoxElement.Children.Add(tbi);     
    }
  
    protected override void OnEnabledChanged(EventArgs e)
    {
        if (!this.Enabled)
        {
            tbi.Text = this.Text;
            this.TextBoxElement.TextBoxItem.Visibility = Telerik.WinControls.ElementVisibility.Hidden;
        }
        else
        {
            this.TextBoxElement.TextBoxItem.Visibility = Telerik.WinControls.ElementVisibility.Visible;
        }
  
        base.OnEnabledChanged(e);
    }
  
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadTextBox).FullName;
        }
    }
  
}

````
````VB.NET
Public Class MyRadTextBox
    Inherits RadTextBox

    Private mtb As MyTextBox
	Private tbi As RadTextBoxItem

	Protected Overrides Sub CreateChildItems(ByVal parent As Telerik.WinControls.RadElement)
		MyBase.CreateChildItems(parent)

        mtb = New MyTextBox()
		tbi = New RadTextBoxItem(mtb)
		mtb.Font = Me.Font
		Me.TextBoxElement.Children.Add(tbi)
	End Sub

	Protected Overrides Sub OnEnabledChanged(ByVal e As EventArgs)
		If Not Me.Enabled Then
			tbi.Text = Me.Text
			Me.TextBoxElement.TextBoxItem.Visibility = Telerik.WinControls.ElementVisibility.Hidden
		Else
			Me.TextBoxElement.TextBoxItem.Visibility = Telerik.WinControls.ElementVisibility.Visible
		End If

		MyBase.OnEnabledChanged(e)
	End Sub

    Public Overrides Property ThemeClassName() As String
        Get
            Return GetType(RadTextBox).FullName
        End Get
        Set(ByVal value As String)

        End Set
    End Property
End Class

```` 

The approach regarding the rest of the editors is similar. Please find a sample project below which demonstrates the approach for RadTextBox, RadSpinEditor, RadMaskedEditBox, RadDateTimePicker and RadDropDownList.

>note You can download a complete VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/Editors/DisabledEditorsColor).

