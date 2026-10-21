---
title: Accessibility Audit Report - Telerik UI for WinForms Documentation
publish: false
---

# Accessibility Audit Report – Telerik UI for WinForms Documentation

**Audit date:** October 21, 2026  
**Scope:** Markdown source in this repository. This is a documentation audit, not a conformance assessment of the Telerik UI for WinForms product or the rendered documentation website.

## Executive Summary

The documentation has useful accessibility coverage: it includes UI Automation guidance, a Section 508 support statement, keyboard instructions for several controls, DPI guidance, and individual UI Automation pages. Many sampled images have descriptive alternative text, and the getting-started material uses practical instructions and consistently labeled callouts.

The main concerns are recurring skipped heading levels and vague link labels, plus blank table cells and untagged code fences in representative pages. Product accessibility guidance is also fragmented and uneven: a reader must assemble information from framework and control pages, and the Section 508 page documents partial or unsupported criteria without identifying affected controls or workarounds. No WCAG mapping or screen-reader testing procedure was found in the reviewed sources.

**Priority recommendations**

1. Correct heading-level jumps and replace vague link labels in shared and frequently visited content.
2. Repair blank or structurally complex tables and add language identifiers to every code fence.
3. Publish a discoverable accessibility entry point with a component coverage matrix, known limitations, and screen-reader testing guidance.
4. Reconcile and maintain the compliance statement, including its partial and unsupported criteria and the relevant product versions.

## Method and Scope

Before this report was added, the repository contained 3,122 Markdown files. A repository-wide source scan checked heading transitions, image syntax, link labels, tables, and fenced code; manual review sampled getting-started, component, framework, conceptual, and knowledge-base articles, including the files cited below. Findings describe patterns in source content; they do not establish how the live site renders these elements or whether product controls conform to accessibility standards.

The review followed the checks in `.github/skills/accessibility-doc-optimization/SKILL.md`: heading hierarchy, image alternatives, link purpose, table structure, plain language, formatting independence, callouts, and code blocks. It also checked product-documentation coverage for keyboard use, UI Automation, MSAA, Section 508, DPI, and focus.

## Documentation Accessibility Findings

### 1. Heading levels are frequently skipped

**Severity:** Medium

**Description**  
Many articles jump from an H2 directly to an H4, or from the page H1 directly to H3/H4. The pattern is especially visible in knowledge-base solution articles. This breaks the document outline even when the heading text itself is descriptive.

**Affected Files/Pages**

- `knowledge-base/masked-edit-box-play-sound.md` — H2 “Solution” is followed by H4 “Form Code.”
- `knowledge-base/grid-column-selection.md` — H2 “Solution” is followed by H4 “Column selection.”
- `knowledge-base/scheduler-databinding-tutorial.md` — H2 “Solution” is followed by H4 “Setup the data binding.”
- `introduction.md` — H2 “Help us Improve the Telerik UI for WinForms Documentation” is followed by H4 “Submit a New Issue at GitHub.”
- Similar transitions occur in `knowledge-base/`, `telerik-presentation-framework/`, and other directories.

**Impact**  
Screen-reader users who navigate by heading level can lose the parent-child relationships between sections and may find it harder to scan or understand the page structure.

**Recommendation**  
Normalize headings so each level follows its parent (for example, use H3 below H2). Add a Markdown heading-lint check that ignores fenced code and front matter, then manually review headings that are generated or intentionally use a different structure.

**Examples**  
In `knowledge-base/masked-edit-box-play-sound.md`, change “Form Code” from `####` to `###`, or add the missing intermediate section if the content hierarchy requires it.

### 2. Generic link labels are common

**Severity:** Medium

**Description**  
Links labeled “here,” “link,” “this,” or “Read more” recur throughout the repository. Nearby prose sometimes supplies context, but the label alone does not reliably identify the destination when links are read out of context.

**Affected Files/Pages**

- `telerik-presentation-framework/microsoft-active-accessibility-support.md` — “An example is available [here]” (line 23).
- `telerik-presentation-framework/section-508-compliance.md` — “More info … you can find [here]” (lines 34 and 48).
- `knowledge-base/scheduler-databinding-tutorial.md` — a downloadable sample is linked as “[here]” (line 321).
- `controls/richtexteditor/overview.md` — several feature links use “[Read more]” with different destinations.
- Many other knowledge-base articles use “[link]” or “[here]” for sample projects.

