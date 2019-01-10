---
title: Document Protection
page_title: Document Protection | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc.
slug: winforms/richtexteditor-/features/document-protection
tags: document,protection
published: True
position: 9
previous_url: richtexteditor-features-document-protection
---

# Document Protection

__Document Protection__ allows defining and enforcing different editing restrictions in the document for a set of users and groups.
      
This article describes how this feature can be used in terms of UI and API of __RadRichTextEditor__.
 
* [Defining Users](#defining-the-users)

* [Changing the Current User](#changing-the-current-user)

* [Toggling Document Protection](#toggling-document-protection)

* [Creating And Modifying Document Protection Regions](#creating-and-modifying-document-protection-regions)

## Defining the Users

The editing restrictions can be used with a set of users or groups. When document protection is enforced, each user will be able to edit only the parts of the document he/she has rights for and the parts that are editable by the group he/she belongs to.

The users that will be able to edit the document and the groups they are in can be declared like this: 

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=users}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=users}} 

````C#
            
this.radRichTextEditor1.Users = new PermissionInfoCollection()
{
    PermissionInfo.CreateEveryonePermissionInfo(),
    new PermissionInfo("jmiller", PermissionType.Individual, "James Miller"),
    new PermissionInfo("jsmith", PermissionType.Individual, "John Smith"),
    new PermissionInfo("rbrown", PermissionType.Individual, "Robert Brown"),
    new PermissionInfo("Administrators", PermissionType.Group, "Administrators"),
};

````
````VB.NET
Me.radRichTextEditor1.Users = New PermissionInfoCollection() From {PermissionInfo.CreateEveryonePermissionInfo(), New PermissionInfo("jmiller", PermissionType.Individual, "James Miller"), New PermissionInfo("jsmith", PermissionType.Individual, "John Smith"), New PermissionInfo("rbrown", PermissionType.Individual, "Robert Brown"), New PermissionInfo("Administrators", PermissionType.Group, "Administrators")}

````

{{endregion}} 

This code determines 3 users and two groups but does not specify the relationship between the users and the groups. This is so because users have the potential to change their groups.

The collection kept in the **Users** property of __RadRichTextEditor__ is also used in the default   __ChangeEditingPermissionsDialog__ which creates the **PermissionRangeInfos** to be inserted in the document.

## Changing the Current User

The current user of the document is set using the __CurrentUser__ property of the editor.  It is of type **UserInfo** - here in addition to the name of the user, the group that the user belongs to can also be passed.

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=current}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=current}} 

````C#
            
this.radRichTextEditor1.CurrentUser = new UserInfo("Users", "James Miller", "jmiller", "jmiller@example.com");

````
````VB.NET
Me.radRichTextEditor1.CurrentUser = New UserInfo("Users", "James Miller", "jmiller", "jmiller@example.com")

````

{{endregion}} 

You can also create a collection with the **UserInfos** that will be interacting with the document and wire it with   some UI of yours. For example, if you set-up the collection as follows:

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=usersList}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=usersList}} 

````C#
            
List<UserInfo> CurrentUsers = new List<UserInfo>()
{
    new UserInfo("Users", "James Miller", "jmiller", "jmiller@example.com"),
    new UserInfo("Administrators", "John Smith", "jsmith", "jsmith@example.com"),
    new UserInfo("Administrators", "Robert Brown", "rbrown", "rbrown@example.com"),
};

````
````VB.NET
Dim CurrentUsers As New List(Of UserInfo)() From {
    New UserInfo("Users", "James Miller", "jmiller", "jmiller@example.com"),
    New UserInfo("Administrators", "John Smith", "jsmith", "jsmith@example.com"),
    New UserInfo("Administrators", "Robert Brown", "rbrown", "rbrown@example.com")
}

````

{{endregion}} 

You can declare a __RadDropDownList__ which will be used to change the current user in the following way:

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=combo1}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=combo1}} 

````C#
            
RadDropDownList dropdown1 = new RadDropDownList();
dropdown1.Location = new Point(10, 10);
this.Controls.Add(dropdown1);
dropdown1.SelectedIndexChanged += this.dropdown1_SelectedIndexChanged;

