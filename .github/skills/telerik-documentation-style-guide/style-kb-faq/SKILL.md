---
name: style-kb-faq
description: "Use when writing, editing, or reviewing Telerik UI for WinForms Knowledge Base articles and FAQs. Covers how-to, troubleshooting, approved security advisories, environment evidence, C#/VB.NET samples, designer and runtime diagnosis, data binding, themes, customer-data sanitization, and concise answers. Triggers include 'write a KB article', 'create a troubleshooting guide', 'add FAQ questions', 'write a how-to', and 'document a workaround'."
---

# Knowledge Base and FAQ Articles

KB articles solve specific WinForms control or application problems. FAQs
answer common questions concisely. Use the
[metadata skill](../style-metadata-links/SKILL.md) for taxonomy, links, and
authorized frontmatter changes. Preserve existing metadata during routine
editing, including descriptions, unless the user authorizes those fields.

## KB Article Types

### How-To Articles

Use an **-ing form** title that describes a specific task:

- "Accessing RadGridView Elements by Property"
- "Binding RadGridView to a Data Source"
- Not "How to Use a Grid" or "Bind Data".

The following is an authoring template, not a tested standalone application.
Replace environment placeholders with verified values before publishing.
KB titles come from metadata: **do not add a source H1**.

`````markdown
---
title: Accessing RadGridView Elements by Property
description: "Access the RadGridView group panel through its typed property in Telerik UI for WinForms instead of relying on child collection indexes."
components: ["gridview"]
type: how-to
page_title: Accessing RadGridView Elements by Property - WinForms Knowledge Base
slug: kb-gridview-accessing-group-panel
position: 0
tags: gridview, elements, group panel
res_type: kb
---

## Environment

| Field | Value |
|---|---|
| Product | Telerik UI for WinForms |
| Control | RadGridView |
| Product Version | TESTED_TELERIK_VERSION |
| Framework | TESTED_DOTNET_OR_DOTNET_FRAMEWORK_TARGET |
| Windows | TESTED_WINDOWS_VERSION |

## Description

Access the group panel without depending on indexes in the element hierarchy.

## Solution

Start with a form containing a configured RadGridView named radGridView1.
The following fragments belong in the form class after InitializeComponent()
has created the control. Use the language of your project:

````C#
var groupPanel = this.radGridView1.GridViewElement.GroupPanelElement;
````

````VB.NET
Dim groupPanel = Me.radGridView1.GridViewElement.GroupPanelElement
````

Run the application and verify that the reference identifies the expected
group panel. Source inspection alone does not verify the runtime result.

## See Also

* [Accessing RadGridView elements]({%slug gridview-accessing-elements%})
* [RadGridView caption]({%slug winforms/gridview/caption%})
`````

This example follows the existing
[element-access article](../../../../knowledge-base/access-gridview-elements.md).
Do not treat its historical tested release as proof of all later versions.
If a typed property is unavailable for another element, verify the documented
alternative instead of inventing a property.

### Troubleshooting Articles

Use a title that states the observed problem, such as "Accessing a RadGridView
Element by Index Throws an Exception". Avoid vague titles such as "Grid
Issues".

Use the existing KB metadata conventions with `type: troubleshooting` and
`res_type: kb`. Keep the following H2 sections:

1. **Environment**: Record the tested Telerik version, framework target,
   Windows version, affected control, and design-time/runtime context.
2. **Description**: State the symptom, exact sanitized exception if relevant,
   expected behavior, and minimal reproduction.
3. **Cause**: Include only a confirmed cause. Clearly label possible causes
   and diagnostic checks when the root cause is not yet established.
4. **Solution**: Provide a scoped fix or workaround, insertion points,
   equivalent C# and VB.NET where applicable, and verification steps.
5. **Notes**: Identify limitations, side effects, known fixed versions, and
   what remains untested when relevant.
6. **See Also**: Link to related WinForms articles using slug syntax.

For element-access problems, distinguish a changed element hierarchy from
invalid data or a disposed control. Do not prescribe an index change for all
versions or assume every exception shares the same cause.

### CVE and Security Articles

Follow the security team's approved template rather than inventing an advisory:

- Use the exact CVE identifier, approved severity, affected versions, and fix.
- Verify that the advisory affects Telerik UI for WinForms or a dependency
  actually used in the scenario.
