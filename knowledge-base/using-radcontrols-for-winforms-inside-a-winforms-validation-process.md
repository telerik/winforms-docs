---
title: Using RadControls for WinForms inside a WinForms validation process
description: Using RadControls for WinForms inside a WinForms validation process. Check it now!
type: how-to
page_title: Using RadControls for WinForms inside a WinForms validation process
slug: using-radcontrols-for-winforms-inside-a-winforms-validation-process
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q1 2007|RadControls for WinForms|Dimitar Kapitanov|Feb. 22, 2007| 

  
**HOW-TO**  
 Use RadControls for WinForms inside a WinForms validation process  
   
**SOLUTION**  
All controls provided in the RadControls for WinForms suite support the validation handling, provided by windows forms. The validation mechanism in WinForms is somewhat cumbersome, too simple for most cases, and not very well implemented, however when properly used it allows to accomplish different validation scenarios.  
   
We have a simple example in our Quick Start Framework application that we will explain in more detail here. In this demonstration we will use a RadTabStrip control that has its **CausesValidation** property set to **true**, and a textbox which has a “non empty” condition – this means that the textbox will validate to false if left empty.   
   

Inside the **InitializeComponent** method created by the form designer we have a section for the textbox which initializes and attaches an eventhandler to the Validating event of the textbox, thus providing a mechanism for custom validation:   
 
````C#

private void InitializeComponent()  
{  
this.testBox1.Location = new System.Drawing.Point(117, 82);  
this.testBox1.Name = "testBox1";  
this.testBox1.Size = new System.Drawing.Size(186, 20);  
this.testBox1.TabIndex = 0;  
this.testBox1.Validating += new System.ComponentModel.CancelEventHandler(this.testBox1_Validating);  
}     

````
````VB.NET
Private Sub InitializeComponent()
    Me.testBox1.Location = New System.Drawing.Point(117, 82)
    Me.testBox1.Name = "testBox1"
    Me.testBox1.Size = New System.Drawing.Size(186, 20)
    Me.testBox1.TabIndex = 0
    AddHandler Me.testBox1.Validating, New System.ComponentModel.CancelEventHandler(Me.testBox1_Validating)
End Sub

````

 
The code that does the real validation inside the eventhandler is:
 
````C#
private void testBox1_Validating(object sender, CancelEventArgs e)  
{  
if (testBox1.Text == string.Empty)  
    {  
      MessageBox.Show("You have to enter a name.");  
      e.Cancel = true;  
    }  
}    

````
````VB.NET 
Private Sub testBox1_Validating(ByVal sender As Object, ByVal e As CancelEventArgs)
    If testBox1.Text = String.Empty Then
        MessageBox.Show("You have to enter a name.")
        e.Cancel = True
    End If
End Sub

````
  
If the textbox is empty, the conditions are not met, so we cancel the user-invoked action inside the event parameters. This triggers the focus to be returned back to the textbox until the requirements are satisfied.  
   
The form, which is the root of all validation activities and configuration, has a property **AutoValidate**, which is set to **EnablePreventFocusChange** (implicit validation occurs when the control loses focus).  
   
This means that if you have **CausesValidation** set to **true** inside the textbox, a validation will be triggered only when the textbox loses focus. Also the control that accepts the focus must have its **CausesValidation** set to **true** to be inside the validation process or else it will allow the change of focus. 

