---
title: Menu Merge
page_title: Menu Merge | UI for WinForms Documentation
description: Menu Merge
slug: winforms/menus/menu/menu-merge/menu-merge
tags: menu,merge
published: True
position: 1
---

# Menu Merge



You can merge RadMenuItems by using the MergeMenu method of RadMenu. The parameter designates the source menu and the menu on which the method is invoked determines the destination menu.

>caution You need not call this method if you want to use menu merge in a MDI application. RadMenu automatically discovers that it is placed in a child MDI form and it automatically invokes MergeMenu when necessary.
>

{{source=..\SamplesCS\Menus\Menu\MenuMerge.cs region=Merge}} 
{{source=..\SamplesVB\Menus\Menu\MenuMerge.vb region=Merge}} 

````C#
            radMenu1.MergeMenu(srcRadMenu2);
````
````VB.NET
        radMenu1.MergeMenu(srcRadMenu2)
        '
````

{{endregion}} 

__RadMenuItem__ class has two properties that determines the way the items are merged: __MergeType__ and __MergeOrder__.  

## MergeType

__MergeType__ property is of type __MenuMerge__. MenuMerge enumeration members are:

* __Add__ - the default value. The items are added to the left of the items originally in the parent menu.

* __Replace__ - the item at the same position in the parent menu is replaced by the item in the child menu.

* __MergeItems__- similar to replace but items from the parent and child menus at that position are merged. For example, you can merge the items in the File menu of the parent form with the items of the File menu of the child form. The name of the menu is not important though - it is the match of positions in the parent menu and child menu that is taken in account not their names.

* __Remove__ - the item is removed when the child form is maximized in a MDI application.

## MergeOrder

An integer value which determines the merge order of the items from the source menu. The default value is 0. Acceptable values are greater or equal to 0. The merge order value of each menu item determines the *relative* position of the menu item according to the values of the other menu items participating in the merge. Higher values are position to the right and lower values to the left.

For instance, if two menu items have MergeType *Add *and the first one has MergeOrder 150 and the second one 0, the second item will be position on the left of the first one since the first one has higher number for MergeOrder.