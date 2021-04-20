---
title: Content Controls (Structured Document Tags) 
page_title: Content Controls | RadRichTextEditor
description: This article describes which content controls are supported in RadRichTextEditor
slug: radrichtexteditor-features-content-controls
tags: content controls, richtexteditor
published: True
position: 0
---

# Content Controls (Structured Document Tags)

Structured Document Tags (SDT) enable users to add specific semantics to a part of the document: restricting input, binding to data source, modifying editing behavior etc. 

>note Currently, **RadRichTextEditor** can import and export content controls from and to Office Open XML (docx) and XAML formats. When exporting to other formats the content controls will be lost, however, their content (current value) will be exported.

## Content controls inside the document

The contented controls can be defined on __Block__, __Inline__, __Row__ or __Cell__ level. The content controls can contain other content controls as well. In addition, one can modify the editing behavior of the content controls. This means that you can lock the content of the content control, the entire content control or both.

## Supported content controls

* __Bibliography__
* __CheckBox__
* __Citation__
* __ComboBox__
* __Date__
* __DocumentPart__
* __DocumentPartGallery__
* __DropDownList__
* __Equation__
* __Group__
* __Picture__
* __RichText__
* __Text__
* __RepeatingSection__
* __RepeatingSectionItem__

The following content controls are not supported by __Microsoft Word__:  
* __Bibliography__
* __Equation__

## Common content controls properties

The above content controls share the following properties: 

* __Type:__ Gets the type of the current content control. 
* __ID:__ Gets or sets the ID of the associated SDT. Each content control must have an unique ID.
* __DataBinding:__ Gets or sets an XML mapping (DataBinding) that relates the content of associated SDT to a specific XML node.
* __Lock:__ This property controls if the entire content control or its contents can be edited or deleted. The possible values are:
    - __Unlocked:__ The content control can be edited and deleted. 
    - __SdtLocked:__ The content control can be edited but cannot be deleted.
    - __ContentLocked:__ The content control cannot be edited, the entire content control can be deleted.
    - __SdtContentLocked:__ The content control cannot be edited or deleted. 
* __Alias:__ Gets or sets the name for the associated content control.
* __Tag__ Gets or sets a tag for the associated SDT.
* __IsTemporary__ Gets or sets a value that indicates whether this SDT will be removed after editing its content.
* __OutlineColor:__ Gets or sets the color that is used for visualizing the outline.
* __OutlineAppearance__ Represents the different options for visualizing the outline of a content control.The possible values are:
    - __BoundingBoxes:__ The content is wrapped in a bounding box that may also contain a specific editor.
    - __Tags:__ The content is wrapped in design view tag.
    - __None:__ The content does not have outline visualization.
* __PlaceHolder:__ Gets or set the associated placeholder object.
    - __ShowPlaceHolder:__ This property enables/disables the Placeholder editing behavior.
    - __PlaceholderText:__ This property holds the Placeholder text.


## Content controls that have specific properties. 

### CheckBox

The __CheckBox__ content control exposes two properties __CheckedState__ and __UnCheckedState__, both properties are of type __SdtCheckBoxState__ which allows you to set the respective character and its font. The __Checked__ property specifies whether the checkbox is checked.

#### Example 1: Setting CheckBox properties

{{source=..\SamplesCS\RichTextEditor\ContentControls\ContentControls.cs region=CheckBoxProperties}} 
{{source=..\SamplesVB\RichTextEditor\ContentControls\ContentControls.vb region=CheckBoxProperties}} 

````C#
SdtCheckBoxState checkedBoxState = new SdtCheckBoxState();
checkedBoxState.Font = new Telerik.WinControls.RichTextEditor.UI.FontFamily("Arial");
checkedBoxState.CharacterCode = 0040;

SdtCheckBoxState uncheckedBoxState = new SdtCheckBoxState();
uncheckedBoxState.Font = new Telerik.WinControls.RichTextEditor.UI.FontFamily("Arial");
uncheckedBoxState.CharacterCode = 0024;

CheckBoxProperties properties = new CheckBoxProperties();
properties.CheckedState = checkedBoxState;
properties.UncheckedState = uncheckedBoxState;
properties.Checked = true;

````
````VB.NET
Dim checkedBoxState = New SdtCheckBoxState()
checkedBoxState.Font = New Telerik.WinControls.RichTextEditor.UI.FontFamily("Arial")
checkedBoxState.CharacterCode = 40

Dim uncheckedBoxState = New SdtCheckBoxState()
uncheckedBoxState.Font = New Telerik.WinControls.RichTextEditor.UI.FontFamily("Arial")
uncheckedBoxState.CharacterCode = 24

Dim properties = New CheckBoxProperties()
properties.CheckedState = checkedBoxState
properties.UncheckedState = uncheckedBoxState
properties.Checked = True