````
````VB.NET
Dim dropdown1 As New RadDropDownList()
dropdown1.Location = New Point(10, 10)
Me.Controls.Add(dropdown1)
AddHandler dropdown1.SelectedIndexChanged, AddressOf Me.dropdown1_SelectedIndexChanged

````

{{endregion}} 

and populate it like this:

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=combo2}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=combo2}} 

````C#
            
dropdown1.DataSource = CurrentUsers;
dropdown1.DisplayMember = "Username";

````
````VB.NET
dropdown1.DataSource = CurrentUsers
dropdown1.DisplayMember = "Username"

````

{{endregion}} 

Then, when the selected item of the combo changes, the **CurrentUser** of the editor will be updated: 

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=combo3}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=combo3}} 

````C#
private void dropdown1_SelectedIndexChanged(object sender, Telerik.WinControls.UI.Data.PositionChangedEventArgs e)
{
    this.radRichTextEditor1.CurrentUser = ((RadDropDownList)sender).SelectedValue as UserInfo;
}

````
````VB.NET
Private Sub dropdown1_SelectedIndexChanged(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.Data.PositionChangedEventArgs)
    Me.radRichTextEditor1.CurrentUser = TryCast(DirectCast(sender, RadDropDownList).SelectedValue, UserInfo)
End Sub

````

{{endregion}} 

## Toggling Document Protection

When document protection is enforced, the current user can modify the rights for editing the part of the document that he/she is entitled to editing. When the protection is disabled, the editing rights for the document can be freely modified by all users.
        
The protection of the document can be turned on and off using the __ToggleDocumentProtectionCommand__ command of **RadRichTextEditor**.
        
The command opens a dialog that allows you to enter a password. By clicking OK, the document protection starts to be enforced.
        
It is also possible to toggle document protection in code-behind, without showing a dialog:

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=password}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=password}} 

````C#
            
this.radRichTextEditor1.Document.ProtectDocument(DocumentProtectionMode.ReadOnly, "password");

````
````VB.NET
Me.radRichTextEditor1.Document.ProtectDocument(DocumentProtectionMode.ReadOnly, "password")

````

{{endregion}} 

The reverse operations can be executed like this:

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=unprotect}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=unprotect}} 

````C#
        
this.radRichTextEditor1.Document.UnprotectDocument("password");

````
````VB.NET
Me.radRichTextEditor1.Document.UnprotectDocument("password")

````

{{endregion}}

Note that the **UnprotectDocument** method will succeed only if the password you have passed as parameter matches the one used to protect the document.

## Creating and Modifying Document Protection Regions

**DocumentProtection** regions can be most easily created and modified through the **ChangeEditingPermissionsDialog** which can be invoked through the  __ShowChangeEditingPermissionsDialogCommand__ of __RadRichTextEditor__. They can also be edited in code-behind, using the API of **RadRichTextEditor** and **RadDocument**.

Here is an example:

{{source=..\SamplesCS\RichTextEditor\Features\DocumentProtection.cs region=permissions}} 
{{source=..\SamplesVB\RichTextEditor\Features\DocumentProtection.vb region=permissions}} 

````C#
PermissionRangeInfo info = new PermissionRangeInfo();
info.Type = PermissionType.Individual;
info.Name = this.radRichTextEditor1.CurrentUser.Username;
List<PermissionRangeInfo> infos = new List<PermissionRangeInfo>() { info };
this.radRichTextEditor1.InsertPermissionRange(infos);

````
````VB.NET
Dim info As New PermissionRangeInfo()
info.Type = PermissionType.Individual
info.Name = Me.radRichTextEditor1.CurrentUser.Username
Dim infos As New List(Of PermissionRangeInfo)() From {info}
Me.radRichTextEditor1.InsertPermissionRange(infos)

````

{{endregion}} 

This code will insert a permission range around the current selection in the document. The type of the permission is *Individual* - meaning that only the **CurrentUser** will be able to edit the region.
        
# See Also

 * [Positioning]({%slug winforms/richtexteditor-/features/positioning%})

 * [Selection]({%slug winforms/richtexteditor-/features/selection%})
