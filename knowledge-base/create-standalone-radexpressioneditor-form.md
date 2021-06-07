---
title: Create Standalone RadExpressionEditor Form
description: Create Standalone RadExpressionEditor Form. Check it now!
type: how-to
page_title: Create Standalone RadExpressionEditor Form
slug: create-standalone-radexpressioneditor-form
res_type: kb
---

|Date Posted|Product|Author|
|----|----|----|
|09/09/2013|UI for WinForms|Georgi Georgiev|
 
## Problem

You need to allow your users to use expressions such as **Max()**, **Average(),** **Len()** etc.  
   
## Solution
  
Create a standalone **RadExpressionEditor** Form which will work without you needing to display an actual **RadGridView**:  
   
![create-standalone-radexpressioneditor-form001](images/create-standalone-radexpressioneditor-form001.png)
   
The main goal of this standalone form is to allow us to pass it whatever text we need and get the result after closing it. For this we will need to create our own **ExpressionEditor** form which derives from **RadExpressionEditorForm**:  
   
````C#
public partial class StandaloneExpressionEditorForm : RadExpressionEditorForm
{
}

````
````VB.NET
Public Partial Class StandaloneExpressionEditorForm
    Inherits RadExpressionEditorForm
End Class

````

Now you can even customize the form’s look and feel in design time to fit your needs.  

Usually, the **RadExpressionEditorForm** requires a **RadGridView** in order to work. That is why we will need to simulate that. We can avoid the manual creation of the grid by initializing it in the static/shared constructor:  
    
````C#
public partial class StandaloneExpressionEditorForm : RadExpressionEditorForm
{
    private static RadGridView hiddenGrid;
    private static GridViewDataColumn dataColumn;
     
    static StandaloneExpressionEditorForm()
    {
        hiddenGrid = new RadGridView();
        dataColumn = new GridViewTextBoxColumn();
        hiddenGrid.Columns.Add(dataColumn);
        hiddenGrid.Rows.AddNew();
    }
 
    public StandaloneExpressionEditorForm()
        : base(dataColumn)
    {
    }
}

````
````VB.NET
Partial Public Class StandaloneExpressionEditorForm
    Inherits RadExpressionEditorForm
    Private Shared hiddenGrid As RadGridView
    Private Shared dataColumn As GridViewDataColumn
 
    Shared Sub New()
        hiddenGrid = New RadGridView()
        dataColumn = New GridViewTextBoxColumn()
        hiddenGrid.Columns.Add(dataColumn)
        hiddenGrid.Rows.AddNew()
    End Sub
 
    Public Sub New()
        MyBase.New(dataColumn)
    End Sub
End Class


````   

As the static/shared constructor is called before the instance of the form is created it will guarantee us that the grid and its column are initialized.   
   
A sample usage of this class so far would look like this:  
   
````C#
StandaloneExpressionEditorForm form = new StandaloneExpressionEditorForm();

````
````VB.NET
Dim form As New StandaloneExpressionEditorForm()

````

So far, so good. We have a form which can work with expressions without a grid to worry about.   
   

Now we just need to be able to pass it an expression when showing it and receiving the result when it is being closed. As we are going to use the **ShowDialog** method, what we can do is create our own **ShowDialog** method and pass that expression as an argument:  
   
````C#
public DialogResult ShowDialog(object initialValue)
{
    this.Expression = initialValue.ToString();
    return base.ShowDialog();
}

````
````VB.NET
Public Function ShowDialog(initialValue As Object) As DialogResult
    Me.Expression = initialValue.ToString()
    Return MyBase.ShowDialog()
End Function

```` 

As the result is stored in the dummy row, we can just take its value and use it:  
 
````C#
public string ReturnValue
{
    get
    {
        return hiddenGrid.Rows[0].Cells[0].Value.ToString();
    }
}

````
````VB.NET
Public ReadOnly Property ReturnValue() As String
    Get
        Return hiddenGrid.Rows(0).Cells(0).Value.ToString()
    End Get
End Property

````
   
And now our form should be ready to use. Using it can be limited to only 5 lines of code:  
   
````C#
StandaloneExpressionEditorForm form = new StandaloneExpressionEditorForm();
if (form.ShowDialog(this.radTextBox1.Text) == System.Windows.Forms.DialogResult.OK)
{
    this.radTextBox2.Text = form.ReturnValue;
}

````
````VB.NET
Dim form As New StandaloneExpressionEditorForm()
If form.ShowDialog(Me.RadTextBox1.Text) = System.Windows.Forms.DialogResult.OK Then
    Me.RadTextBox2.Text = form.ReturnValue
End If

````

>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/Genral_All_Controls/StandaloneExpressionEditorForm).