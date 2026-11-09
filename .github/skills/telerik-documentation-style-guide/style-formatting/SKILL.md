---
name: style-formatting
description: "Use this skill when formatting or remediating Telerik UI for WinForms Markdown documentation: UI labels, API references, keyboard shortcuts, paths, menus, admonitions, C# and VB.NET examples, local snippets, screenshots, and command-line instructions. Covers image introductions, automated content fixes, form/designer context, accessible visuals, and Windows captures. Use when asked to 'format the article', 'fix formatting', 'remediate Markdown', 'add a screenshot', or 'check code blocks'."
---

# Element Formatting, Admonitions, and Visual Content

This skill defines how to format inline elements, admonitions (notes, tips, cautions), code blocks, screenshots, and command-line instructions in Telerik UI for WinForms documentation. Preserve the repository's rendering syntax and each sample's technical meaning.

## Why Consistent Formatting Matters

Consistent formatting acts as a visual language — readers learn to recognize bold as a UI element, monospace as code, and italic as a new term. Breaking these conventions forces readers to re-evaluate what each piece of text means.

## Inline Element Formatting

### UI Elements — Bold

Format all **user interface element names** in bold. This includes button labels, menu names, dialog box titles, tab names, checkbox labels, field names, and window titles.

```markdown
Select **Add** in the sample app to add an item to the RadListView.
In Visual Studio, select **Project** > **Manage NuGet Packages**.
In the sample app, clear the **Show Details** checkbox.
```

**Bold syntax**: Always use asterisks to format bold text (`**bold text**`). Do not use the underscore syntax (`__bold text__`), which renders identically but reduces source readability and is inconsistent with the rest of the codebase.

| ❌ Wrong | ✅ Correct |
|---|---|
| `__Add__` | `**Add**` |
| `__Manage NuGet Packages__` | `**Manage NuGet Packages**` |

### Code References — Monospace

Format code elements in `monospace` (backticks). This includes **any mention of an API type, method, property, or member**, as well as enum values, parameters, file names, file extensions, XML/HTML tags, API endpoints, namespaces, and inline code expressions. Every API reference — no matter how brief — must appear in monospace.

```markdown
Call `InitializeComponent()` before accessing designer-created fields.
Set the `DataSource` property to a supported data source.
The `RadGridView` class displays tabular data.
Open the `Form1.cs` or `Form1.vb` file.
Use `BindingSource` where the documented binding scenario requires it.
```

| ❌ Wrong | ✅ Correct |
|---|---|
| The RadGridView control displays items. | The `RadGridView` control displays items. |
| Call InitializeComponent() first. | Call `InitializeComponent()` first. |
| Set DataSource to the collection. | Set `DataSource` to the collection. |

### New Terms — Italic

Format a term in *italic* on its first occurrence in an article when introducing it as a concept. Do not italicize the term on subsequent occurrences.

```markdown
A *data source* supplies the records displayed by a bound control.
The control's binding APIs determine how it reads the data source.
```

### Keyboard Keys — Monospace

Format individual keyboard keys in monospace. Use `+` to combine keys in a keyboard shortcut. Do not add spaces around `+`.

```markdown
Press `Enter` to confirm.
Press `Ctrl`+`S` to save the form file in Visual Studio.
Press `Ctrl`+`Shift`+`P` to open the command palette.
```

### File Paths — Monospace

Format file paths in monospace:

```markdown
Open `Form1.cs` or `Form1.vb` in the app project.
Designer-generated initialization belongs in `Form1.Designer.cs` or `Form1.Designer.vb`.
```

### Menu Sequences — Bold with Angle Brackets

Format menu navigation sequences with bold for each element and `>` as separator:

```markdown
In Visual Studio on Windows, select **Project** > **Manage NuGet Packages**.
In Visual Studio, select **View** > **Toolbox** to locate the control.
```

### Parameter Names in Instructions

When documenting command-line tools, use **bold** for literal parts (type exactly as shown) and *italic* for placeholders (user-supplied values):

```markdown
**dotnet** **add** **package** *package-name* **--version** *version-number*
```

