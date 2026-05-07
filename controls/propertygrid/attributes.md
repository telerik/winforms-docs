---
title: Attributes
page_title: Attributes - RadPropertyGrid
description: This article contains a list of some of the more important and more commonly used attributes used with RadPropertyGrid
slug: winforms/propertygrid/attributes
tags: attributes
published: True
position: 5
previous_url: propertygrid-attributes
---

# Attributes

This article contains a list of some of the more important and more commonly used attributes used with RadPropertyGrid.

## EditorAttribute

With the editor attribute you can specify __UITypeEditor__ as well as __BaseInputEditor__ to be used for a given property.

<snippet id='propertygrid-propertygridattributes-editorattribute-cs' />
<snippet id='propertygrid-propertygridattributes-editorattribute-vb' />



>caption Figure 1: EditorAttribute

![WinForms RadPropertyGrid EditorAttribute](images/propertygrid-attributes001.png)

## RadRangeAttribute 

The range attribute allows you to set a minimum and maximum value to be used for a property that is edited with a RadSpinEditor.

<snippet id='propertygrid-propertygridattributes-radrangeattribute-cs' />
<snippet id='propertygrid-propertygridattributes-radrangeattribute-vb' />



>caption Figure 2: RadRangeAttribute

![WinForms RadPropertyGrid RadRangeAttribute](images/propertygrid-attributes009.png)

## BrowsableAttribute  

Determines whether the property will be included in the collection of properties RadPropertyGridSHows.

<snippet id='propertygrid-propertygridattributes-browsableattribute-cs' />
<snippet id='propertygrid-propertygridattributes-browsableattribute-vb' />



>caption Figure 3: BrowsableAttribute

![WinForms RadPropertyGrid BrowsableAttribute](images/propertygrid-attributes002.png)

## ReadOnlyAttribute   

Determines whether a property can be edited in RadPropertyGrid or not.

<snippet id='propertygrid-propertygridattributes-readonlyattribute-cs' />
<snippet id='propertygrid-propertygridattributes-readonlyattribute-vb' />



## DisplayNameAttribute

Determines the text that will be show for a given property. You can also alter the text for a property by setting its Label.

<snippet id='propertygrid-propertygridattributes-displaynameattribute-cs' />
<snippet id='propertygrid-propertygridattributes-displaynameattribute-vb' />



>caption Figure 4: DisplayNameAttribute

![WinForms RadPropertyGrid DisplayNameAttribute](images/propertygrid-attributes003.png)

## DescriptionAttribute

Defines the text that is displayed for a given property in the help bar of RadPropertyGrid.

<snippet id='propertygrid-propertygridattributes-descriptionattribute-cs' />
<snippet id='propertygrid-propertygridattributes-descriptionattribute-vb' />



>caption Figure 5: DisplayNameAttribute

![WinForms RadPropertyGrid DisplayNameAttribute](images/propertygrid-attributes004.png)

## PasswordPropertyTextAttribute

Determines whether a text property will be edited as a password.

<snippet id='propertygrid-propertygridattributes-passwordpropertytextattribute-cs' />
<snippet id='propertygrid-propertygridattributes-passwordpropertytextattribute-vb' />



>caption Figure 6: PasswordPropertyTextAttribute

![WinForms RadPropertyGrid PasswordPropertyTextAttribute](images/propertygrid-attributes005.png)

## DefaultValueAttribute

Defines the default value to which the property will reset. When the property value is set to something different that the default value, it will be marked as modified.

<snippet id='propertygrid-propertygridattributes-defaultvalueattribute-cs' />
<snippet id='propertygrid-propertygridattributes-defaultvalueattribute-vb' />



>caption Figure 7: DefaultValueAttribute

![WinForms RadPropertyGrid DefaultValueAttribute](images/propertygrid-attributes006.png)

## CategoryAttribute

Defines the category to which the property will be grouped when properties are shown categorized. Any property that does not have this attribute will be categorized in the Misc category.

<snippet id='propertygrid-propertygridattributes-categoryattribute-cs' />
<snippet id='propertygrid-propertygridattributes-categoryattribute-vb' />



>caption Figure 8: CategoryAttribute

![WinForms RadPropertyGrid CategoryAttribute](images/propertygrid-attributes007.png)

## RadSortOrderAttribute

Defines the order in which items would be ordered when no other ordering is applied (Alphabetical or Categorical alphabetical). The order can also be manipulated through the SortOrder property of PropertyGridItem. Setting the property would override the value from the attribute.

<snippet id='propertygrid-propertygridattributes-radsortorderattribute-cs' />
<snippet id='propertygrid-propertygridattributes-radsortorderattribute-vb' />



>caption Figure 9: RadSortOrderAttribute

![WinForms RadPropertyGrid RadSortOrderAttribute](images/propertygrid-attributes008.png)

## RadCheckBoxThreeStateAttribute

The **RadCheckBoxThreeStateAttribute** determines whether properties inside **RadPropertyGrid**, for which a **PropertyGridCheckBoxItemElement** is created, will have a three state check box editor or a two state one.

<snippet id='propertygrid-propertygridattributes-radcheckboxthreestateattribute-cs' />
<snippet id='propertygrid-propertygridattributes-radcheckboxthreestateattribute-vb' />



>caption Figure 10: RadCheckBoxThreeStateAttribute

![WinForms RadPropertyGrid RadCheckBoxThreeStateAttribute](images/propertygrid-attributes010.gif)

## TypeConverterAttribute

The __TypeConverterAttribute__ specifies what type to use as a converter for the object this attribute is bound to. 

<snippet id='propertygrid-propertygridattributes-typeconverterattribute-cs' />
<snippet id='propertygrid-propertygridattributes-typeconverterattribute-vb' />



# See Also

* [Binding to Multiple Objects]({%slug winforms/propertygrid/populating-with-data/binding-to-multiple-objects%})
* [RadPropertyStore - Adding Custom Properties]({%slug winforms/propertygrid/populating-with-data/radpropertystore-adding-custom-properties%})
* [Type Converters]({%slug winforms/propertygrid/type-converters%})
* [How to Show Nested Collections in RadPropertyGrid]({%slug show-nested-collections-in-propertygrid%})
