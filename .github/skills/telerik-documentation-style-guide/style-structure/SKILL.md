---
name: style-structure
description: "Use this skill when structuring or remediating Telerik UI for WinForms articles, headings, lists, and figures. Covers mandatory standard-article and KB H1 rules, image introductions, automated heading fixes, Getting Started, Installation, Fundamentals, control overviews, Data Binding, Commands, Styling, Templating, Events, Localization, Accessibility, and Troubleshooting. Use when asked to 'fix headings', 'restructure the article', 'validate documentation structure', 'check list formatting', or 'organize the content'."
---

# Article Structure, Headings, and Lists

This skill defines how to structure articles, write headings, and format lists in Telerik UI for WinForms documentation. Preserve the purpose of each article type and the repository's navigation conventions.

## Article Structure

Every documentation article follows a predictable structure that helps readers scan and find information quickly.

### Standard Article Skeleton

```markdown
---
title: Getting Started
page_title: Getting Started - WinForms GridView Control
slug: winforms/gridview/getting-started
description: "Learn how to add the Telerik UI for WinForms RadGridView to your app, configure the required setup, and display a collection of items."
components: ["gridview"]
tags: winforms, gridview, getting started
position: 1
---

# Getting Started with the WinForms RadGridView

Brief introduction explaining the control and the result the reader will achieve.

## Prerequisites

State the supported .NET and Telerik versions, target platform, package, licensing, and app setup. Link to the shared setup guide rather than duplicating version matrices.

## Define the Control

Show the Toolbox/designer steps or documented programmatic control creation.
Identify the form class, required references, and designer-created fields.

## Bind Sample Data

Provide models, sample data, DataSource/BindingSource setup where applicable,
and the expected result. Identify C# and VB.NET filenames and insertion points
relative to InitializeComponent().

## Additional Resources

Link to the same control's data binding, commands, styling, or other next-step articles.

## See Also

* [Accessing RadGridView Elements]({%slug gridview-accessing-elements%})
* [RadGridView Caption]({%slug winforms/gridview/caption%})
```

This skeleton illustrates a control getting-started page, not a requirement to add every section to every article. See the [actual RadGridView guide](../../../../controls/gridview/getting-started.md) and the [metadata skill](../style-metadata-links/SKILL.md) for field and link conventions.

### WinForms Article Types

Choose the structure that matches the reader's task:

| Article Type | Content and Validation Focus |
|---|---|
| Getting Started | Supported framework and Windows versions, references, licensing, Toolbox/designer or code setup, sample data, and observable result |
| Installation | Supported .NET or .NET Framework target, Visual Studio, NuGet or assemblies, licensing, deployment, and verification; never embed credentials |
| Fundamentals | C#/VB.NET, forms, designer lifecycle, TPF elements, data binding, notifications, events, UI threading, disposal, and themes |
| Control Overview | Purpose, supported features, control identity, platform limitations, and links to Getting Started and feature pages |
| Data Binding | Data model, `DataSource`, `DataMember`, `BindingSource`, supported collection/item notifications, and equivalent C#/VB.NET |
| Commands | Only the control's documented command APIs, conditions, parameters, and event integration; do not assume MVVM contracts |
| Styling | Theme assemblies/components, `ThemeName`, TPF properties, local overrides, contrast, and high DPI |
| Templates and Elements | Control-specific templates, TPF element hierarchy, virtualized element reuse, and preserved interaction/accessibility |
| Events | Exact event name, signature, event arguments, subscription context, and lifetime/unsubscription where relevant |
| Localization | Localization resources, culture-sensitive formatting, right-to-left support, and control/platform scope |
| Accessibility | Accessible names, Narrator and automation behavior, focus, keyboard paths, contrast, Windows scaling, and verification evidence |
| Troubleshooting | Symptoms, environment, evidence, cause when known, scoped fix or workaround, limitations, and verification |
| KB Articles | Environment, Description, Cause for troubleshooting, Solution, and related links; follow the [KB skill](../style-kb-faq/SKILL.md) |

