---
title: Data Annotations
page_title: Data Annotations, Metadata, and Validation - WinForms PropertyGrid
description: Learn how RadPropertyGrid for WinForms uses data annotations to display properties, configure editor limits, and validate edited values.
components: ["propertygrid"]
slug: winforms/propertygrid/features/data-annotations
tags: propertygrid, radpropertygrid, data annotations, display, editable, validation, editor limits, attributes
published: True
position: 6
tag: new
---

# Data Annotations in WinForms PropertyGrid

The Telerik UI for WinForms **RadPropertyGrid** supports attributes from `System.ComponentModel.DataAnnotations` to configure property display, editor limits, and validation. Add annotations to the properties of an object and assign it to **SelectedObject** or **SelectedObjects**.

For example, `[Display(Name = "Product name")]` supplies a label, `[Required]` requires a value, and `[StringLength(30, MinimumLength = 3)]` limits the length of a string. The existing [PropertyGrid attributes]({%slug winforms/propertygrid/attributes%}) remain available.

Data annotations are enabled by default through the **EnableDataAnnotations** property. Set it to `false` before assigning the selected object to disable annotation-based display metadata, editor limits, and validation. Changes to this setting affect items created after the change; regenerate the items to apply display metadata and visibility changes to an existing selection.

## Display and Editability

| Annotation | PropertyGrid behavior |
| --- | --- |
| `Display.Name` | Supplies the property label. |
| `Display.ShortName` | Supplies the label when `Name` resolves to null. |
| `Display.Description` | Supplies the description shown in the [help bar]({%slug winforms/propertygrid/features/help-bar%}). |
| `Display.GroupName` | Supplies the category used when properties are [grouped]({%slug winforms/propertygrid/features/grouping%}). |
| `Display.Order` | Supplies the default order of root items. Use `PropertySort.NoSort` to inspect this order without alphabetical sorting. |
| `Display.AutoGenerateField` | When `false`, excludes the property from generated items. |
| `Display.ResourceType` | Resolves resource-backed names, short names, descriptions, and group names. |
| `Editable.AllowEdit` | When `false`, makes the property read-only. |

Set **HelpVisible** to `true` to show descriptions and use a categorized **PropertySort** mode to show groups. `Display.Order` does not reorder expanded nested properties. Properties without an annotation order retain the control's normal ordering.

## Validation Attributes

RadPropertyGrid evaluates property-level attributes derived from `ValidationAttribute` when a modified editor value is committed. Supported annotations include:

| Annotation | Validation |
| --- | --- |
| `Required` | Requires a value. |
| `Range` | Checks the value against the declared bounds. |
| `StringLength` | Checks the minimum and maximum length of a string. |
| `MinLength` | Checks the minimum length of a string or supported collection. |
| `MaxLength` | Checks the maximum length of a string or supported collection. |
| `Length` | Checks the minimum and maximum length of a string or supported collection. |
| `RegularExpression` | Checks a string against a regular expression. |
| `Compare` | Compares the value with another property on the owning object. |
| `CustomValidation` | Calls an application-defined validation method. |
| `EmailAddress` | Checks email-address format. |
| `Phone` | Checks phone-number format. |
| `Url` | Checks URL format. |
| `CreditCard` | Checks the card-number format and checksum. |
| `FileExtensions` | Checks the file name against allowed extensions. |
| `EnumDataType` | Checks that the value is valid for the specified enum. |
| `Base64String` | Checks Base64 text. |
| `AllowedValues` | Checks that the value belongs to an allowed set. |
| `DeniedValues` | Checks that the value is not in a denied set. |
| Custom `ValidationAttribute` | Applies a custom property-level validation rule. |

Validation follows the .NET rules of each attribute. In particular, null and empty strings are distinct, and acceptance of empty strings depends on the validator. Use `Required` when a value is mandatory. Collection validation requires a suitable editor and conversion for the property value.

If validation fails, the edit is rejected, the editor stays open, and the model value remains unchanged. The item's **ErrorMessage** contains the first validation error. Correct the value and commit again, or cancel the edit. The **PropertyValidating** event still fires and can reject a valid value, but it cannot override an annotation validation failure. For event-based validation, see [Validation]({%slug winforms/propertygrid/editors/validation%}).

Validation runs on modified values committed through the editor, not when an object is assigned or changed directly in code. Changing the property referenced by `Compare` does not automatically revalidate the compared property.

## Editor Limits

Some validation attributes also configure the built-in editors:

| Annotation | Editor behavior |
| --- | --- |
| `Range` | Applies convertible bounds to the numeric or date-time editor, within the editor's supported limits. |
| `StringLength` | Sets the maximum length of the text editor. |
| `MaxLength` | Sets the maximum length of the text editor for string properties when `StringLength` is absent. |
| `Length` | Sets the maximum length of the text editor for string properties when neither `StringLength` nor `MaxLength` is present. |

Minimum string length is checked at commit, not enforced as an editor limit. All applicable validation rules are evaluated even when only one supplies the editor limit. Range limits are applied only when the current value is non-null and already satisfies the range. Text limits are not applied when the current text already exceeds the maximum, so opening the editor does not silently alter existing values.

These limits apply to the corresponding built-in editors. Annotations do not automatically configure custom editors or provide a collection editor.

## Precedence with Existing Attributes

| Setting | Precedence |
| --- | --- |
| Label | A `DisplayName` different from the property name takes precedence over `Display.Name` and `Display.ShortName`. |
| Description | A nonempty `Description` takes precedence over `Display.Description`. |
| Category | A nondefault `Category` takes precedence over `Display.GroupName`. |
| Order | An explicit item **SortOrder** or `RadSortOrder` takes precedence over `Display.Order`. Normal sorting modes still apply. |
| Visibility | Either `Browsable(false)` or `Display(AutoGenerateField = false)` can hide a property. |
| Read-only state | Existing read-only restrictions and `Editable(false)` are honored. `Editable(true)` cannot override an existing restriction. |
| Numeric editor bounds | `RadRange` takes precedence for editor limits, but `Range` still validates the committed value. |

## Validation Context and Limitations

Context-aware validators receive the owning object, member name, and displayed label. For a nested property of a single selected object, the owner is the nested object. For a root property of multiple selected objects, context-aware validation must pass for each selected object. For nested properties of multiple selected objects, context-aware validators are skipped; known context-free built-in validators still run.

The control reads annotations exposed by property descriptors. It does not automatically discover `MetadataType` buddy-class metadata without a registered descriptor provider. Property commits do not run class-level validation attributes or `IValidatableObject`.

`DataType`, `DisplayFormat`, `UIHint`, `FilterUIHint`, `Display.Prompt`, `Display.AutoGenerateFilter`, `Editable.AllowInitialValue`, and scaffolding or persistence annotations such as `ScaffoldColumn`, `Key`, and `NotMapped` do not add PropertyGrid-specific behavior. For example, they do not automatically select an editor, format a value, or hide a property.

## See Also

* [Attributes]({%slug winforms/propertygrid/attributes%})
* [PropertyGrid Editors]({%slug winforms/propertygrid/editors/overview%})
* [Validation]({%slug winforms/propertygrid/editors/validation%})
* [Grouping]({%slug winforms/propertygrid/features/grouping%})
