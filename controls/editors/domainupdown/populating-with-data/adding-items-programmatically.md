---
title: Adding Items Programmatically
page_title: Adding Items Programmatically - WinForms DomainUpDown Control
description: WinForms DomainUpDown supports adding items at run time, which means that you can manually populate it with data. 
slug: winforms/editors/domainupdown/populating-with-data/adding-items-programmatically
tags: domainupdown
published: True
position: 1 
---
 
# Adding items programmatically

**RadDomainUpDown** supports adding items at run time, which means that you can manually populate it with data. The following example demonstrates how to add three items to the RadDropDownList.**Items** collection specifying the text and image. 


#### Add items programmatically 


````C#
            
            RadListDataItem itemBulgaria = new RadListDataItem();
            itemBulgaria.Text = "Bulgaria";
            itemBulgaria.Image = Properties.Resources.BUL;
            this.radDomainUpDown1.Items.Add(itemBulgaria);

            RadListDataItem itemCanada = new RadListDataItem();
            itemCanada.Text = "Canada";
            itemCanada.Image = Properties.Resources.CA;
            this.radDomainUpDown1.Items.Add(itemCanada);

            RadListDataItem itemGermany = new RadListDataItem();
            itemGermany.Text = "Germany";
            itemGermany.Image = Properties.Resources.DE;
            this.radDomainUpDown1.Items.Add(itemGermany);

````
````VB.NET

        Dim itemBulgaria As RadListDataItem = New RadListDataItem()
        itemBulgaria.Text = "Bulgaria"
        itemBulgaria.Image = My.Resources.BUL
        Me.radDomainUpDown1.Items.Add(itemBulgaria)
        Dim itemCanada As RadListDataItem = New RadListDataItem()
        itemCanada.Text = "Canada"
        itemCanada.Image = My.Resources.CA
        Me.radDomainUpDown1.Items.Add(itemCanada)
        Dim itemGermany As RadListDataItem = New RadListDataItem()
        itemGermany.Text = "Germany"
        itemGermany.Image = My.Resources.DE
        Me.radDomainUpDown1.Items.Add(itemGermany)

````

{{endregion}} 

# See Also

* [Populating with data at Design Time]({%slug winforms/editors/domainupdown/populating-with-data/design-time%})
* [Data Binding]({%slug winforms/editors/domainupdown/populating-with-data/data-binding%})
* [Design Time]({%slug winforms/editors/domainupdown/design-time%}) 
* [Getting Started]({%slug winforms/editors/domainupdown/getting-started%})
* [Structure]({%slug winforms/editors/domainupdown/structure%})