---
title: Creating Hierarchical Grids
page_title: Creating Hierarchical Grids - WinForms GridView Control
description: WinForms GridView has the ability to represent hierarchical master-detail data. 
slug: winforms/gridview/fundamentals/creating-hierarchical-grids
tags: creating,hierarchical,grids
published: True
position: 7
previous_url: gridview-fundamentals-creating-hierarchical-grids
---

# Creating Hierarchical Grids

__RadGridView__ has the ability to represent hierarchical master-detail data. Its hierarchical schema set up either at design-time or at runtime using the control API. You can also set the __AutoGenerateHierarchy__ property to *True* and bind to a __System.Data.DataSet__ type data source to have __RadGridView__ automatically build a hierarchical schema.

#### Create hierarchical grid

<snippet id='gridview-creatinghierarchicalgrid-autogeneratehierarchy-cs' />
<snippet id='gridview-creatinghierarchicalgrid-autogeneratehierarchy-vb' />

The general steps to setting up hierarchical data manually are:

1. Configure the data source components for each table to be displayed.

1. Using __GridViewTemplate.ChildGridViewTemplates__ collection, create a hierarchy of templates, one for every level of master-detail relations. Each template should be bound to its own data source.

1. Populate the __Relations__ collection with __GridViewRelation__ objects. These objects define the relations between views in the hierarchy. The __ParentTemplate__ and __ChildTemplate__ properties of __GridViewRelation__ object are set to the existing templates. __ParentColumnNames__ and __ChildColumnNames__ collections are filled with the names of the fields of the corresponding data sources. See the topic [Tutorial: Binding to Hierarchical Data]({%slug winforms/gridview/hierarchical-grid/binding-to-hierarchical-data%}) for step by step instructions.

# See Also

* [Binding the Grid]({%slug winforms/gridview/fundamentals/binding-the-grid%})

* [Columns]({%slug winforms/gridview/fundamentals/columns%})

* [Editing]({%slug winforms/gridview/fundamentals/editing%})

* [Element Hierarchy]({%slug winforms/gridview/fundamentals/element-hierarchy%})

* [Key Features]({%slug winforms/gridview/fundamentals/key-features%})

* [Keyboard Support]({%slug winforms/gridview/fundamentals/keyboard-support%})

* [Logical vs. Visual Grid Structure]({%slug winforms/gridview/fundamentals/logical-vs.-visual-grid-structure%})

* [Overview of RadGridView Structure]({%slug winforms/gridview/fundamentals/overview-of-radgridview-structure%})