For a command the reader can run, use a fenced shell block. Identify the working directory and replaceable values in the surrounding text. Never include a real license key or NuGet feed credential.

## Admonitions (Notes, Tips, Cautions)

Admonitions highlight important information that stands apart from the main text. Use the blockquote-based syntax specific to this documentation platform.

### Note

Use for supplementary information the reader should be aware of:

```markdown
> A note provides additional context that may be useful but is not critical to the task.
```

The repository also uses `>note` for explicitly labeled notes. Use the existing article's supported form; do not introduce GitHub alert syntax.

### Tip

Use for helpful suggestions that improve the reader's experience:

```markdown
>tip A tip provides a useful suggestion or shortcut.
```

Use the site's tip rendering rather than a custom HTML callout.

### Important / Caution

Use for warnings about potential issues, data loss, or breaking changes:

```markdown
>important An important note warns about potential issues or required prerequisites.
```

Use `>caution` or `>warning` only where supported by the documentation renderer and appropriate to the risk. Do not promise a particular label color or use color alone to communicate severity.

### Admonition Rules

- Place admonitions **after** the paragraph they relate to, not before.
- Do not stack multiple admonitions consecutively — separate them with regular text.
- Keep admonition text concise — one to three sentences.
- Do not use admonitions for routine information that belongs in the main text.
- A note that applies to every reader is probably not a note — it is main content.

## Code Blocks

### Fenced Code Blocks with Language

Always specify a language after the opening fence. Application examples use
exactly `C#` and `VB.NET`, matching the repository's tabbed code labels. Use
four-backtick fences for paired examples, as existing WinForms articles do:

`````markdown
````C#
var groupPanel = this.radGridView1.GridViewElement.GroupPanelElement;
````

````VB.NET
Dim groupPanel = Me.radGridView1.GridViewElement.GroupPanelElement
````
`````

Other supported labels, such as `xml`, `json`, `powershell`, or `bash`, are
appropriate for configuration and shell examples, not substitutes for C# or
VB.NET tab names.

### Code Block Rules

1. **Complete examples or explicit fragments** — State the filename, references, prerequisites, and insertion point. A full sample needs the form, control fields, models, data, and handlers. Label fragments explicitly and identify designer-created dependencies.
2. **No line numbers in markdown** — The rendering engine adds line numbers if needed.
3. **No trailing whitespace** — Remove trailing spaces from code lines.
4. **Consistent indentation** — Use 4 spaces for new C# and VB.NET examples and consistent indentation for XML/JSON. Preserve the indentation of shared source snippets.
5. **Meaningful variable names** — Use descriptive names, not single letters (except loop counters).

### WinForms Sample Context

Establish the supported framework, Windows environment, installation method,
references, and licensing first. Link to the
[RadGridView setup guide](../../../../controls/gridview/getting-started.md)
when using that control.

The paired fragments above follow the
[element-access article](../../../../knowledge-base/access-gridview-elements.md).
They assume a form with a designer-created `radGridView1` field and belong
after `InitializeComponent()` in form code, not in generated designer code.
Do not present them as a complete application.

Verify actual namespaces and references, including `Telerik.WinControls.UI`
where required. Check C# and VB.NET equivalence, event signatures, data source
types, notification requirements, UI-thread access, and disposal. Do not edit
generated designer files as a routine documentation fix. Source inspection
does not prove compilation or runtime behavior.

### Shared Snippet References

Keep snippet placeholders intact unless the source change is part of the task.
The [build configuration](../../../../docs-builder.yml) sets
`external-snippets-path: ./snippets`; use this repository's `snippets` folder
at the current checkout. These are placeholder syntax illustrations, not
claims that a particular snippet ID or file exists:

```xml
<snippet id='exact-snippet-id'/>
{{source=GridView\Example.cs region=ExactRegion}}
{{source=GridView\Example.vb region=ExactRegion}}
```

Use `docs-code-reader` to verify exact IDs or balanced source regions.
`--snippets-root` explicitly overrides the default root; do not search other
repositories or a hard-coded branch. Preserve `{{endregion}}` markers and
language-specific source references. If the source is missing, report that
limitation rather than inventing code or claiming compilation. Use a longer
outer fence when showing Markdown that contains fenced examples.

