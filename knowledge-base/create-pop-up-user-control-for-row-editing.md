---
title: Create pop-up user control for row editing
description: Create pop-up user control for row editing. Check it now!
type: how-to
page_title: Create pop-up user control for row editing
slug: create-pop-up-user-control-for-row-editing
tags: gridview
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|2016.2.608|RadGridView for WinForms|[Stefan Stefanov](https://www.telerik.com/blogs/author/stefan-stefanov)|June, 2016|

  
**HOW-TO**  
Create a UserControl, that pops up underneath the current row after clicking "Edit" button. The UserControl provides allows editing the row.  
![](Images/GridCustomRowForEditing.png)
    
**SOLUTION**  
Let's start with creating the **UserControl**. There you can add the some controls that will help you to edit the cells in the grid. In our case we have added **RadTextBox**, **RadDateTimePicker**and **RadButton**. That is all you need to do in the **UserControl**. Perhaps you can modify some of these controls' properties (i.e. **NullDate**/ **MinDate** for RadDateTimePicker)  
  
Then in your main form add a **RadGridView**, subscribe to its **CreateCell**event and populate the grid. In our case it is manually populated by using our **BingGrid()** method, where two **GridViewTextBoxColumns**and one **GridViewDateTimeColumn** are added. The first text box column is going to be used for storing our "Edit" button, and the other two respectively for storing the grid cells values.  
  
Now we have to use our **CustomCell**class which is going to be used in the first text box column. For this purpose we are creating a descendant of **GridDataCellElement**class where we add two fields - one for **RadDropDownButton**(which is going to be our "Edit" button) and one for our **UserControl**. Then override the **CreateChildElements()** method, where you have to instantiate **RadDropDownButton**, manage its properties by your discretion and add it as a child of the **CustomCell**.   
  
Afterwards create a custom method (in this case **CreateDropDownButton()**), which returns **RadMenuHostItem**, that hosts an instance of the **UserControl**. The returned value is added to the items collection of **RadDropDownButton**in **CreateChildElements()** method. In this method we also subscribe to **RadDropDownButton's**click event and for our **saveButton's**(from the user control) click event.   
  
The **RadDropDownButton's**click event is used to retrieve the values from the cell into the user controls' textbox and date time picker respectively.  
  
The **saveButton`s** click event is used to set the values from these controls, back into the grid cells.  

>note You can download a complete VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/GridView/EditRowInACustomForm).
  