These are authoring scenarios, not a mandate to create new folders or taxonomy values. Reuse shared templates for platform requirements and setup. Do not copy volatile compatibility tables into feature articles.

### Structural Rules

1. **Article-type-specific H1 usage** — Standard articles must have exactly one authored H1, such as "Getting Started with the WinForms RadGridView", while `title` can remain "Getting Started" for navigation. Report additional H1s and demote them according to hierarchy; recommend one appropriate H1 when missing. KB articles must have no authored H1: never add one, and flag existing H1s for removal or conversion. Metadata-generated KB titles do not change this source requirement.
2. **Text between heading and subheadings** — Always write at least one sentence between a heading and its first subheading. This gives readers context before they dive into subsections.
3. **Minimum two subheadings** — If a section has subheadings, it must have at least two. A single subheading under a heading is a sign the content should be merged with the parent.
4. **Heading levels do not skip** — Go from H2 to H3, not from H2 to H4. Every heading level must be one deeper than its parent.
5. **"See Also" section** — Place a "See Also" section at the end of the article with links to related content. This is a convention, not a hard requirement.

### H1 Usage

Apply these rules to every documentation review, audit, accessibility or quality assessment, content-generation task, Markdown remediation, and automated content fix. These repository requirements override conflicting heading guidance, including an external style guide. They do not authorize changes during a review-only task or expand an explicitly limited editing scope; report out-of-scope defects with proposed corrections.

#### Identify the Article Type First

Treat an article as Knowledge Base (KB) content when its path is under `knowledge-base/`, its metadata contains `res_type: kb`, or the task explicitly identifies it as KB content. A how-to or FAQ is not automatically a KB article. A FAQ within a KB article inherits the KB rules; a standalone non-KB FAQ follows the standard-article rules.

Inspect the article body separately from YAML metadata, code fences, literal Markdown examples, and template-generated titles. Do not count those as authored headings. Include authored ATX (`#`), Setext, and HTML headings when determining heading levels. If article type is unresolved or classification signals conflict, report the ambiguity and do not add an H1 until resolved.

#### Heading Validation and Remediation

| Article type | Mandatory validation | Review recommendation and authorized remediation |
|---|---|---|
| Standard documentation article | Exactly one H1; flag both zero H1s and multiple H1s | If missing, recommend one appropriate H1; new content must include it. If multiple exist, report each additional H1 and convert it to H2 or a deeper level appropriate to its section. |
| KB article | No H1 headings, without exception | Never add an H1. Flag every H1 and recommend removing a redundant title or converting a meaningful section heading to H2 or the appropriate deeper level; apply that correction when editing is authorized. |

Preserve the document hierarchy, section meaning, and title metadata. Keep the primary H1 in standard articles; do not blindly demote all headings. When converting a section, adjust its descendants only as needed to preserve parent-child relationships and avoid skipped levels. KB top-level sections start at H2; this is not a missing-H1 or skipped-level defect. Check affected anchors and internal references when heading changes alter them; disclose any unresolved references. Do not edit stable URLs or metadata merely to fix headings.

Compliant standard article:

```markdown
# Configure the Scheduler

## Prerequisites

## Configuration
```

Compliant KB article:

```markdown
## Environment

## Description

## Solution
```

Non-compliant standard article (convert the second H1 to H2):

```markdown
# Configure the Scheduler

# Additional Information
```

Non-compliant standard article with no H1 (recommend a single descriptive H1):

```markdown
## Prerequisites

## Configuration
```

Non-compliant KB article (remove the redundant H1 or convert it without disrupting the sections):

```markdown
# Error When Loading Data

## Symptoms

## Resolution
```

#### Heading Sample Prompts and Expected Outcomes