### Code Comments in Examples

When code examples include comments:

- Write comments in **English**.
- Keep comments to **80 characters or fewer** per line.
- Use full sentences starting with a capital letter and ending with a period.
- Comment only what is not obvious from the code itself.

Do not add comments that narrate assignments or control creation. Explain setup and platform restrictions in the surrounding prose; preserve useful comments in resolved source snippets.

## Images and Captions

Apply these rules to every documentation review, audit, accessibility or quality assessment, content-generation task, Markdown remediation, and automated content fix. These repository requirements override conflicting image-caption guidance, including an external style guide. They do not authorize changes during a review-only task or expand an explicitly limited editing scope; report out-of-scope defects with proposed corrections.

### Image Validation and Remediation

Inspect Markdown images (including reference-style and linked images) and HTML images in the article body. Exclude YAML metadata, code fences, literal Markdown examples, and template-generated content from image validation.

Every image must have one of these approved introductions immediately before it, with only optional blank lines and required list or blockquote indentation between the introduction and image:

* A meaningful introductory sentence explaining the image's purpose, content, or what the reader should observe.
* A caption block using the exact syntax `>caption This describes shortly the image`.

Preserve an existing introduction that provides sufficient context. An introduction elsewhere in the section, alt text alone, or text after the image does not satisfy this rule. Each image in a sequence needs its own introduction. Keep meaningful alt text as a separate accessibility requirement; a caption does not replace alt text.

Never use a heading or standalone bold text as an image introduction. Never pair a caption with a heading used solely to label the same image. Inline bold UI labels within a complete introductory sentence remain valid. Genuine section headings may remain when they organize substantive content, but a separate approved introduction must immediately precede the image.

When editing or automatically fixing content, replace a heading or bold label used solely to introduce an image with a concise, reader-focused sentence or a `>caption` block. Remove redundant image-only heading/caption pairs, retaining one approved introduction. Move or rewrite after-image captions when needed to satisfy the before-image rule. Do not remove structural headings that organize real section content. Add missing introductions using verified image context; do not invent visual details when the image or context is unavailable, and report any unresolved introduction instead of claiming compliance.

Compliant sentence introduction:

```markdown
The following image shows the Data Source Configuration dialog.

![Data Source Configuration](images/data-source.png)
```

Compliant caption introduction:

```markdown
>caption Data Source Configuration dialog

![Data Source Configuration](images/data-source.png)
```

Non-compliant heading introduction (replace the image-only heading with a sentence or caption):

```markdown
### Data Source Configuration

![Data Source Configuration](images/data-source.png)
```

Non-compliant bold introduction (replace the bold label with a sentence or caption):

```markdown
**Data Source Configuration**

![Data Source Configuration](images/data-source.png)
```

Non-compliant heading/caption pair (remove the redundant image-only heading):

```markdown
### Data Source Configuration

>caption Data Source Configuration dialog

![Data Source Configuration](images/data-source.png)
```

### Image Sample Prompts and Expected Outcomes

| Prompt | Required outcome |
|---|---|
| Fix missing image introductions, bold screenshot labels, and image-only headings | Preserve sufficient adjacent introductions; add or replace labels with a meaningful sentence or exact `>caption` block immediately before each image, without inventing image details. |
| Generate a standard guide and a KB workaround with screenshots | Introduce every image using an approved adjacent sentence or caption and provide meaningful alt text. |

### Image Review and Automated-Fix Acceptance

Run this checklist before scoring or editing and again after content generation or authorized remediation:

* [ ] Every image has a meaningful sentence or exact `>caption` block immediately before it.
* [ ] No image relies on a heading, standalone bold label, after-image text, or redundant heading/caption pair as its introduction.
* [ ] Sufficient existing introductions and meaningful alt text are preserved; unverified image content is not invented.
* [ ] Authorized automated fixes replace image-only headings and bold labels, add missing introductions, and rerun these checks.

For review-only work, report each image-introduction violation with its location and proposed correction without modifying the article. For explicitly scoped edits, report remaining out-of-scope issues. New content and image remediation pass only when every applicable image check passes.

