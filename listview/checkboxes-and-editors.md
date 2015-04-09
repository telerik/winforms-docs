---
title: Checkboxes and editors
page_title: Checkboxes and editors
description: Checkboxes and editors
slug: listview-checkboxes-and-editors
tags: checkboxes,and,editors
published: True
position: 7
---

# Checkboxes and editors



## Checkboxes

RadListViews' items have built-in checkboxes which can be shown by setting the
          __ShowCheckBoxes__ property of RadListView to *true*.
        

When checkboxes are enabled, you have several options to handle the checked items:

* You can check or uncheck items via the checkbox that is shown in each item

* You can get or set the checked state of the __ListViewDataItem__ directly via
              its __CheckedState__ property
            

* You can get the checked items in RadListView via its __CheckedItems__ collection
            

* You can listen for changes in the check state of the items via the __ItemCheckedChanging__
              and __ItemCheckedChanged__ events.
            

## Editors

By default RadListView allows editing of items. If the __AllowEditing__ property is
          set to *true*, the user may select a item and press __F2 key__
          to initiate editing. By default a text editor is invoked and allows the editing of the items' label.
          When the edit process ends the entered value is assigned to the items' __Value__ property.
          If the user cancels editing by pressing __Escape key__ the value is not persisted.
          Editing can also be initiated and canceled programmatically.
        

* Use the __BeginEdit()__ method to initiate editing on the selected item
            

* Use the __EndEdit()__ method to end editing and save the edited value.
            

* Use the __CancelEdit()__ method to end editing and discard the edited value.
            

The sample code below shows how to start editing using the API:

#### __[C#] Start editing__

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=startEdit}}
	            radListView1.AllowEdit = true;
	            // set the SelectedItem - this item will be edited  
	            // in DetailsView you might also want to set the CurrentColumn property – the value of the selected item in this column will be edited in DetailsView
	            radListView1.SelectedItem = radListView1.Items[0];
	            radListView1.CurrentColumn = radListView1.Columns[0];
	            // this will start edit on selected item
	            radListView1.BeginEdit();
	{{endregion}}



#### __[VB.NET] Start editing__

{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=startEdit}}
	        RadListView1.AllowEdit = True
	        ' set the SelectedItem - this node will be edited  
	        ' in DetailsView you might also want to set the CurrentColumn property – the value of the selected item in this column will be edited in DetailsView
	        RadListView1.SelectedItem = RadListView1.Items(0)
	        RadListView1.CurrentColumn = RadListView1.Columns(0)
	        ' this will start edit on selected item
	        RadListView1.BeginEdit()
	{{endregion}}



## Editing lifecycle

When an item is displayed in RadListView and the user presses __F2 key__ to enter edit mode,
          the following steps are performed:
        

* The __BeginEdit()__ method is called internally
            

* The __ItemEditing__ event is fired. This event is cancelable and
              you can prevent the edit operation from continuing by setting the Cancel property from the arguments to
              *false*.
            

* .A text box editor appears in the selected item.

When an item is brought out of edit mode, the following steps are performed:

* The editor determines if it wants to handle the keystroke - for example Esc - cancels editing, Enter ends editing and submits changes.

* The editor instance performs the action it has defined for the __Enter__ key.
              Typically this indicates that edit mode should be exited and any changes made during the edit session
              should be saved.
            

* In response to the action described in the previous step the __EndEdit()__ method is
              called internally and the __ItemValidating__ event is fired.
            

* The __ValueValidating__ event allows the user to hook up custom logic for verification.
              If the __ValueValidating__ event does not succeed (*e.Cancel is true*),
              __ValidationError__ event is fired to notify all listeners that the validation
              has failed.
            

* Follows the __ItemValueChanging__ event via which you can cancel
              assigning a new value to the item.
            

* If the previous event was not canceled, the new value is assigned to the item
              and the __ItemValueChanged__ event is fired.
            

The Following example demonstrates the usage of __ItemValidating__ event to edit integer values:
        

