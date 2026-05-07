---
title: Document Protection
page_title: Document Protection - WinForms RichTextEditor Control
description: Document Protection in WinForms RichTextEditor allows defining and enforcing different editing restrictions in the document for a set of users and groups.
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

<snippet id='richtexteditor-documentprotection-users-cs' />
<snippet id='richtexteditor-documentprotection-users-vb' />



This code determines 3 users and two groups but does not specify the relationship between the users and the groups. This is so because users have the potential to change their groups.

The collection kept in the **Users** property of __RadRichTextEditor__ is also used in the default   __ChangeEditingPermissionsDialog__ which creates the **PermissionRangeInfos** to be inserted in the document.

## Changing the Current User

The current user of the document is set using the __CurrentUser__ property of the editor.  It is of type **UserInfo** - here in addition to the name of the user, the group that the user belongs to can also be passed.

<snippet id='richtexteditor-documentprotection-current-cs' />
<snippet id='richtexteditor-documentprotection-current-vb' />



You can also create a collection with the **UserInfos** that will be interacting with the document and wire it with   some UI of yours. For example, if you set-up the collection as follows:

<snippet id='richtexteditor-documentprotection-userslist-cs' />
<snippet id='richtexteditor-documentprotection-userslist-vb' />



You can declare a __RadDropDownList__ which will be used to change the current user in the following way:

<snippet id='richtexteditor-documentprotection-combo1-cs' />
<snippet id='richtexteditor-documentprotection-combo1-vb' />



and populate it like this:

<snippet id='richtexteditor-documentprotection-combo2-cs' />
<snippet id='richtexteditor-documentprotection-combo2-vb' />



Then, when the selected item of the combo changes, the **CurrentUser** of the editor will be updated: 

<snippet id='richtexteditor-documentprotection-combo3-cs' />
<snippet id='richtexteditor-documentprotection-combo3-vb' />



## Toggling Document Protection

When document protection is enforced, the current user can modify the rights for editing the part of the document that he/she is entitled to editing. When the protection is disabled, the editing rights for the document can be freely modified by all users.
        
The protection of the document can be turned on and off using the __ToggleDocumentProtectionCommand__ command of **RadRichTextEditor**.
        
The command opens a dialog that allows you to enter a password. By clicking OK, the document protection starts to be enforced.
        
It is also possible to toggle document protection in code-behind, without showing a dialog:

<snippet id='richtexteditor-documentprotection-password-cs' />
<snippet id='richtexteditor-documentprotection-password-vb' />



The reverse operations can be executed like this:

<snippet id='richtexteditor-documentprotection-unprotect-cs' />
<snippet id='richtexteditor-documentprotection-unprotect-vb' />



Note that the **UnprotectDocument** method will succeed only if the password you have passed as parameter matches the one used to protect the document.

## Creating and Modifying Document Protection Regions

**DocumentProtection** regions can be most easily created and modified through the **ChangeEditingPermissionsDialog** which can be invoked through the  __ShowChangeEditingPermissionsDialogCommand__ of __RadRichTextEditor__. They can also be edited in code-behind, using the API of **RadRichTextEditor** and **RadDocument**.

Here is an example:

<snippet id='richtexteditor-documentprotection-permissions-cs' />
<snippet id='richtexteditor-documentprotection-permissions-vb' />



This code will insert a permission range around the current selection in the document. The type of the permission is *Individual* - meaning that only the **CurrentUser** will be able to edit the region.

To change the highlight color of the permission range, we can use the __EnforcedPermissionRangeBrush__ property.

<snippet id='richtexteditor-documentprotection-color_permissions-cs' />
<snippet id='richtexteditor-documentprotection-color_permissions-vb' />



# See Also

 * [Positioning]({%slug winforms/richtexteditor-/features/positioning%})

 * [Selection]({%slug winforms/richtexteditor-/features/selection%})
