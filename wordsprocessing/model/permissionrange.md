---
title: PermissionRange
page_title: PermissionRange | UI for WinForms Documentation
description: PermissionRange
slug: winforms/wordsprocessing/model/permissionrange
tags: permissionrange
published: True
position: 14
---

# PermissionRange

A __PermissionRange__ object holds annotation markers which specify for which range of document elements it refers. Every permission has a corresponding __PermissionRangeStart__ and __PermissionRangeEnd__, which are inline elements. These two elements specify the range's location as follows.

* __PermissionRangeStart__: Specifies the start of a permission annotation.

* __PermissionRangeEnd__: Specifies the end of a permission annotation.

## Inserting a PermissionRange

Creating a __PermissionRange__ requires to pass an instance of the __PermissionRangeCredentials__ class to the constructor which can be created in either one of the following ways:

* __PermissionRangeCredentials(EditingGroup editingGroup)__: Initialize credentials with a type of user group. The enumeration exposes the following members:

  * __None__: Specifies that none of the users that open the document shall be allowed to edit range permissions using this editing group when document protection is enforced.

  * __Everyone__: Specifies that all users that open the document shall be allowed to edit range permissions using this editing group when document protection is enforced.

  * __Administrators__: Specifies that only user(s) who the viewing application associates with the Administrators group shall be allowed to edit the contents between the start and end permission ranges when document protection is enforced.

  * __Contributors__: Specifies that only user(s) who the viewing application associates with the Contributors group shall be allowed to edit the contents between the start and end permission ranges when document protection is enforced.

  * __Editors__: Specifies that only user(s) who the viewing application associates with the Editors group shall be allowed to edit the contents between the start and end permission ranges when document protection is enforced.

  * __Owners__: Specifies that only user(s) who the viewing application associates with the Owners group shall be allowed to edit the contents between the start and end permission ranges when document protection is enforced.

  * __Current__: Specifies that only user(s) who the viewing application associates with the Current group shall be allowed to edit the contents between the start and end permission ranges when document protection is enforced. 

* __PermissionRangeCredentials(string editor)__: Initialize credentials by passing the single user's name, email or domain credentials.

>note The credentials you specify to a permission range are used by the consumer of the generated document and it is responsible for making sure they are enforced when the document is protected. A protected document can still be edited with the API of __RadWordsProcessing__ .
>

__Example 1__ demonstrates how to create permission credentials for a single user specified by email and a permission range in a [Paragraph]({%slug winforms/wordsprocessing/model/paragraph%}).

#### Example 1: Add PermissionRange to Paragraph

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingPermissionRange.cs region=radwordsprocessing-model-permissionranget_0}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingPremissionRange.vb region=radwordsprocessing-model-permissionranget_0}} 

````C#
            
Telerik.Windows.Documents.Flow.Model.Protection.PermissionRangeCredentials jane =
    new Telerik.Windows.Documents.Flow.Model.Protection.PermissionRangeCredentials("Jane.Doe@telerik.com"); 
Telerik.Windows.Documents.Flow.Model.Protection.PermissionRange range = new Telerik.Windows.Documents.Flow.Model.Protection.PermissionRange(document, jane);
paragraph.Inlines.Add(range.Start);
paragraph.Inlines.Add(new Run(document) { Text = "protected text" });
paragraph.Inlines.Add(range.End);

````
````VB.NET
Dim jane As New Telerik.Windows.Documents.Flow.Model.Protection.PermissionRangeCredentials("Jane.Doe@telerik.com")
Dim range As New Telerik.Windows.Documents.Flow.Model.Protection.PermissionRange(document, jane)
paragraph.Inlines.Add(range.Start)
paragraph.Inlines.Add(New Run(document) With { _
    .Text = "protected text" _
})
paragraph.Inlines.Add(range.[End])

````

{{endregion}}

The paragraph should belong to the same document that is passed to the constructor of the __PermissionRange__ object, otherwise an exception is thrown.

Inserting a __PermissionRange__ in the document can be achieved through [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/model/radflowdocument%}) as well. Since a permission range refers to a specific document element or a range of elements, there are several overloads for the InsertPermissionRange() method - accepting a TableCell, TableRow or two inline elements representing the start and end of the range.

__Example 2__ demonstrates how to specify that a __TableCell__ can be edited by everyone when protection is enforced.