#### __[C#] Validation__

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=ItemValidating}}
	        void radListView1_ItemValidating(object sender, ListViewItemValidatingEventArgs e)
	        {
	            int newInt = 0;
	            if (int.TryParse(Convert.ToString(e.NewValue), out newInt))
	            {
	                e.NewValue = newInt;
	            }
	            else
	            {
	                e.Cancel = true;
	            }
	        }
	
	        void radListView1_ValidationError(object sender, EventArgs e)
	        {
	            MessageBox.Show("Invalid Value");
	        }
	{{endregion}}



#### __[VB.NET] Validation__

{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=ItemValidating}}
	    Private Sub radListView1_ItemValidating(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ListViewItemValidatingEventArgs) Handles RadListView1.ItemValidating
	        Dim newInt As Integer = 0
	        If Integer.TryParse(Convert.ToString(e.NewValue), newInt) Then
	            e.NewValue = newInt
	        Else
	            e.Cancel = True
	        End If
	    End Sub
	
	    Private Sub radListView1_ValidationError(ByVal sender As Object, ByVal e As EventArgs) Handles RadListView1.ValidationError
	        MessageBox.Show("Invalid Value")
	    End Sub
	{{endregion}}



## Switching Editors

When edit operation is about to begin, the __EditorRequired__ event is fired.
          By using this event, you can replace the default text box editor with one of the four built-in editors
          that RadListView provides: __ListViewTextBoxEditor__;
          __ListViewDropDownListEditor__; __ListViewSpinEditor__;
          __ListViewDateTimeEditor__. You can also provide a custom instance as an editor.
        

The following example shows how you can use the predefined editors:

#### __[C#] Start editing__

{{source=..\SamplesCS\ListView\ListViewCheckboxesAndEditors.cs region=usePredefinedEditors}}
	        void radListView1_EditorRequired(object sender, Telerik.WinControls.UI.ListViewItemEditorRequiredEventArgs e)
	        {
	            if (e.ListViewElement.CurrentColumn.FieldName == "CustomerName")
	            {
	                e.EditorType = typeof(ListViewTextBoxEditor);
	            }
	            else if (e.ListViewElement.CurrentColumn.FieldName == "ProductName")
	            {
	                ListViewDropDownListEditor editor = new ListViewDropDownListEditor();
	                (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Product1");
	                (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Product2");
	                (editor.EditorElement as BaseDropDownListEditorElement).Items.Add("Product3");
	
	                e.Editor = editor;
	            }
	            else if (e.ListViewElement.CurrentColumn.FieldName == "Quantity")
	            {
	                e.EditorType = typeof(ListViewSpinEditor);
	            }
	            else if (e.ListViewElement.CurrentColumn.FieldName == "OrderDate")
	            {
	                e.EditorType = typeof(ListViewDateTimeEditor);
	            }
	        }
	{{endregion}}



#### __[VB.NET] Start editing__

{{source=..\SamplesVB\ListView\ListViewCheckboxesAndEditors.vb region=usePredefinedEditors}}
	    Private Sub radListView1_EditorRequired(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ListViewItemEditorRequiredEventArgs)
	        If e.ListViewElement.CurrentColumn.FieldName = "CustomerName" Then
	            e.EditorType = GetType(ListViewTextBoxEditor)
	        ElseIf e.ListViewElement.CurrentColumn.FieldName = "ProductName" Then
	            Dim editor As New ListViewDropDownListEditor()
	            TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Product1")
	            TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Product2")
	            TryCast(editor.EditorElement, BaseDropDownListEditorElement).Items.Add("Product3")
	
	            e.Editor = editor
	        ElseIf e.ListViewElement.CurrentColumn.FieldName = "Quantity" Then
	            e.EditorType = GetType(ListViewSpinEditor)
	        ElseIf e.ListViewElement.CurrentColumn.FieldName = "OrderDate" Then
	            e.EditorType = GetType(ListViewDateTimeEditor)
	        End If
	    End Sub
	{{endregion}}