**Impact**  
Users navigating through a screen reader’s link list or using voice control may not know which link to select. Generic labels also make links harder to scan for all readers.

**Recommendation**  
Use concise destination or action labels, such as “View the MSAA support example” or “Download the Scheduler data-binding sample.” Keep link labels distinct when they lead to different destinations.

### 3. Some data tables contain blank cells or complex markup

**Severity:** Medium

**Description**  
Some tables use empty cells where a value or explicit “Not applicable” would clarify the relationship. Other pages use nested HTML tables or long prose inside data cells. These patterns can make row and column relationships difficult to follow, especially when navigating by cell.

**Affected Files/Pages**

- `telerik-presentation-framework/section-508-compliance.md` — several rows in the Section 1194.21 table have an empty “Additional Comments” cell (for example, lines 31–32 and 36–42).
- `telerik-presentation-framework/dpi-support.md` — the DPI manifest settings table uses nested HTML tables for values (lines 46–51).
- `controls/treeview/usability/keyboard-navigation.md` — the keyboard table has a blank first column for rows without a key image (lines 19–32).

**Impact**  
Blank cells can be announced without useful context, and complex tables increase the effort needed to associate values with their headers. The nested markup may also render inconsistently across documentation tools.

**Recommendation**  
Replace intentional blanks with “Not applicable” or restructure the information as lists. Split complex tables into smaller tables with clear lead-in text, use simple header/data relationships, and verify the rendered output with keyboard and screen-reader navigation.

### 4. Some fenced code blocks have no language identifier

**Severity:** Low

**Description**  
Most sampled code fences identify a language, but some command and XML examples use bare fences. The source scan found examples in installation and getting-started content.

**Affected Files/Pages**

- `getting-started/first-steps.md` — command examples use untagged fences (lines 29–31 and 35–37).
- `installation-and-upgrades/installation.md` — command and package examples use untagged fences (lines 22–36 and 44–46).

**Impact**  
Language-aware tools and syntax highlighters cannot reliably identify the contents. This can reduce readability and make code samples harder to distinguish from surrounding text.

**Recommendation**  
Label command blocks with the appropriate language, such as `bash`, `powershell`, or `text`, and XML examples with `xml`. Continue introducing each block in surrounding prose and identify any values readers must replace.

### 5. Callout and blockquote styles are not fully consistent

**Severity:** Low

**Description**  
The repository uses typed callouts such as `>note` and `>important`, but some informational or instructional text is formatted as an untyped blockquote. For example, the UI Automation overview uses an untyped blockquote for a reference and a typed note later on the same page.

**Affected Files/Pages**

- `telerik-presentation-framework/ui-automation.md` — untyped reference blockquote (line 16) alongside a `>note` block (line 42).
- `installation-and-upgrades/installation.md` — untyped blockquotes (lines 40 and 50) and a typed `>important` notice (line 52).

**Impact**  
Readers and assistive technologies may not be able to distinguish a note or warning from a quotation or other indented text. Inconsistent patterns also make authoring and rendering less predictable.

**Recommendation**  
Use the documentation platform’s typed callout syntax for notes, warnings, tips, and important actions. Keep ordinary quotations as blockquotes and reserve each callout type for its intended level of urgency.

### 6. Accessibility coverage is fragmented and hard to discover

**Severity:** Medium

**Description**  
Accessibility information is spread across Telerik Presentation Framework articles and individual control pages. The framework UI Automation overview provides links to a subset of controls, while keyboard instructions live under different component-specific categories. No single accessibility landing page or clearly linked overview was found in the reviewed source.

**Affected Files/Pages**

- `telerik-presentation-framework/ui-automation.md`
- `telerik-presentation-framework/microsoft-active-accessibility-support.md`
- `telerik-presentation-framework/section-508-compliance.md`
- `controls/*/ui-automation.md`
- Keyboard pages including `controls/gridview/fundamentals/keyboard-support.md`, `controls/treeview/usability/keyboard-navigation.md`, and `controls/calendar/features/keyboard-navigation.md`
- `README.md` — contribution guidance points to the documentation wiki but does not include accessibility-specific review criteria (lines 56–58).

