---
title: Column Groups View
page_title: Column Groups View | UI for WinForms Documentation
description: Column Groups View
slug: winforms/gridview/view-definitions/column-groups-view
tags: column,groups,view
published: True
position: 2
---

# Column Groups View



## 

Just as its name says, this view enables grouping of columns. Every column group can have an unlimited number of subgroups or
          rows containing columns. In the following example, the grid is bound to the Customers table from the Northwind data base. 
          First instantiate ColumnGroupsViewDefinition and add some groups first:#_[C#] Create groups_

	



{{source=..\SamplesCS\GridView\ViewDefinitions\ColumnGroupsView.cs region=createGroups}} 
{{source=..\SamplesVB\GridView\ViewDefinitions\ColumnGroupsView.vb region=createGroups}} 

````C#
            ColumnGroupsViewDefinition view = new ColumnGroupsViewDefinition();
            view.ColumnGroups.Add(new GridViewColumnGroup("Customer Contact"));
            view.ColumnGroups.Add(new GridViewColumnGroup("Details"));
            view.ColumnGroups[1].Groups.Add(new GridViewColumnGroup("Address"));
            view.ColumnGroups[1].Groups.Add(new GridViewColumnGroup("Contact"));
````
````VB.NET
        Dim view As New ColumnGroupsViewDefinition()
        view.ColumnGroups.Add(New GridViewColumnGroup("Customer Contact"))
        view.ColumnGroups.Add(New GridViewColumnGroup("Details"))
        view.ColumnGroups(1).Groups.Add(New GridViewColumnGroup("Address"))
        view.ColumnGroups(1).Groups.Add(New GridViewColumnGroup("Contact"))
        '
````

{{endregion}} 




Then add at least one row. This row will contain the desired columns:#_[C#] Add rows to groups_

	



{{source=..\SamplesCS\GridView\ViewDefinitions\ColumnGroupsView.cs region=addRows}} 
{{source=..\SamplesVB\GridView\ViewDefinitions\ColumnGroupsView.vb region=addRows}} 

````C#
            view.ColumnGroups[0].Rows.Add(new GridViewColumnGroupRow());
            view.ColumnGroups[0].Rows[0].Columns.Add(this.radGridView1.Columns["CompanyName"]);
            view.ColumnGroups[0].Rows[0].Columns.Add(this.radGridView1.Columns["ContactName"]);
            view.ColumnGroups[0].Rows[0].Columns.Add(this.radGridView1.Columns["ContactTitle"]);

            view.ColumnGroups[1].Groups[0].Rows.Add(new GridViewColumnGroupRow());
            view.ColumnGroups[1].Groups[0].Rows[0].Columns.Add(this.radGridView1.Columns["Address"]);
            view.ColumnGroups[1].Groups[0].Rows[0].Columns.Add(this.radGridView1.Columns["City"]);
            view.ColumnGroups[1].Groups[0].Rows[0].Columns.Add(this.radGridView1.Columns["Country"]);

            view.ColumnGroups[1].Groups[1].Rows.Add(new GridViewColumnGroupRow());
            view.ColumnGroups[1].Groups[1].Rows[0].Columns.Add(this.radGridView1.Columns["Phone"]);
            view.ColumnGroups[1].Groups[1].Rows[0].Columns.Add(this.radGridView1.Columns["Fax"]);
````
````VB.NET
        view.ColumnGroups(0).Rows.Add(New GridViewColumnGroupRow())
        view.ColumnGroups(0).Rows(0).Columns.Add(Me.RadGridView1.Columns("CompanyName"))
        view.ColumnGroups(0).Rows(0).Columns.Add(Me.RadGridView1.Columns("ContactName"))
        view.ColumnGroups(0).Rows(0).Columns.Add(Me.RadGridView1.Columns("ContactTitle"))

        view.ColumnGroups(1).Groups(0).Rows.Add(New GridViewColumnGroupRow())
        view.ColumnGroups(1).Groups(0).Rows(0).Columns.Add(Me.RadGridView1.Columns("Address"))
        view.ColumnGroups(1).Groups(0).Rows(0).Columns.Add(Me.RadGridView1.Columns("City"))
        view.ColumnGroups(1).Groups(0).Rows(0).Columns.Add(Me.RadGridView1.Columns("Country"))

        view.ColumnGroups(1).Groups(1).Rows.Add(New GridViewColumnGroupRow())
        view.ColumnGroups(1).Groups(1).Rows(0).Columns.Add(Me.RadGridView1.Columns("Phone"))
        view.ColumnGroups(1).Groups(1).Rows(0).Columns.Add(Me.RadGridView1.Columns("Fax"))
        '
````

{{endregion}} 




At the end simply set the ViewDefinitions property of RadGridView to the newly created ViewDefinition#_[C#] Set the ViewDefinition property of RadGridView_

	



{{source=..\SamplesCS\GridView\ViewDefinitions\ColumnGroupsView.cs region=setTheViewDefinition}} 
{{source=..\SamplesVB\GridView\ViewDefinitions\ColumnGroupsView.vb region=setTheViewDefinition}} 

````C#
            radGridView1.ViewDefinition = view;
````
````VB.NET
        RadGridView1.ViewDefinition = view
        '
````

{{endregion}} 




The result is:![gridview-viewdefinitions-column-groups-view 001](images/gridview-viewdefinitions-column-groups-view001.jpg)