| Prompt | Required outcome |
|---|---|
| Review a standard Scheduler article with no H1 | Report the missing H1 and recommend one appropriate title; do not edit during review-only work. |
| Fix a standard article with two H1s | Report the additional H1 and demote it according to hierarchy, preserving the primary H1 and checking affected references. |
| Review and remediate a KB article with an H1 | Flag the H1 and remove a redundant title or convert a meaningful section heading; never add an H1, including for SEO or FAQ formatting. |
| Generate a standard guide and a KB workaround | Include exactly one H1 in the standard guide and none in the KB article. |

#### Heading Review and Automated-Fix Acceptance

Run this checklist before scoring or editing and again after content generation or authorized remediation:

* [ ] Article type is identified; ambiguity is reported before changing H1 usage.
* [ ] Standard articles have exactly one H1; missing and additional H1s are reported, with a specific recommendation for each.
* [ ] KB articles have zero H1s; no generation or fix step adds an H1.
* [ ] Heading corrections preserve hierarchy and check affected anchors and references.

For review-only work, report each heading violation with its location and proposed correction without modifying the article. For explicitly scoped edits, report remaining out-of-scope issues. New content and heading remediation pass only when every applicable heading check passes.

## Title Case Capitalization

All headings use **title case**. Title case capitalizes most words but keeps certain short words lowercase.

### Capitalize These Words

- **Nouns**: Document, Page, Stream, Table, Field
- **Verbs** (including short ones): Is, Are, Was, Be, Do, Has, Get, Set, Run, Use
- **Adjectives**: Fixed, Custom, New, Digital, Large
- **Adverbs**: Always, Never, Quickly, Also
- **Pronouns**: You, Your, It, Its, They, Their
- **Subordinating conjunctions**: If, When, Because, Although, While, Since, After, Before, Until

### Keep These Words Lowercase

(unless they are the first or last word of the heading)

- **Articles**: a, an, the
- **Coordinating conjunctions**: and, but, or, nor, for, yet, so
- **Short prepositions** (4 letters or fewer): in, on, at, to, by, for, of, up, off, out, with
- **"to" in infinitives**: How to Export, Getting to Know

### First and Last Words

Always capitalize the **first word** and the **last word** of a heading, regardless of the rules above.

### Examples

| ❌ Wrong | ✅ Correct |
|---|---|
| How to bind data to the gridview | How to Bind Data to the RadGridView |
| Working with listview templates | Working with RadListView Templates |
| Getting started with the api | Getting Started with the API |
| Create And Style a treeview | Create and Style a TreeView |
| Loading data From A remote Source | Loading Data from a Remote Source |

### Tricky Cases

| Word | Rule | Example |
|------|------|---------|
| is, are, was, be | Verb — capitalize | "What Is a Binding Context" |
| it, its | Pronoun — capitalize | "How It Works" |
| with | Preposition (4 letters) — lowercase | "Working with Commands" |
| from | Preposition (4 letters) — lowercase | "Import Data from a File" |
| into | Preposition (4 letters) — lowercase | "Load Data into a RadListView" |
| through | Preposition (7 letters) — capitalize | "Iterating Through Items" |
| between | Preposition (7 letters) — capitalize | "Navigating Between Pages" |

## Heading Style

### -ing Forms in Headings

**-ing forms (gerunds) are acceptable and often preferred in task-oriented headings.** Body text favors direct verbs, but established terms such as data binding and templating remain unchanged.

```markdown
## Configuring the RadGridView Columns   ✅ (heading — gerund OK)
## Loading Data from a Remote Source   ✅ (heading — gerund OK)
## How to Configure RadGridView Columns  ✅ (alternative form)
```

### Parallel Headings

Headings at the same level within a section should follow the same grammatical pattern.

| ❌ Inconsistent | ✅ Parallel |
|---|---|
| ## Installing the Package / ## Configuration / ## How to Run Tests | ## Installing the Package / ## Configuring the Settings / ## Running the Tests |
| ## Bind Data / ## Styling / ## The Template | ## Binding Data / ## Styling the Control / ## Templating Items |