**Impact**  
Developers may not find the available accessibility behavior or may overlook differences between controls. Fragmentation can lead to inconsistent implementation and testing in customer applications.

**Recommendation**  
Create an accessibility entry point that links to UI Automation, keyboard support, MSAA, DPI/focus, compliance, and component pages. Include a maintained component matrix that distinguishes documented features, known limitations, and controls not yet assessed.

### 7. Compliance statements do not provide enough actionable detail

**Severity:** Medium

**Description**  
The Section 508 page gives criterion-level outcomes but does not identify the controls or product versions covered by its partial-support statements. It describes “minor exceptions” and “a few exceptions” without listing them, and marks one criterion “Not Supported” without an explanation or workaround. The reviewed documentation does not map the statements to WCAG 2.1/2.2 criteria.

**Affected Files/Pages**

- `telerik-presentation-framework/section-508-compliance.md` — partial keyboard, focus-indicator, and text-exposure statements (lines 31–36); additional partial-support statements (lines 48–53).
- `telerik-presentation-framework/ui-automation.md` — Accessibility Insights testing is mentioned, but no test scope, version, date, results, or per-control test matrix is provided (line 55).

**Impact**  
Customers cannot determine whether the stated support applies to their control, version, or use case. They may also mistake a general support statement for an assurance of conformance.

**Recommendation**  
Review and date the compliance statement. For each partial or unsupported criterion, list the affected controls, relevant version, observed limitation, and any workaround. Clearly distinguish product claims from developer responsibilities, and link to applicable WCAG guidance or explain the scope of the assessment. Document the Accessibility Insights test setup and publish a per-control summary where possible.

## Accessibility Documentation Coverage Assessment

### Existing strengths

- `telerik-presentation-framework/ui-automation.md` describes UI Automation support, global enable/disable behavior, and links to component articles. The repository contains 19 control-specific `ui-automation.md` pages, including Button, CheckBox, TextBox, GridView, TreeView, DropDownList, and Form.
- Keyboard guidance is available for several key components, including GridView, TreeView, Calendar, Menu, GanttView, ListView, RichTextEditor, PropertyGrid, and VirtualGrid. For example, `controls/gridview/fundamentals/keyboard-support.md` lists arrow-key navigation, F2, Enter, and Escape.
- `telerik-presentation-framework/microsoft-active-accessibility-support.md` introduces MSAA, and `telerik-presentation-framework/section-508-compliance.md` acknowledges partial and unsupported criteria instead of claiming universal support.
- `telerik-presentation-framework/dpi-support.md` provides DPI-awareness concepts and application configuration guidance. Focus appearance is covered in `telerik-presentation-framework/focus-border-and-ripple-animations.md`.
- In the sampled articles, Markdown images use non-empty alternative text that generally describes the control or image purpose. For example, `controls/treeview/usability/keyboard-navigation.md` labels the key images with the corresponding key and control.

### Documentation gaps

#### Accessibility entry point and coverage matrix

**Affected components:** All Telerik UI for WinForms controls.  
**Current state:** Framework-level coverage lives in separate MSAA, UI Automation, Section 508, DPI, and focus articles; component pages add uneven detail.  
**Missing information:** A single index that shows which components document UI Automation, keyboard behavior, screen-reader support, limitations, and testing status. The central UI Automation page lists selected controls, not a complete component-by-component assessment.  
**Recommendation:** Add an accessibility landing page with a dated, maintained component matrix and links to each control’s keyboard and automation documentation.

#### Screen-reader testing and user guidance

**Affected components:** Control suite-wide; individual UI Automation-supported controls.  
**Current state:** Screen readers are mentioned in relation to UI Automation. The framework overview says controls are tested with Accessibility Insights for Windows.  
**Missing information:** A customer-facing procedure for testing with named screen readers, expected accessible names/roles/states, and common troubleshooting steps. The scope and results of the stated Accessibility Insights testing are not reported.  
**Recommendation:** Document a repeatable test procedure, supported assistive-technology/version combinations, expected behavior, and known issues. Publish results only where verified.

#### Microsoft Active Accessibility guidance

