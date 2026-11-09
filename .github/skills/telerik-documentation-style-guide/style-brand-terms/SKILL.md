---
name: style-brand-terms
description: "Use when writing or reviewing Telerik UI for WinForms brand names, trademarks, interaction verbs, control names, C#/VB.NET terminology, data binding, Telerik Presentation Framework elements, themes, designer behavior, licensing, or deployment. Triggers include 'fix brand names', 'check product references', 'review interaction verbs', and 'correct terminology'."
---

# Telerik UI for WinForms Brand Names, Interaction Verbs, and Vocabulary

Preserve the article's task, exact identifiers, and technical behavior while
correcting prose terminology. Use the
[vocabulary reference](./references/vocabulary.md) for standard terms and
WinForms feature boundaries. Terminology review does not prove API correctness,
runtime behavior, accessibility compliance, or deployment support.

## Brand Names and Trademarks

On the first mention in article body prose, use **Progress® Telerik® UI for
WinForms**. Do not add trademark symbols to headings, metadata, code, package
names, quoted diagnostics, or exact UI labels.

After the first mention, use **Telerik UI for WinForms**, or "the suite" when
unambiguous. Identify individual controls by their actual names, such as
RadGridView, RadListView, RadTreeView, and RadScheduler. Format API references
in monospace, for example `RadGridView` and `DataSource`.

- Never pluralize a trademark or use it as a verb.
- Never form a possessive from a trademark. Write "the Telerik UI for WinForms
  API", not "Telerik UI for WinForms's API".
- Lowercase generic nouns after product names: "`RadGridView` class", not
  "`RadGridView` Class".
- Distinguish Microsoft Windows Forms from Telerik UI for WinForms.
- Distinguish modern .NET from .NET Framework; do not invent support ranges.
- Use **C#** and **VB.NET** in prose, headings, tab labels, and code fences.
  Exact filenames, source markers, and command arguments retain their case.
- Use NuGet with its official spelling and verify exact package identifiers.
  The [RadGridView setup guide](../../../../controls/gridview/getting-started.md)
  documents `Telerik.UI.for.WinForms.AllControls` and the required references.
  Do not infer a package ID for a different control or release.
- Keep Document Processing terminology only when the article uses that
  library. `RadPdfViewer` is a UI control; PdfProcessing is a document library.

## Interaction Verbs

| Action | Verb | Example |
|---|---|---|
| Activate a button or link | click | Click **Add**. |
| Activate with two rapid clicks | double-click | Double-click the form in **Solution Explorer**. |
| Activate with the secondary button | right-click | Right-click the project. |
| Activate a keyboard key | press | Press `Enter`. |
| Choose a menu item or option | select | Select **File** > **Save**. |
| Mark a checkbox | select | Select **Show Details**. |
| Unmark a checkbox | clear | Clear **Show Details**. |
| Supply text | enter or type | Enter a name in the text box. |
| Move or resize with a pointer | drag | Drag the column boundary when resizing is enabled. |

Write "click **Save**", not "click on **Save**". Use "select" for
input-independent instructions. Do not assume that a touch gesture, keyboard
shortcut, or drag action exists for every control or Windows configuration.

## WinForms Architecture and Scope

Describe the actual application workflow:

1. Verify the Telerik release, supported Windows version, .NET or .NET
   Framework target, Visual Studio requirements, references, and license setup.
2. Add the control through the Toolbox/designer or documented application code.
   State which fields the designer creates.
3. Identify the form class, imports, and code insertion point. Code that uses
   designer fields normally follows `InitializeComponent()`.
4. Supply data through the control's documented binding APIs, such as
   `DataSource`, `DataMember`, and `BindingSource` where applicable.
5. Apply documented themes or element properties and verify the stated result.

Do not transfer registration, page markup, resource dictionaries, commands,
or binding APIs from another UI framework. Do not treat TPF elements as
Windows Forms controls. Avoid fragile `Children[index]` access when a
documented typed property is available.

For events, verify names, signatures, arguments, cancellation, and lifetime.
For asynchronous examples, verify UI-thread access and disposal. For
virtualized controls, check element reuse before recommending direct element
modification. Preserve supported design-time workflows and generated code.

## Standard Vocabulary

Use checkbox, dropdown, filename, namespace, toolbar, tooltip, workspace,
plugin, login, setup, backend, frontend, online, offline, email, website, and
webpage consistently. Use "set up" and "log in" as verbs.

Use "earlier/later version" and "starting with version". Avoid unsupported
future compatibility claims. Prefer "unavailable" over visual-only "grayed
out", but preserve precise states and APIs such as `Enabled`.

## Review Workflow

1. Identify the control/library, article type, Telerik release, framework
   target, Windows version, and design-time or runtime scope.
2. Read the article and vocabulary reference. Check metadata, prose, code,
   captions, tables, links, and instructions.
3. Correct brand names and interaction verbs without changing the task,
   section structure, API identifiers, or UI labels.
4. Verify technical claims against matching repository articles or the
   official WinForms API reference. Never invent a direct API equivalent.
5. Check C# and VB.NET equivalence, imports, designer setup, event contracts,
   data notifications, theme prerequisites, and UI-thread assumptions.
6. Report inaccessible sources, unchecked links, or untested behavior.

For review-only work, report the location, original wording, correction, and
reason without editing. For an edit request, update only the requested files.
Do not create a summary file unless requested.

## Troubleshooting Decision Guide

| Symptom | Check | Do not recommend |
|---|---|---|
| Designer cannot load a form | Exact diagnostic, referenced assemblies, framework, platform, licensing, and design-time code | Guessing a namespace or editing generated files blindly |
| Control displays no data | `DataSource`, `DataMember`, `BindingSource`, model properties, notifications, and actual sample data | Using another suite's item-source API |
| Appearance does not update | Loaded theme, `ThemeName`, local overrides, TPF element state, and virtualization | Applying a template property from another control |
| Event does not run | Subscription, signature, event arguments, cancellation, and object lifetime | Inventing an event-to-command property |
| Behavior differs at high DPI | Tested Windows display scale, app DPI mode, framework, font, and control version | Promising identical behavior without testing |
| UI fails after asynchronous work | Owning UI thread, invocation API, disposal, and lifetime | Disabling cross-thread checks |
| Assistive technology cannot identify a control | Accessible name, keyboard/focus behavior, automation support, and Narrator output | Claiming compliance from screenshots |
| License warnings appear | Exact sanitized diagnostic, release, activation method, and build environment | Requesting license keys or feed credentials |

## Quick Checklist

- [ ] Full brand with trademarks on first body mention; no trademarks in metadata or code
- [ ] No trademark possessives, plurals, or verb forms
- [ ] Correct control names, namespaces, packages, and API identities
- [ ] C# and VB.NET names and examples are consistent
- [ ] Click, press, select, clear, enter, and drag describe the actual input
- [ ] Designer fields, form lifecycle, TPF elements, and data binding remain distinct
- [ ] Themes, event contracts, UI threading, disposal, and virtualization are verified where relevant
- [ ] Windows, framework, deployment, accessibility, and version claims have evidence
- [ ] PdfProcessing is not described as a viewer or editor UI
- [ ] Diagnostics and examples contain no customer data, credentials, or license keys