- Describe the approved impact and mitigation without exploit instructions.
- Link to the fixed release and upgrade guidance.
- Do not infer a vulnerability from an exception or reuse another product's
  advisory.

## KB Content Quality Rules

### Self-Sufficient Solutions

Link to foundational installation, licensing, or Getting Started guidance
instead of duplicating it. Once prerequisites are met, provide the code, data,
insertion points, and checks needed to perform the stated task. Do not hide
the actual solution in another article or private support ticket.

### Technical Accuracy

- Complete samples must compile and run. Label fragments and identify their
  form/class, imports, references, designer fields, and insertion point.
- Keep C# and VB.NET examples behaviorally equivalent. Use `C#` and `VB.NET`
  fence labels, normally with four backticks for the site's tabbed examples.
- Verify control types, namespaces, properties, events, package IDs, file paths,
  and element APIs against the specific release.
- Record .NET Framework or modern .NET accurately. An SDK version, a target
  framework, and a Telerik assembly version are not interchangeable.
- Diagnose `DataSource`, `DataMember`, `BindingSource`, collection and item
  notifications, and sample data separately for data-binding problems.
- For designer failures, distinguish assembly resolution, framework/platform,
  licensing, generated code, and design-time execution.
- For themes, distinguish theme loading, `ThemeName`, local overrides, TPF
  elements, and element reuse in virtualized controls.
- Check UI-thread access, event subscription lifetime, and disposal when the
  scenario involves background work or dynamic forms.
- Verify keyboard paths, focus, accessible names, Narrator output, contrast,
  and high-DPI behavior when relevant. Code inspection does not prove
  accessibility compliance.
- Record Debug/Release, x86/x64/Any CPU, deployment prerequisites, or Windows
  display scale only where relevant. Do not promise untested combinations.
- If execution is unavailable, state what remains unverified. Distinguish a
  workaround from a confirmed product fix.

Follow [style-formatting](../style-formatting/SKILL.md) for code and snippet
resolution. Keep shared placeholders intact and report missing source.

### Short, Simple, Clear

Use short sentences, simple vocabulary, and a direct tone. Get to the solution
quickly without losing essential diagnostic context. Follow
[style-grammar-words](../style-grammar-words/SKILL.md) and
[style-writing-tone](../style-writing-tone/SKILL.md).

### Working Links and Sanitized Data

Use `{%slug ...%}` links and preserve historical slash-separated slugs.
Verify external destinations and disclose unavailable checks. Do not force
new tabs when the renderer controls link behavior.

Remove customer names, email addresses, company names, database contents,
private paths, credentials, tokens, license keys, and sensitive log data.
Use generic sample data, such as `john.doe@example.com` and Contoso.

When adapting a support case, generalize the problem while keeping the
reproduction realistic. Correct grammar without changing meaning and verify
the proposed workaround before claiming it fixes the problem.

## FAQ Sections

- Use complete questions as headings with question marks.
- Apply title case consistently; FAQs are the exception to the usual
  no-trailing-punctuation heading rule.
- Keep each answer self-sufficient and normally one to four sentences.
- Answer immediately, then link to details. Avoid "see above".
- A FAQ inside a KB article inherits the no-H1 rule. A standalone non-KB FAQ
  follows standard-article structure.

```markdown
## How Do I Supply Data to RadGridView?

Assign a supported data source to the DataSource property.
See the [RadGridView setup guide]({%slug winforms/gridview/getting-started%})
for prerequisites and an example.
```

## Quick Checklist

- [ ] Correct article type, title form, and existing control taxonomy
- [ ] No authored H1; Environment, Description, and Solution are present
- [ ] Cause is confirmed or clearly labeled as a hypothesis
- [ ] Tested Telerik, framework, and Windows values replace template placeholders
- [ ] Complete solution after explicit foundational prerequisites
- [ ] Equivalent C# and VB.NET examples with context and supported fence labels
- [ ] Designer, binding, theme, threading, and element claims verified where relevant
- [ ] Workarounds, product fixes, limitations, and untested behavior are distinguished
- [ ] Metadata, stable slugs, redirects, and navigation preserved unless authorized
- [ ] No customer data, credentials, tokens, or license keys
- [ ] Links verified or unchecked destinations disclosed
- [ ] FAQ questions are concise, title case, and independently answered