## Screenshots

Screenshots complement text but do not replace it. Every screenshot, like every other image, must have a meaningful introductory sentence or exact `>caption` block immediately before it. Text after the image is not an introduction.

### Screenshot Requirements

| Rule | Specification |
|------|--------------|
| Appearance | Default control theme and font size unless styling, dark theme, or text scaling is the subject; identify any deliberate variation |
| Background | White or the application's default background |
| Size | Maximum 1000 pixels wide |
| Format | PNG for UI screenshots, SVG for diagrams |
| Annotations | Arrows to point, boxes to surround areas of interest |
| Annotation style | Arial 16pt, primary color `#f56147` (Telerik red-orange) |
| Cropping | Show the relevant control and enough context; retain the designer or Windows chrome only when relevant |
| Personal data | Remove or redact any personal information, real email addresses, or real user names |
| Platform | Identify Windows version, display scale/DPI, theme, and framework where relevant; do not imply untested configuration parity |
| Accessibility | Provide a text equivalent; do not rely on color, annotation position, or a screenshot as proof of screen-reader support |

### Screenshot Placement

For an article in `controls/gridview/`, the existing getting-started guide uses:

```markdown
The hierarchical RadGridView displays product categories and product details.

![RadGridView displaying product categories and expandable product details](images/grid-getting-started001.png)
```

- Place every image immediately after its meaningful introductory sentence or exact `>caption` block; only blank lines may separate them.
- Never introduce an image with a heading or standalone bold label. During authorized fixes, replace image-only headings and bold labels with a sentence or caption; retain genuine structural headings and sufficient existing introductions.
- Never pair a caption with an image-only heading. Use `>caption Hierarchical RadGridView with product categories and details` as the alternative to the sentence above.
- Use descriptive alt text that explains what the screenshot shows.
- Store screenshot files in an `images/` subdirectory relative to the article.

## Tables

### When to Use Tables

Use tables for structured data with two or more columns and three or more rows. Do not use tables for simple lists or single-column data.

### Table Formatting

- Include a header row with descriptive column names.
- Align content to the left (default).
- Keep cell content concise — avoid long paragraphs in table cells.
- Introduce every table with a sentence ending in a colon or period.

```markdown
The following table distinguishes common data controls:

| Control | API Type | Data Shape |
|--------|-----------|-------------|
| RadGridView | `RadGridView` | Tabular items |
| RadListView | `RadListView` | Item collections |
| TreeView | `RadTreeView` | Hierarchical items |
```

## Quick Checklist

When reviewing an article for formatting, verify:

- [ ] Every image has a meaningful sentence or exact `>caption` block immediately before it
- [ ] Missing introductions, image-only headings, standalone bold labels, and redundant heading/caption pairs are reported and corrected when authorized
- [ ] UI elements (buttons, menus, tabs, fields) are in **bold**
- [ ] Bold uses `**` asterisk syntax, not `__` underscore syntax
- [ ] All API mentions (types, methods, properties, members) are in `monospace`
- [ ] Code elements (methods, classes, properties, file names) are in `monospace`
- [ ] New terms are in *italic* on first occurrence only
- [ ] Keyboard shortcuts use `Key`+`Key` format in monospace
- [ ] Menu sequences use **Menu** > **Item** format
- [ ] Notes use `>` syntax, tips use `>tip`, important items use `>important`, cautions use `>caution`, and warnings use `>warning`
- [ ] Admonitions follow related text, are concise, and are not stacked
- [ ] Code blocks specify the language identifier
- [ ] Form classes, designer fields, data binding, themes, and control APIs match the target release
- [ ] C# and VB.NET examples include required types, imports, references, insertion points, and event contracts
- [ ] External snippet IDs resolve to reviewed source; missing source or untested compilation is disclosed
- [ ] Nested markdown examples use longer outer fences
- [ ] Code comments are English, ≤80 chars, full sentences
- [ ] Screenshots have descriptive alt text and are ≤1000px wide
- [ ] Captures identify their platform and explain theme or scaling variations
- [ ] Text covers the workflow and accessibility details independently of screenshots and color
- [ ] Tables have header rows and introductory text
