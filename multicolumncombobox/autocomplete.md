---
title: Auto-Complete
page_title: Auto-Complete
description: Auto-Complete
slug: multicolumncombobox-autocomplete
tags: auto-complete
published: True
position: 4
---

# Auto-Complete



## 

__RadMultiColumnComboBox__ provides flexible auto-completion options that suggests
          and appends text from the available in the list options as the user types.
        

The __AutoCompleteMode__ property controls the auto-complete behavior and can be set to
          *None, Suggest,Append* and *SuggestAppend*:
        

* __None__: Nothing happens when a user begins to type into the text box portion of the control.
            ![multicolumncombobox-autocomplete 001](images/multicolumncombobox-autocomplete001.png)

#### __[C#] __

{{source=..\SamplesCS\MultiColumnComboBox\AutoCompleteMultiColumnComboBox.cs region=AutoCompleteMode.None}}
	        this.radMultiColumnComboBox1.AutoCompleteMode = AutoCompleteMode.None;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\MultiColumnComboBox\AutoCompleteMultiColumnComboBox.vb region=AutoCompleteMode.None}}
	        Me.RadMultiColumnComboBox1.AutoCompleteMode = AutoCompleteMode.None
	{{endregion}}



* __Append__: As the user types, the next item in the list that matches the user input is automatically appended to the characters the user has already typed. The popup is not shown without the user clicking the arrow.
            ![multicolumncombobox-autocomplete 002](images/multicolumncombobox-autocomplete002.png)

#### __[C#] __

{{source=..\SamplesCS\MultiColumnComboBox\AutoCompleteMultiColumnComboBox.cs region=AutoCompleteMode.Append}}
	        this.radMultiColumnComboBox1.AutoCompleteMode = AutoCompleteMode.Append;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\MultiColumnComboBox\AutoCompleteMultiColumnComboBox.vb region=AutoCompleteMode.Append}}
	        Me.RadMultiColumnComboBox1.AutoCompleteMode = AutoCompleteMode.Append
	{{endregion}}



* __Suggest__: As the user types an entry into the text box, the drop-down portion of the control is shown
              and the displayed items are filtered according to the entered text. This property is the same as the 
              Filter property
            ![multicolumncombobox-autocomplete 003](images/multicolumncombobox-autocomplete003.png)

#### __[C#] __

{{source=..\SamplesCS\MultiColumnComboBox\AutoCompleteMultiColumnComboBox.cs region=AutoCompleteMode.Suggest}}
	        this.radMultiColumnComboBox1.AutoCompleteMode = AutoCompleteMode.Suggest;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\MultiColumnComboBox\AutoCompleteMultiColumnComboBox.vb region=AutoCompleteMode.Suggest}}
	        Me.RadMultiColumnComboBox1.AutoCompleteMode = AutoCompleteMode.Suggest
	{{endregion}}