**Affected components:** Controls that expose Microsoft Active Accessibility (MSAA) information.  
**Current state:** `telerik-presentation-framework/microsoft-active-accessibility-support.md` briefly introduces MSAA and links to external background material and a coded UI example.  
**Missing information:** The article does not clearly identify which Telerik controls expose MSAA, how support relates to UI Automation, or how to inspect and validate accessible names, roles, and states. Its statement that only standard Windows Forms controls support the technology is difficult to reconcile with its following Telerik coded UI example.  
**Recommendation:** Clarify the MSAA and UI Automation relationship, identify applicable controls and limitations, and provide a current, tested example and validation steps.

#### Component-specific keyboard coverage

**Affected components:** Controls without a dedicated keyboard or navigation page, including areas not represented in the reviewed keyboard guides.  
**Current state:** Keyboard documentation exists for several controls but is distributed across `fundamentals`, `usability`, `features`, and other folders.  
**Missing information:** A clear inventory of controls assessed for keyboard operation, focus order, focus visibility, shortcuts, and any keyboard-only limitations.  
**Recommendation:** Add consistent keyboard/focus sections to component documentation or explicitly identify controls that have not been assessed. Include complete keyboard instructions, not only shortcut tables.

#### High-contrast and color-contrast guidance

**Affected components:** Themeable controls and application-level styling.  
**Current state:** The Section 508 matrix discusses user color settings and customizable themes; DPI and styling guidance exist separately.  
**Missing information:** Practical guidance for preserving user-selected contrast, checking contrast in customized themes, and avoiding color-only state communication. No contrast criteria or component-specific examples appear in the reviewed compliance page.  
**Recommendation:** Explain what the product supports, what the application developer must configure, and how to verify customized themes and states. Avoid implying that theme customization alone guarantees accessible contrast.

#### Known limitations and developer responsibilities

**Affected components:** All controls cited in the Section 508 matrix, especially where criteria are marked partially supported or unsupported.  
**Current state:** The matrix includes broad results but does not itemize the control-level exceptions.  
**Missing information:** Per-control exceptions, version context, workarounds, and clear boundaries between Telerik behavior and application-level responsibility.  
**Recommendation:** Link each limitation to a control-specific article and maintain a dated known-issues section. Address unsupported criteria with an explanation and practical mitigation where available.

#### Accessibility standards and assurance scope

**Affected components:** Suite-wide compliance documentation.  
**Current state:** `telerik-presentation-framework/section-508-compliance.md` presents a Section 508 criteria matrix.  
**Missing information:** A mapping to current WCAG criteria, an assessment date/version, and a clearly bounded statement of what has and has not been evaluated.  
**Recommendation:** Have the product accessibility owner validate the applicable standards and publish a versioned, evidence-backed statement. Do not claim WCAG or Section 508 conformance without a corresponding assessment.

## Repository-Wide Improvement Opportunities

- **Authoring guidance:** Extend the contribution guidance referenced by `README.md` with rules for sequential headings, descriptive links, meaningful alt text, simple data tables, typed callouts, and language-tagged code fences.
- **Automated validation:** Add repository checks for skipped heading levels, empty or generic image alternatives, generic link labels, untagged fenced blocks, and empty table cells. Ensure checks ignore code samples, front matter, and valid exceptions; use automated results as review prompts rather than proof of accessibility.
- **Manual review checkpoints:** For significant documentation changes, review the rendered page using keyboard navigation and a screen reader; inspect image alternatives and complex tables; verify that color, icons, and formatting are not the sole way to convey meaning.
- **Reusable templates:** Provide an accessible component article checklist covering keyboard operations, focus behavior, UI Automation/MSAA properties, screen-reader expectations, high-contrast considerations, known limitations, and a tested example.
- **Coverage ownership:** Assign an owner and review cadence to the component accessibility matrix and compliance statement. Include product version, test date, test environment, and links to supporting evidence.
- **Strengths to retain:** Preserve descriptive image alternatives, direct task instructions, keyboard examples, and the typed `>note`/`>tip`/`>important` patterns already used in many articles.

## Limitations

This report assesses source documentation. It does not evaluate the live site's navigation, rendered HTML semantics, keyboard operability, search behavior, responsive layout, video captions/transcripts, or actual control behavior with assistive technologies. Those require a separate rendered-site and product testing pass before making a conformance claim.