### Heading Content Rules

- **No inline code in headings** — Avoid backtick-formatted code in headings when possible. Use plain text or rephrase.
   - ❌ `## Using the \`DataSource\` Property`
   - ✅ `## Setting the Items Source`
- **No links in headings** — Do not place hyperlinks inside heading text.
- **No trailing punctuation** — Do not end headings with periods, colons, or question marks (except FAQ headings, which use question marks by design).

## Lists

Lists make information scannable. Use them for sequences of steps, sets of options, or collections of related items.

### Ordered Lists (Numbered)

Use ordered lists for **sequential steps** where order matters:

```markdown
1. Install the documented Telerik UI for WinForms package.
2. Add the RadGridView to the form through the Toolbox or documented code.
3. Identify the designer-created control field.
4. Assign the sample collection to DataSource after InitializeComponent().
```

### Unordered Lists (Bulleted)

Use unordered lists for **non-sequential items** where order does not matter:

```markdown
The suite includes the following controls:

* RadGridView
* RadListView
* TreeView
* Scheduler
```

### List Formatting Rules

1. **Introductory sentence** — Always precede a list with an introductory sentence that ends with a **colon** (`:`).

2. **Capitalize the first word** — Every list item starts with a capital letter.

3. **Punctuation consistency** — If any list item is a complete sentence, **all items** in that list must be complete sentences and end with a period. If all items are fragments, none end with a period.

   ```markdown
   ✅ All fragments (no periods):
   * Data binding
   * Item selection
   * Item templating

   ✅ All complete sentences (all periods):
   * The RadListView displays bound items.
   * The TreeView displays hierarchical data.
   * The Scheduler displays appointments.

   ❌ Mixed (some periods, some not):
   * The RadListView displays bound items.
   * Item selection
   * The Scheduler displays appointments.
   ```

4. **Parallel structure** — All items in a list should follow the same grammatical pattern.

   ```markdown
   ❌ Not parallel:
   * Bind the data.
   * Configuration of settings.
   * You can import data.

   ✅ Parallel:
   * Bind the data.
   * Configure the settings.
   * Import the data.
   ```

5. **No single-item lists** — A list with one item is not a list. Convert it to a regular sentence.

6. **Nesting depth** — Do not nest lists more than **three levels** deep. If you need more depth, restructure the content into subsections.

7. **List marker consistency** — Use `*` for unordered lists (not `-` or `+`). Use `1.`, `2.`, `3.` for ordered lists.

## Figures and Captions

Follow the [formatting skill](../style-formatting/SKILL.md) for image introductions, caption syntax, alt text, and remediation examples.

## Quick Checklist

When reviewing an article for structure, verify:

- [ ] Standard articles have exactly one H1; missing or multiple H1s are flagged and corrections preserve hierarchy
- [ ] KB articles have no H1; existing H1s are flagged for removal or conversion and no fix adds one
- [ ] Article structure matches its WinForms task rather than an unrelated product workflow
- [ ] Setup, C#/VB.NET form and designer context, sample data, expected result, Windows scope, and framework prerequisites are present
- [ ] Accessibility, high-DPI, and localization claims identify tested Windows configurations and evidence
- [ ] Text between every heading and its first subheading
- [ ] At least two subheadings per section (or none)
- [ ] Heading levels do not skip (H2→H3, never H2→H4)
- [ ] All headings use title case capitalization
- [ ] Headings at the same level use parallel structure
- [ ] No inline code, links, or trailing punctuation in headings, except question marks in FAQ headings
- [ ] Every list has an introductory sentence ending with a colon
- [ ] List items are capitalized and have consistent punctuation
- [ ] List items use parallel grammatical structure
- [ ] No single-item lists
- [ ] Lists nested no deeper than three levels
- [ ] Related links stay within the intended control family and navigation path
