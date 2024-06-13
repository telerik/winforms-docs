---
title: How to Show Confirmation Message for User-Defined Values to PropertyGridDropDownListEditor
description: This article shows how you can show a confirmation message for user-defined values to the PropertyGridDropDownListEditor.
type: how-to
page_title: How to Show Confirmation Message for User-Defined Values to PropertyGridDropDownListEditor
slug: confirmation-message-for-user-defined-values-to-propertygriddropdownlisteditor
position: 0
tags: propertygrid, edit, dialog, confirm, dialog, message
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.1.314|RadPropertyGrid for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

**PropertyGridDropDownListEditor** accepts only valid values specified in the **DataSource** property. Any other user's input can't be set to the underlying data object since the **DataSource** of the editor restricts the input. In order to allow the user to enter custom values and these values to be stored and committed to the source object, they have to be added to the **DataSource** collection related to the editor. We will extend the following article to show a confirmation dialog before submitting the new item to the editor's source collection: [How to allow end-users to add custom items to PropertyGridDropDownListEditor]({%slug allow-end-users-to-add-items-to-propertygriddropdownlisteditor%})

>caption Allow Custom Values with Confirmation

![confirmation-message-for-user-defined-values-to-propertygriddropdownlisteditor](images/confirmation-message-for-user-defined-values-to-propertygriddropdownlisteditor.gif)

## Solution 
 
If the user clicks "No", the original value should be returned. This behavior is similar to pressing Escape. The **PropertyGridDropDownListEditor** internally stores the original value when the item enters edit mode. Thus, when the user types something new and hits Escape, the editor knows what value to put in the editor. However, the original value is not publicly accessible and it requires storing the initial value in the EditorInitialized event. Then, after pressing "No" the old value may be returned.
 
#### Allow custom values ONLY after the user confirms the newly added value in PropertyGridDropDownListEditor