````

### ComboBox and DropDownList

The __ComboBox__ and __DropDownList__ provider the user with options to choose from. The only difference is that when using ComboBox you can add a value that is not in the data source.
* __Items:__ Allows you to specify the predefined items. 
* __LastValue:__ Return the currently selected value. 
* __SelectedItem:__ Holds the currently selected item object. It offers the following properties:
    - __DisplayText__: Holds the displayed in the ComboBox/DropdownList text.
    - __Value__: Holds the value, which can be propagated through a data-binding relation.

#### Example 2: Setting ComboBox properties

{{source=..\SamplesCS\RichTextEditor\ContentControls\ContentControls.cs region=ComboBoxProperties}} 
{{source=..\SamplesVB\RichTextEditor\ContentControls\ContentControls.vb region=ComboBoxProperties}} 

````C#
List<ListItem> items = new List<ListItem>();
items.Add(new ListItem() { DisplayText = "Choice 1", Value = "a" });
items.Add(new ListItem() { DisplayText = "Choice 2", Value = "b" });

ComboBoxProperties properties = new ComboBoxProperties();
properties.Items = items;
properties.SelectedItem = items.Where(li => li.Value == "a").FirstOrDefault();

````
````VB.NET
Dim items As List(Of ListItem) = New List(Of ListItem)()
items.Add(New ListItem() With {
    .DisplayText = "Choice 1",
    .Value = "a"
})
items.Add(New ListItem() With {
    .DisplayText = "Choice 2",
    .Value = "b"
})

````

### Date

The __Date__ content control allows you to enter a date by using a calendar. The date content control has the following properties:
* __DateFormat:__ Gets or sets the format string of the date. If it is omitted the default date format for the language is used.
* __Language:__ Gets or sets the CultureInfo object for the date format.
* __FullDate:__ Gets or sets the date time content.
* __Calendar:__ Gets or sets the type of calendar that is used for displaying the content.  
* __DateMappingType__ Gets or sets the data type (e.g. Date, DateTime, and Text) that is used for storing mapped date time value.

#### Example 3: Setting Date properties

{{source=..\SamplesCS\RichTextEditor\ContentControls\ContentControls.cs region=DateProperties}} 
{{source=..\SamplesVB\RichTextEditor\ContentControls\ContentControls.vb region=DateProperties}} 

````C#
DateProperties properties = new DateProperties();
properties.DateFormat = "MM/dd/yyyy H:mm";
properties.Language = new CultureInfo("bg-BG");
properties.FullDate = DateTime.Now;
properties.Calendar = SdtCalendar.Gregorian;
properties.DateMappingType = DateMappingType.DateTime;

````
````VB.NET
Dim properties As DateProperties = New DateProperties()
properties.DateFormat = "MM/dd/yyyy H:mm"
properties.Language = New CultureInfo("bg-BG")
properties.FullDate = DateTime.Now
properties.Calendar = SdtCalendar.Gregorian
properties.DateMappingType = DateMappingType.DateTime

````

### Text 

The __Text__ content control allows you to enter plain text. The text content control has the following property:
* __IsMultiline:__ Gets or sets a value that indicates whether the SDT supports new lines in its content.

#### Example 4: Setting Text properties

{{source=..\SamplesCS\RichTextEditor\ContentControls\ContentControls.cs region=TextProperties}} 
{{source=..\SamplesVB\RichTextEditor\ContentControls\ContentControls.vb region=TextProperties}} 

````C#
TextProperties properties = new TextProperties();
properties.IsMultiline = true;

````
````VB.NET
Dim properties As TextProperties = New TextProperties()
properties.IsMultiline = True

````

### RepeatingSection

The __RepeatingSection__ content control repeats the content contained within it. The repeating section content control has the following properties:
* __SectionTitle:__ Gets or sets the title of the section.
* __AllowInsertAndDeleteSections:__ Gets or sets a value that indicates whether the underlying sections can be modified.

#### Example 5: Setting RepeatingSection properties

{{source=..\SamplesCS\RichTextEditor\ContentControls\ContentControls.cs region=RepeatingSectionProperties}} 
{{source=..\SamplesVB\RichTextEditor\ContentControls\ContentControls.vb region=RepeatingSectionProperties}} 

````C#
RepeatingSectionProperties properties = new RepeatingSectionProperties();
properties.SectionTitle = "Title";
properties.AllowInsertAndDeleteSections = true;

````
````VB.NET
Dim properties As RepeatingSectionProperties = New RepeatingSectionProperties()
properties.SectionTitle = "Title"
properties.AllowInsertAndDeleteSections = True

````


# See Also
* [Working with Content Controls]({%slug radrichtexteditor-features-working-with-content-controls%})