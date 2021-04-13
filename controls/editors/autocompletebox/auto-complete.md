---
title: Auto-Complete
page_title: Auto-Complete | RadAutoCompleteBox
description: RadAutoCompleteBox can automatically complete the input string by comparing the prefix being entered to the prefix of all strings in the maintained source.
slug: winforms/editors/autocompletebox/auto-complete
tags: auto-complete
published: True
position: 6
previous_url: editors-autocompletebox-auto-complete
---

# Auto-Complete

The __RadAutoCompleteBox__ can automatically complete the input string by comparing the prefix being entered to the prefix of all strings in the maintained source. This is useful for __RadAutoCompleteBox__ where URLs, addresses, file names or commands will be frequently entered.
        

There are four different modes:

* __Append:__  Appends the remainder of the most likely candidate string to the existing characters, highlighting the appended characters. 
		  	

* __None:__ - disables the automatic completion feature. 
		 	 

* __Suggest:__ - Displays the auxiliary drop-down list associated with the edit control. This drop-down is populated with all matching completion strings.
		 	 

* __SuggestAppend:__ - Applies both `Suggest` and `Append` options.
		 	 

You can change the completion behavior by setting the __AutoCompleteMode__ property. You can determine the items used for auto-completion by specifying a data source or adding the items manually.


## Auto-completion data binding

__RadAutoCompleteBox__ can be bound to the following data sources:

* Array and ArrayList of simple types or custom objects.

* Generic Lists of simple types or custom objects.

* BindingList or other IBindingList implementations.

* Database data using DataTable and DataSet from a wide range of providers (MS SQL, Oracle, Access, anything accessible through OleDb).

Three properties control data binding:

* The __AutoCompleteDataSource__ property specifies the source of the data to be bound.

* The __AutoCompleteDisplayMember__ property specifies the particular data to be displayed in the auto-completion drop down.

* The __AutoCompleteValueMember__ property specifies the particular data to be returned as the value of the tokenized block element.

To set the __AutoCompleteDataSource__ property, select the __AutoCompleteDataSource__ in the `Properties` window of Visual Studio, click the drop-down arrow to display all existing data sources on the form. Click the `Add Project Data Source` link and follow the instructions in the `Data Source Configuration Wizard` to add a data source to your project. You can use databases, web services, or objects as data sources.

>caption Figure 1: The AutoCompleteDataSource property in Visual Studio.        
![editors-autocompletebox-autocomplete 001](images/editors-autocompletebox-autocomplete001.png)

__AutoCompleteDisplayMember__: To set the __AutoCompleteDisplayMember__ property, first set the data source property. Then, select a value for the __AutoCompleteDisplayMember__ property from the drop-down list in the Properties window.
		

__AutoCompleteValueMember__: To set the __AutoCompleteValueMember__ property, first set the __AutoCompleteDataSource__ property. Then, select a value for the __AutoCompleteValueMember__ property from the drop-down list in the Properties window.
		 
## Auto-completion in unbound mode

To use auto-completion without specifying a data source, you need to populate the items which will be used for completing the input string in RadAutoCompleteBox in the __Items__ collection of the control: 

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=addItems}} 
{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=addItems}} 

````C#
private void AddAutoCompleteItems()
{
    RadListDataItemCollection items = this.radAutoCompleteBox1.AutoCompleteItems;
    items.Add(new RadListDataItem("Joe Smith", "joe@fakecompany.com"));
    items.Add(new RadListDataItem("Adam Petersen", "adam@qwerty.com"));
    items.Add(new RadListDataItem("Jack Russel", "jack@russel.nocom"));
    items.Add(new RadListDataItem("Daniel Finger", "daniel.pinger@gmail.com"));
    items.Add(new RadListDataItem("Richard Vail", "rvail@richardvail.com"));
    items.Add(new RadListDataItem("Sebastian Jonnson", "s.jonnson@sjonnson.com"));
    items.Add(new RadListDataItem("Lee Cooper", "lee.cooper@coopercoorp.com"));
    items.Add(new RadListDataItem("Kelvin Clain", "kclain@clainkevin.com"));
    items.Add(new RadListDataItem("Maria Jenson", "mjenson@mariajenson.com"));
    items.Add(new RadListDataItem("Chelsea Maarten", "chelsea@maarten.com"));
    items.Add(new RadListDataItem("Jenson Chew", "jenson.chew@nospam.com"));
    items.Add(new RadListDataItem("Martin Williams", "m.williams@martinandwilliams.com"));
    items.Add(new RadListDataItem("Telerik", "clientservice@telerik.com"));
    items.Add(new RadListDataItem("James Stone", "james.stone@manystones.com"));
    items.Add(new RadListDataItem("Samuel Jackson", "samuel.jackson@nojackson.com"));
}