#### Example 2: Insert PermissionRange for TableCell

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingPermissionRange.cs region=radwordsprocessing-model-permissionranget_1}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingPremissionRange.vb region=radwordsprocessing-model-permissionranget_1}} 

````C#
            
Table table = editor.InsertTable(); 
TableRow row = table.Rows.AddTableRow(); 
TableCell cell = row.Cells.AddTableCell();
cell.Blocks.AddParagraph().Inlines.AddRun("Hello");
Telerik.Windows.Documents.Flow.Model.Protection.PermissionRangeCredentials everyone =
    new Telerik.Windows.Documents.Flow.Model.Protection.PermissionRangeCredentials(EditingGroup.Everyone);
Telerik.Windows.Documents.Flow.Model.Protection.PermissionRange range = editor.InsertPermissionRange(everyone, cell);

````
````VB.NET
Dim table = editor.InsertTable()
Dim row = table.Rows.AddTableRow()
Dim cell = row.Cells.AddTableCell()
cell.Blocks.AddParagraph().Inlines.AddRun("Hello")
Dim everyone = New Telerik.Windows.Documents.Flow.Model.Protection.PermissionRangeCredentials(EditingGroup.Everyone)
Dim range = editor.InsertPermissionRange(everyone, cell)

````

{{endregion}}

## Operating with Permission Ranges

* __Enforcing Protection__ 

     Including permission ranges in a document is not enough to protect them from editing, you also need to enforce the protection. Protecting and un-protecting a document is achieved with the __Protect__ and __Unprotect__ method of __RadFlowDocumentEditor__  respectively. When enforcing and stopping the protection you have the option to pass a string password to the methods and specify the type of editing restrictions using the __ProtectionMode__ enumeration.__ProtectionMode__ exposes the following members:

  * __NoProtection__: Specifies that no editing restrictions are applied.

  * __AllowComments__: Specifies that working with comments is allowed in addition to editing in permission ranges.

  * __ReadOnly__: Specifies that editing is allowed only in permission regions by the users or groups that have permissions for edition. This mode is applied when __ProtectionMode__ parameter is not passed to the __Protect__ method. __Example 3__ shows how to protect and un-protect a document using the various overloads of the methods.

#### Example 3: Protect and Unprotect Document Through RadFlowDocumentEditor

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingPermissionRange.cs region=radwordsprocessing-model-permissionranget_2}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingPremissionRange.vb region=radwordsprocessing-model-permissionranget_2}} 

````C#
            
editor.Protect(String.Empty); 
if (editor.Unprotect(string.Empty)) 
{
    editor.Protect("p4ssw0rd", ProtectionMode.AllowComments);
}
editor.Unprotect();

````
````VB.NET
editor.Protect([String].Empty)
If editor.Unprotect(String.Empty) Then
    editor.Protect("p4ssw0rd", ProtectionMode.AllowComments)
End If
editor.Unprotect()

````

{{endregion}}

>note The last call to the __Unprotect__ method in __Example 3__ will enforce protection of type __NoProtection__ to the document. Protecting a document is intended to notify the user that changes are unadvised, but stopping the protection is still possible. The __Unprotect(string password)__ overload is introduced for your convenience to use in your applications and returns a Boolean result of the action.
>

* __Modifying Document Protection Settings__ 

    __RadFlowDocument__ exposes a property of type __ProtectionSettings__ - ProtectionSettings. Enforcing protection directly through the document is possible by setting the __Enforced__ property as demonstrated in __Example 4__.

#### Example 4: Enforce Protection Through RadFlowDocument

{{source=..\SamplesCS\WordsProcessing\Model\WordsProcessingPermissionRange.cs region=radwordsprocessing-model-permissionranget_3}} 
{{source=..\SamplesVB\WordsProcessing\Model\WordsProcessingPremissionRange.vb region=radwordsprocessing-model-permissionranget_3}} 

````C#
            
document.ProtectionSettings.Enforced = true;

````
````VB.NET
document.ProtectionSettings.Enforced = True

````

{{endregion}}

The settings provide a number of other modification options, including changing the algorithm used to protect the document with one of the predefined in the  __ProtectionAlgorithmNames__ enumeration.

# See Also

 * [RadFlowDocumentEditor]({%slug winforms/wordsprocessing/editing/radflowdocumenteditor%})

 * [RadFlowDocument]({%slug winforms/wordsprocessing/model/radflowdocument%})