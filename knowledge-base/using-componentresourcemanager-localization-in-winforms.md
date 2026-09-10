---
title: How to Use ComponentResourceManager to Localize Forms with Telerik WinForms Controls
description: Learn how System.ComponentModel.ComponentResourceManager works with Telerik UI for WinForms controls for design-time and runtime .resx localization.
components: ["general"]
type: how-to
page_title: Using ComponentResourceManager Localization with Telerik UI for WinForms
slug: using-componentresourcemanager-localization-in-winforms
position: 5
tags: localization, resx, componentresourcemanager, localizable, language
res_type: kb
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2026.3.812|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Description

In standard Windows Forms development, setting a Form's **Localizable** property to `true` instructs Visual Studio to generate culture-specific resource (`.resx`) files and serialize control properties through `System.ComponentModel.ComponentResourceManager`.

When working with **Telerik UI for WinForms**, developers often need to understand:
1. How `ComponentResourceManager` interacts with Telerik controls.
2. The difference between `.resx` resource localization and Telerik's `LocalizationProvider` architecture.
3. How to dynamically change languages at runtime using `ComponentResourceManager.ApplyResources`.

### ComponentResourceManager vs. LocalizationProvider

It is important to distinguish between two distinct localization layers:

* **ComponentResourceManager (.resx files):** Localizes form-level and control-level properties configured in the Visual Studio designer (such as `Text`, `Size`, `Location`, and `Font`). All Telerik controls inherit from `System.Windows.Forms.Control`, meaning design-time property values are serialized to `.resx` files and applied when the form is initialized.
* **Telerik LocalizationProvider:** Localizes built-in internal strings that are part of the controls' internal templates and dialogs (such as RadGridView filtering operator menus, the Column Chooser text, conditional formatting dialogs, and RadScheduler dialog labels). These internal strings are **not** stored in form `.resx` files and must be localized using Telerik localization providers (for example, `RadGridLocalizationProvider`).

## Solution

### 1. Design-Time Form Localization

To localize a form at design time using standard `.resx` resources:

1. Open your form in the Visual Studio designer.
2. Select the **Form** and set its **Localizable** property to `true` in the **Properties** window.
3. Select the desired language in the **Language** property (for example, *German*).
4. Update the properties of your Telerik controls (e.g., set the `Text` of a `RadButton` or `RadLabel` to German text, or adjust column header texts).
5. Visual Studio creates a dedicated resource file (such as `MyForm.de.resx`) and generates code in `InitializeComponent()` using `ComponentResourceManager.ApplyResources()` to apply the localized values based on `Thread.CurrentThread.CurrentUICulture`.

### 2. Runtime Language Switching

When an application changes culture at runtime without closing and recreating the form, you can re-apply resources by calling `resources.ApplyResources()` on the form and its controls.

Because Telerik controls host internal visual elements (such as `RadMenuItem`, `GridViewDataColumn`, and `RadTreeNode`) that are components or lightweight elements rather than child `System.Windows.Forms.Control` instances, a standard recursive control loop must also iterate over these specific Telerik element collections.

The following example demonstrates how to switch culture dynamically and update Telerik controls and columns:

````C#
using System;
using System.ComponentModel;
using System.Globalization;
using System.Threading;
using System.Windows.Forms;
using Telerik.WinControls.UI;

public partial class RadForm1 : RadForm
{
    public RadForm1()
    {
        InitializeComponent();
    }

    private void ApplyCulture(CultureInfo culture)
    {
        // 1. Update the UI culture of the current thread
        Thread.CurrentThread.CurrentUICulture = culture;
        Thread.CurrentThread.CurrentCulture = culture;

        // 2. Initialize the ComponentResourceManager for this form
        ComponentResourceManager resources = new ComponentResourceManager(this.GetType());

        // 3. Suspend layout and apply resources to the form and controls
        this.SuspendLayout();
        ApplyResourcesToControl(resources, this);
        this.ResumeLayout(true);
    }

    private void ApplyResourcesToControl(ComponentResourceManager resources, Control control)
    {
        // Apply resources to the control itself
        resources.ApplyResources(control, control.Name);

        // Apply resources to Telerik-specific items
        if (control is RadGridView grid)
        {
            foreach (GridViewColumn column in grid.Columns)
            {
                resources.ApplyResources(column, column.Name);
            }
        }
        else if (control is RadMenu menu)
        {
            foreach (RadMenuItemBase item in menu.Items)
            {
                ApplyResourcesToMenuItem(resources, item);
            }
        }

        // Recursively apply to child controls
        foreach (Control child in control.Controls)
        {
            ApplyResourcesToControl(resources, child);
        }
    }

    private void ApplyResourcesToMenuItem(ComponentResourceManager resources, RadMenuItemBase menuItem)
    {
        resources.ApplyResources(menuItem, menuItem.Name);

        if (menuItem is RadMenuItem parentItem)
        {
            foreach (RadMenuItemBase child in parentItem.Items)
            {
                ApplyResourcesToMenuItem(resources, child);
            }
        }
    }
}
````

## See Also

* [Resources in resx files are lost when the form is modified]({%slug resources-in-resx-files-are-lost-when-the-form-is-modified%})
* [Localization in RadGridView]({%slug winforms/gridview/localization/localization%})
* [How to Share Localization Providers and Spell Checking Dictionaries]({%slug share-localization-providers-and-dictionaries%})
