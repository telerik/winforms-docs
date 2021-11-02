---
title: Logical Keyboard Layout
page_title: Logical Keyboard Layout | Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: logical-keyboard-layout
tags: virtual, keyboard
published: True
position: 5 
---

# Logical Keyboard Layout

RadVirtualKeyboard.**MainLayoutPanel** is represented by a **VirtualKeyboardLayoutPanel** that hosts **VirtualKeyboardLayouts** and other **VirtualKeyboardLayoutPanels**. Each **VirtualKeyboardLayout** hosts the keys of the keyboard, the infrastructure to create new keys, organizes them into logical rows and contains the logical layout implementation. Hence, if you need to customize the keys that are displayed on the keyboard, it is necessary to manipulate the respective **VirtualKeyboardLayout**. 

Depending on the applied **LayoutType**, the **MainLayoutPanel** stores in its **KeyboardLayouts** a set of **VirtualKeyboardLayoutPanels** and **VirtualKeyboardLayouts**. The **VirtualKeyboardLayoutPanel** contains a collection of **VirtualKeyboardLayouts** depending on how many group of keys will be created:

![winforms/logical-keyboard-layout 001](images/logical-keyboard-layout001.png) 

The **VirtualKeyboardLayout** offers a public **Rows** property which is an **ObservableCollection** of **Row** instances. Each **Row** represents a logical structure used to organize the keys stored in the **Keys** property. 

![winforms/logical-keyboard-layout 002](images/logical-keyboard-layout002.png) 
 

#### Accessing the logical layout and iterating the keys in the Home layout

{{source=..\SamplesCS\VirtualKeyboard\KeyboardGettingStarted.cs region=LogicalLayouts}} 
{{source=..\SamplesVB\VirtualKeyboard\KeyboardGettingStarted.vb region=LogicalLayouts}}

````C#
this.radVirtualKeyboard1.LayoutType = Telerik.WinControls.VirtualKeyboard.KeyboardLayoutType.Extended;
ExtendedVirtualKeyboardLayoutPanel extendedKeyboard = radVirtualKeyboard1.MainLayoutPanel as ExtendedVirtualKeyboardLayoutPanel;
VirtualKeyboardLayout simplifiedLayout = extendedKeyboard.MainButtonsLayout;
VirtualKeyboardLayout homeLayout = extendedKeyboard.HomeButtonsLayout;
VirtualKeyboardLayout numpadLayout = extendedKeyboard.NumpadButtonsLayout;
StringBuilder homeKeys = new StringBuilder();
foreach (Row rows in homeLayout.Rows)
 {
    foreach (IKey key in rows.Keys)
     {
        Key k = key as Key;
        if (k != null)
        {
        homeKeys.AppendLine(k.Text);
        }
     }
 }

RadMessageBox.Show(homeKeys.ToString());

````
````VB.NET
Me.radVirtualKeyboard1.LayoutType = Telerik.WinControls.VirtualKeyboard.KeyboardLayoutType.Extended
Dim extendedKeyboard As ExtendedVirtualKeyboardLayoutPanel = TryCast(radVirtualKeyboard1.MainLayoutPanel, ExtendedVirtualKeyboardLayoutPanel)
Dim simplifiedLayout As VirtualKeyboardLayout = extendedKeyboard.MainButtonsLayout
Dim homeLayout As VirtualKeyboardLayout = extendedKeyboard.HomeButtonsLayout
Dim numpadLayout As VirtualKeyboardLayout = extendedKeyboard.NumpadButtonsLayout
Dim homeKeys As StringBuilder = New StringBuilder()
For Each rows As Row In homeLayout.Rows
    For Each key As IKey In rows.Keys
        Dim k As Key = TryCast(key, Key)
        If k IsNot Nothing Then
            homeKeys.AppendLine(k.Name)
        End If
    Next
Next

RadMessageBox.Show(homeKeys.ToString())

```` 

{{endregion}}

>note As of **R3 2021 SP1** we introduced new API, the **GetAllRows** and **FindRowByKey** methods, which don't require knowing in which LayoutPanel and the exact row which is the owner of the key, to be able to remove it.

#### API for Adding/Removing keys

{{source=..\SamplesCS\VirtualKeyboard\KeyboardGettingStarted.cs region=AddRemoAPI}} 
{{source=..\SamplesVB\VirtualKeyboard\KeyboardGettingStarted.vb region=AddRemoAPI}}

````C#
var allKeys = this.radVirtualKeyboard1.MainLayoutPanel.GetAllKeys();
Key Qkey = allKeys.FirstOrDefault(k => k.VirtualKey == (int)Keys.Q) as Key;
Row row = this.radVirtualKeyboard1.MainLayoutPanel.FindRowByKey(Qkey);
row.Keys.Remove(Qkey);
this.radVirtualKeyboard1.MainLayoutPanel.ResetLayout(true);

````
````VB.NET
Dim allKeys = Me.radVirtualKeyboard1.MainLayoutPanel.GetAllKeys()
Dim Qkey As Key = TryCast(allKeys.FirstOrDefault(Function(k) k.VirtualKey = CInt(Keys.Q)), Key)
Dim row As Row = Me.radVirtualKeyboard1.MainLayoutPanel.FindRowByKey(Qkey)
row.Keys.Remove(Qkey)
Me.radVirtualKeyboard1.MainLayoutPanel.ResetLayout(True)

```` 

{{endregion}}

# See Also

* [Structure]({%slug winforms-virtual-keyboard-structure%})
* [Getting Started]({%slug winforms-virtual-keyboard-getting-started%})
* [Default Layouts]({%slug virtual-keabord-default-layouts%})
 
        