````C#

        private Dictionary<string, string> SourceDict = new Dictionary<string, string>();
        public TestForm()
        {
            InitializeComponent();
            SourceDict.Add("0001AAA", "dog");
            SourceDict.Add("0002BBB", "cat");
            SourceDict.Add("0003CCC", "bird");
            SourceDict.Add("0004DDD", "fish");

            RadPropertyStore StoredColumnNameSets = new RadPropertyStore();
            PropertyStoreItem NewItem;

            NewItem = new PropertyStoreItem(typeof(string), "Animal", "0003CCC");

            StoredColumnNameSets.Add(NewItem);
            this.radPropertyGrid1.ItemFormatting += RadPropertyGrid1_ItemFormatting;
            radPropertyGrid1.SelectedObject = StoredColumnNameSets;
            this.radPropertyGrid1.EditorRequired += RadPropertyGrid1_EditorRequired;
            this.radPropertyGrid1.EditorInitialized += RadPropertyGrid1_EditorInitialized;
            this.radPropertyGrid1.Edited += RadPropertyGrid1_Edited;
        } 

        private void RadPropertyGrid1_Edited(object sender, PropertyGridItemEditedEventArgs e)
        {
            if (e.Item.Label == "Animal")
            {
                if (this.radPropertyGrid1.SelectedGridItem.Tag != null)
                {
                    DialogResult dialogResult = RadMessageBox.Show("Do you want to add this item to the data source?",
                        "This Item is not in the data source!", MessageBoxButtons.YesNo);
                    if (dialogResult == DialogResult.Yes)
                    {
                        SourceDict.Add(this.radPropertyGrid1.SelectedGridItem.Tag.ToString(), this.radPropertyGrid1.SelectedGridItem.Tag.ToString());
                        ((PropertyGridItem)this.radPropertyGrid1.SelectedGridItem).Value = this.radPropertyGrid1.SelectedGridItem.Tag;

                    }
                    else
                    {
                        ((PropertyGridItem)this.radPropertyGrid1.SelectedGridItem).Value = this.radPropertyGrid1.Tag + "";
                    }

                    this.radPropertyGrid1.SelectedGridItem.Tag = null;
                    this.radPropertyGrid1.Tag = null;
                }
            }
        }

        private void RadPropertyGrid1_EditorInitialized(object sender, PropertyGridItemEditorInitializedEventArgs e)
        {
            PropertyGridDropDownListEditor editor = e.Editor as PropertyGridDropDownListEditor;
            if (editor != null)
            {
                this.radPropertyGrid1.Tag = editor.Value; //store the initial value
                BaseDropDownListEditorElement el = editor.EditorElement as BaseDropDownListEditorElement;
                if (e.Item.Label == "Animal")
                {

                    el.DropDownStyle = RadDropDownStyle.DropDown;
                }
                else
                {
                    el.DropDownStyle = RadDropDownStyle.DropDownList;
                }

            }
        }

        private void RadPropertyGrid1_EditorRequired(object sender, PropertyGridEditorRequiredEventArgs e)
        {
            if (e.Item.Label == "Animal")
            {
                PropertyGridDropDownListEditor PropertyGridDropDownListEditor = new CustomPropertyGridDropDownListEditor();
                e.Editor = PropertyGridDropDownListEditor;
                BaseDropDownListEditorElement El = PropertyGridDropDownListEditor.EditorElement as BaseDropDownListEditorElement;
                El.DataSource = SourceDict;
                El.DisplayMember = "Value";
                El.ValueMember = "Key"; 
            }
        }

        public class CustomPropertyGridDropDownListEditor : PropertyGridDropDownListEditor
        {
            public override bool EndEdit()
            {
                PropertyGridItemElement ItemElement = this.OwnerElement as PropertyGridItemElement;
                BaseDropDownListEditorElement El = this.EditorElement as BaseDropDownListEditorElement;

                // Checking if the typed value exists in the datasource 
                Dictionary<string, string> Source = El.DataSource as Dictionary<string, string>;
                foreach (var Pair in Source)
                {
                    if (Pair.Value == El.Text)
                    {
                        return base.EndEdit();
                    }
                }
                ItemElement.Data.Tag = El.Text;
                return base.EndEdit();
            }
        }

        private void RadPropertyGrid1_ItemFormatting(object sender, PropertyGridItemFormattingEventArgs e)
        {
            PropertyGridItem item = e.Item as PropertyGridItem;
            PropertyGridItemElement element = e.VisualElement as PropertyGridItemElement;
            if (item != null && item.Label == "Animal" && item.Value != null)
            {
                element.ValueElement.Text = SourceDict[item.Value + ""];
            }
        }       
       