````
````VB.NET
Private Sub AddAutoCompleteItems()
    Dim items As RadListDataItemCollection = Me.RadAutoCompleteBox1.AutoCompleteItems
    items.Add(New RadListDataItem("Joe Smith", "joe@fakecompany.com"))
    items.Add(New RadListDataItem("Adam Petersen", "adam@qwerty.com"))
    items.Add(New RadListDataItem("Jack Russel", "jack@russel.nocom"))
    items.Add(New RadListDataItem("Daniel Finger", "daniel.pinger@gmail.com"))
    items.Add(New RadListDataItem("Richard Vail", "rvail@richardvail.com"))
    items.Add(New RadListDataItem("Sebastian Jonnson", "s.jonnson@sjonnson.com"))
    items.Add(New RadListDataItem("Lee Cooper", "lee.cooper@coopercoorp.com"))
    items.Add(New RadListDataItem("Kelvin Clain", "kclain@clainkevin.com"))
    items.Add(New RadListDataItem("Maria Jenson", "mjenson@mariajenson.com"))
    items.Add(New RadListDataItem("Chelsea Maarten", "chelsea@maarten.com"))
    items.Add(New RadListDataItem("Jenson Chew", "jenson.chew@nospam.com"))
    items.Add(New RadListDataItem("Martin Williams", "m.williams@martinandwilliams.com"))
    items.Add(New RadListDataItem("Telerik", "clientservice@telerik.com"))
    items.Add(New RadListDataItem("James Stone", "james.stone@manystones.com"))
    items.Add(New RadListDataItem("Samuel Jackson", "samuel.jackson@nojackson.com"))
End Sub

````

{{endregion}} 
 
>caption Figure 2: RadAutoCompleteBox with some items added directly. 

![editors-autocompletebox-autocomplete 002](images/editors-autocompletebox-autocomplete002.png)

## Allow Duplicates

As of **R1 2020 SP1** **RadAutoCompleteBox** offers the **AllowDuplicates** property. It controls whether already selected items can be suggested.

|AllowDuplicates=true|AllowDuplicates=false|
|----|----|
|![editors-autocompletebox-autocomplete 004](images/editors-autocompletebox-autocomplete004.png)|![editors-autocompletebox-autocomplete 003](images/editors-autocompletebox-autocomplete003.png)|

Note that you can still add duplicated tokens in the editor if you type them manually. In order to avoid that you can subscribe to **TokenValidating** event and if the existing text in **RadAutoCompleteBox** contains the new text, set the **IsValidToken** property to *false*.  

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=InvalidToken}}
{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=InvalidToken}}

````C#
              private void RadAutoCompleteBox1_TokenValidating(object sender, TokenValidatingEventArgs e)
        {
            if (this.radAutoCompleteBox1.Text.Contains(e.Text))
            {
                e.IsValidToken = false;
            }
        }    

````
````VB.NET
	      Private Sub RadAutoCompleteBox1_TokenValidating(ByVal sender As Object, ByVal e As TokenValidatingEventArgs)
        If Me.radAutoCompleteBox1.Text.Contains(e.Text) Then
            e.IsValidToken = False
        End If
    End Sub   

````

{{endregion}}


# See Also

* [Caret Positioning and Selection]({%slug winforms/editors/autocompletebox/caret-positioning-and-selection%})
* [Creating Custom Blocks]({%slug winforms/editors/autocompletebox/creating-custom-blocks%})
* [Element Structure and Document Object Model]({%slug winforms/editors/autocompletebox/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/autocompletebox/formatting-blocks%})
* [Text Editing]({%slug winforms/editors/autocompletebox/text-editing%})
