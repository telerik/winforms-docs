---
title: Tutorial Binding to DataTable or DataSet
page_title: Tutorial Binding to DataTable or DataSet - WinForms GridView Control
description: Learn how you can bind WinForms GridView to a DataTable or a DataSet.
slug: winforms/gridview/populating-with-data/tutorial:-binding-to-datatable-or-dataset
tags: tutorial,binding,to,datatable,or,dataset
published: True
position: 5
previous_url: gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset
---

# Tutorial: Binding to DataTable or DataSet

The following tutorial demonstrates binding to a single database table. For information on binding to multiple tables see the [Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%}) topic. 

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 001](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset001.png)

>important This tutorial is applicable for Visual Studio 2019 (or prior versions).  If you're using Visual Studio to connect to Access databases, you will need to be aware that versions of Visual Studio prior to Visual Studio 2022 are all 32-bit processes. This means some of the data tools in Visual Studio 2019 and earlier will only be able to connect to Access databases using 32-bit data providers. The last version of Visual Studio that was a 32-bit process was Visual Studio 2019. [READ MORE](https://docs.microsoft.com/en-us/visualstudio/data-tools/connect-to-data-in-an-access-database-windows-forms?view=vs-2022)

1\. Place a **RadGridView** component on a form. Set the __Dock__ property to *Fill*.

2\. In the Properties window locate the __DataSource__ property and click the arrow to open the list. Select the __Add Project Data Source...__ link. *This step will display the Data Source Configuration Wizard.*

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 002](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset002.png)

3\. In the `Data Source Configuration Wizard` __Choose a Data Source Type page__, select the __Database__ icon. Click the __Next__ button.

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 003](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset003.png)

4\. In the `Choose Your data Connection` page click the __New Connection...__ button. *This step will display the Add Connection dialog.*![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 004](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset004.png)

5\. In the `Add Connection` dialog click the __Change...__ button. This step will display the `Change Data Source dialog`.

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 005](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset005.png)

6\. Select the __Microsoft Access Database File__ data source. Click the __OK__ button to close the `Change Data Source` dialog.

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 006](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset006.png)

7\. The `Add Connection` dialog will appear. Click the Database File Name __Browse__ button and locate the "NWind.mdb" file from the Telerik UI for WinForms directory in the "\Examples\DataSources" directory. Click the __OK__ button to close the `Add Connection` dialog.
            

8\. In the `Choose Your Database Objects` page, select the __"Categories"__ table. Click the __Finish__ button to close the `Data Source Configuration Wizard`.

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 007](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset007.png)

9\. In the Visual Studio Properties window for the grid __DataSource__ property select the __"Categories"__ table. *This step will create DataSet, BindingSource and TableAdapter objects for the categories table.*

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 008](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset008.png)

10\. The project design should look something like the screenshot below. Note the new data components in the component tray under the design surface.

![gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset 009](images/gridview-populating-with-data-tutorial-binding-to-datatable-or-dataset009.png)

11\. Replace the Form_Load event handler with the following code. *The "foreach" code iterates all the columns in the grid and calls BestFit() so that the columns will expand to show the data*.

{{source=..\SamplesCS\GridView\PopulatingWithData\TutorialBindingToDataTableOrDataSet.cs region=bestFitColumns}} 
{{source=..\SamplesVB\GridView\PopulatingWithData\TutorialBindingToDataTableOrDataSet.vb region=bestFitColumns}} 

````C#
private void TutorialBindingToDataTableOrDataSet_Load(object sender, EventArgs e)
{
    this.categoriesTableAdapter.Fill(this.nwindDataSet.Categories);
    foreach (GridViewDataColumn column in radGridView1.Columns)
    {
        column.BestFit();
    }
}

````
````VB.NET
Private Sub TutorialBindingToDataTableOrDataSet_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    Me.CategoriesTableAdapter.Fill(Me.NwindDataSet.Categories)
    For Each column As GridViewDataColumn In RadGridView1.Columns
        column.BestFit()
    Next
End Sub

````

{{endregion}} 

12\. Press __F5__ to run the application.
            
# See Also
* [Bind to XML]({%slug winforms/gridview/populating-with-data/bind-to-xml%})

* [Bindable Types]({%slug winforms/gridview/populating-with-data/bindable-types%})

* [Binding to a Collection of Interfaces]({%slug winforms/gridview/populating-with-data/binding-to-a-collection-of-interfaces%})

* [Binding to Array and ArrayList]({%slug winforms/gridview/populating-with-data/binding-to-array-and-arraylist%})

* [Binding to BindingList]({%slug winforms/gridview/populating-with-data/binding-to-bindinglist%})

* [Binding to DataReader]({%slug winforms/gridview/populating-with-data/binding-to-datareader%})

* [Binding to EntityFramework using Database first approach]({%slug winforms/gridview/populating-with-data/binding-to-entityframework-using-database-first-approach%})

* [Binding to Generic Lists]({%slug winforms/gridview/populating-with-data/binding-to-generic-lists%})

* [How to Bind GridView to a Local SQL Server]({%slug gridview-databinding-tutorial-sql-server%})

