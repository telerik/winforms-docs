---
title: Change The Editor To a Bound RadDropDownList
page_title: Change the editor to a bound RadDropDownList - WinForms DataEntry Control
description: Learn how to change the editor in WinForms DataEntry to a bound RadDropDownList.
slug: winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist
tags: change,the,editor,to,a,bound,raddropdownlist
published: True
position: 1
previous_url: dataentry-how-to-change-editor-to-drop-down-list
---

# Change The Editor To a Bound RadDropDownList

This article will walk you through the process of changing the default editor to a bound drop down list, where the current value corresponds to a value within the drop down list data source. The case where the corresponding values are nullable is also handled. 

>caption Figure 1: Custom Editor

![WinForms RadDataEntry Custom Editor](images/dataentry-how-to-change-editor-to-drop-down-list001.png)

1\. First you can subscribe to the __BindingCreating__, __BindingCreated__ and __EditorInitializing__ events of __RadDataEntry__ (please note that this should be done before the data entry control is being data bound). 

#### Subscribe to Events

<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-subscribe-cs'/>
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-subscribe-vb'/>



2\. In the __EditorInitializing__ event handler, you will be able to change the automatically generated editor with RadDropDownList. In addition, you should set it up as needed. In this case we will set the __DataSource__, __DisplayMember__ and  __ValueMenber__ properties. 

#### Change Default Editor

<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-editor-cs'/>
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-editor-vb'/>




3\. In order the values to be synchronized correctly, the bound property should be set in the __BindingCreating__ event handler. In this case it should be set to the __SelectedValue__ property.

#### Map Property

<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-creating-cs'/>
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-creating-vb'/>



4\. When the data source is using nullable values in order the user to be able to change the current value via the drop down list, the result value should be manually parsed. This can be done in the binding's __Parse__ event. You can subscribe to this event in the __BindingCreated__ event handler (in order this event to fire the formatting should be enabled). 

#### Enable Formatting

<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-created-cs'/>
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-created-vb'/>



 
To make the example complete you can use the following classes.

#### Data Models
        
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-data-cs'/>
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-data-vb'/>



You can initialize the data sources in the Form’s constructor.

#### Initialize Data
        
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-init-cs'/>
<snippet id='dataentry-change-the-editor-to-a-bound-raddropdownlist-init-vb'/>



# See Also

 * [Structure]({%slug  winforms/dataentry/control-element-structure%})
 * [Getting Started]({%slug  winforms/dataentry/getting-started%})
 * [Properties, events and attributes]({%slug  winforms/dataentry/properties,-events-and-attributes%})
 * [Validation]({%slug winforms/dataentry/validation%})
 * [Themes]({%slug winforms/dataentry/themes%})