````
````VB.NET
   
     Private SourceDict As Dictionary(Of String, String) = New Dictionary(Of String, String)()

    Public Sub New()
        InitializeComponent()
        SourceDict.Add("0001AAA", "dog")
        SourceDict.Add("0002BBB", "cat")
        SourceDict.Add("0003CCC", "bird")
        SourceDict.Add("0004DDD", "fish")
        Dim StoredColumnNameSets As RadPropertyStore = New RadPropertyStore()
        Dim NewItem As PropertyStoreItem
        NewItem = New PropertyStoreItem(GetType(String), "Animal", "0003CCC")
        StoredColumnNameSets.Add(NewItem)
        AddHandler Me.RadPropertyGrid1.ItemFormatting, AddressOf RadPropertyGrid1_ItemFormatting
        RadPropertyGrid1.SelectedObject = StoredColumnNameSets
        AddHandler Me.RadPropertyGrid1.EditorRequired, AddressOf RadPropertyGrid1_EditorRequired
        AddHandler Me.RadPropertyGrid1.EditorInitialized, AddressOf RadPropertyGrid1_EditorInitialized
        AddHandler Me.RadPropertyGrid1.Edited, AddressOf RadPropertyGrid1_Edited
    End Sub

    Private Sub RadPropertyGrid1_Edited(ByVal sender As Object, ByVal e As PropertyGridItemEditedEventArgs)
        If e.Item.Label = "Animal" Then

            If Me.RadPropertyGrid1.SelectedGridItem.Tag IsNot Nothing Then
                Dim dialogResult As DialogResult = RadMessageBox.Show("Do you want to add this item to the data source?",
                                                                      "This Item is not in the data source!", MessageBoxButtons.YesNo)

                If dialogResult = DialogResult.Yes Then
                    SourceDict.Add(Me.RadPropertyGrid1.SelectedGridItem.Tag.ToString(), Me.RadPropertyGrid1.SelectedGridItem.Tag.ToString())
                    CType(Me.RadPropertyGrid1.SelectedGridItem, PropertyGridItem).Value = Me.RadPropertyGrid1.SelectedGridItem.Tag
                Else
                    CType(Me.RadPropertyGrid1.SelectedGridItem, PropertyGridItem).Value = Me.RadPropertyGrid1.Tag & ""
                End If

                Me.RadPropertyGrid1.SelectedGridItem.Tag = Nothing
                Me.RadPropertyGrid1.Tag = Nothing
            End If
        End If
    End Sub

    Private Sub RadPropertyGrid1_EditorInitialized(ByVal sender As Object, ByVal e As PropertyGridItemEditorInitializedEventArgs)
        Dim editor As PropertyGridDropDownListEditor = TryCast(e.Editor, PropertyGridDropDownListEditor)

        If editor IsNot Nothing Then
            Me.RadPropertyGrid1.Tag = editor.Value
            Dim el As BaseDropDownListEditorElement = TryCast(editor.EditorElement, BaseDropDownListEditorElement)

            If e.Item.Label = "Animal" Then
                el.DropDownStyle = RadDropDownStyle.DropDown
            Else
                el.DropDownStyle = RadDropDownStyle.DropDownList
            End If
        End If
    End Sub

    Private Sub RadPropertyGrid1_EditorRequired(ByVal sender As Object, ByVal e As PropertyGridEditorRequiredEventArgs)
        If e.Item.Label = "Animal" Then
            Dim PropertyGridDropDownListEditor As PropertyGridDropDownListEditor = New CustomPropertyGridDropDownListEditor()
            e.Editor = PropertyGridDropDownListEditor
            Dim El As BaseDropDownListEditorElement = TryCast(PropertyGridDropDownListEditor.EditorElement, BaseDropDownListEditorElement)
            El.DataSource = SourceDict
            El.DisplayMember = "Value"
            El.ValueMember = "Key"
        End If
    End Sub

    Public Class CustomPropertyGridDropDownListEditor
        Inherits PropertyGridDropDownListEditor

        Public Overrides Function EndEdit() As Boolean
            Dim ItemElement As PropertyGridItemElement = TryCast(Me.OwnerElement, PropertyGridItemElement)
            Dim El As BaseDropDownListEditorElement = TryCast(Me.EditorElement, BaseDropDownListEditorElement)
            Dim Source As Dictionary(Of String, String) = TryCast(El.DataSource, Dictionary(Of String, String))

            For Each Pair In Source

                If Pair.Value = El.Text Then
                    Return MyBase.EndEdit()
                End If
            Next

            ItemElement.Data.Tag = El.Text
            Return MyBase.EndEdit()
        End Function
    End Class

    Private Sub RadPropertyGrid1_ItemFormatting(ByVal sender As Object, ByVal e As PropertyGridItemFormattingEventArgs)
        Dim item As PropertyGridItem = TryCast(e.Item, PropertyGridItem)
        Dim element As PropertyGridItemElement = TryCast(e.VisualElement, PropertyGridItemElement)

        If item IsNot Nothing AndAlso item.Label = "Animal" AndAlso item.Value IsNot Nothing Then
            element.ValueElement.Text = SourceDict(item.Value & "")
        End If
    End Sub     

````


 

 