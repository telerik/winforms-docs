# Markdown source-only accessibility assessment

Assessment date: 2026-11-05. **Complete inventory; provisional source-only heuristic scores.** All eligible articles were scored; none are unscored. Semantic judgments and rendered behavior remain subject to human review. This is not a WCAG conformance audit, rendered-site test, or assessment of Telerik UI for WinForms controls. No image pixels were inspected.

## Scope and reconciliation

The current working-tree Markdown was assessed, not historical PR/issue findings. Files are recursively enumerated with case-insensitive `.md`/`.markdown` extensions, sorted by repository-relative path; exclusions below are applied once in the displayed precedence. `.git` is not traversed; `.github` content, including agents, is not read. Directory-exclusion counts use filenames only.

| Inventory reason | Markdown files |
|---|---:|
| directory:.github | 16 |
| directory:node_modules | 0 |
| directory:_site | 0 |
| directory:bin | 0 |
| directory:obj | 0 |
| configured:**/README.md | 1 |
| generated_api | 1 |
| prior_audit_output | 0 |
| unpublished_metadata | 21 |
| eligible | 3097 |
| **Source inventory total, excluding this audit’s outputs** | **3136** |
| **Excluded source files** | **39** |
| **Scored eligible articles** | **3097** |
| **Unscored eligible articles** | **0** |

Equality verified: **3136 − 39 = 3097 eligible = 3097 JSONL records = 3097 unique paths**. These audit outputs (`accessibility-report.md`, `scores.jsonl`) are not documentation articles and are excluded on repeat runs. `.git` internal files are outside the source inventory.

Configuration evidence: `docs-builder.yml:34–35` excludes `**/README.md` (including the root README); `docs-builder.yml:50–69` separates API content and identifies Knowledge Base metadata; `docs-builder.yml:19` identifies external snippets. `docs-builder-api.yml:32–33` repeats the README exclusion, and `:44–56` identifies API file sources. `docfx/metadata-config.json:2–35` describes assembly-derived generated metadata, not authored articles. API material under `api/`, `_assetsApi/`, and `docfx/metadata/` is excluded. No publication exclusions were found in `docs-builder.yml` inherited metadata or the discovered `_meta.yml` files; `pdfHidden` and `hideChildren` affect PDF/navigation, not web publication. Frontmatter `publish`/`published: false` is excluded (case-insensitive booleans); `draft`/`exclude`/`excluded: true` would also be excluded. These last fields had no observed matches. All 21 non-README unpublished articles use `published: false`; the root README also uses `publish: false` but is counted only in the earlier README reason.

### Explicit exclusions outside pruned directories

| Path | Reason |
|---|---|
| `README.md` | configured:**/README.md |
| `_assetsApi/api/index.md` | generated_api |
| `controls/buttons/dropdownbutton/working-with-raddropdownbutton-items.md` | unpublished_metadata |
| `controls/buttons/radiobutton/designing-radradiobutton-.md` | unpublished_metadata |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features.md` | unpublished_metadata |
| `controls/forms-and-dialogs/overview.md` | unpublished_metadata |
| `controls/gridview/features/date-time-only.md` | unpublished_metadata |
| `controls/gridview/features/other-features.md` | unpublished_metadata |
| `controls/gridview/features/searching.md` | unpublished_metadata |
| `controls/pdfprocessing/overview.md` | unpublished_metadata |
| `controls/ribbonbar/designing-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md` | unpublished_metadata |
| `controls/sparkline/customizing-appearance/custom-renderer.md` | unpublished_metadata |
| `controls/spreadprocessing/overview.md` | unpublished_metadata |
| `controls/spreadstreamprocessing/overview.md` | unpublished_metadata |
| `controls/wordsprocessing/Overview.md` | unpublished_metadata |
| `controls/ziplibrary/overview.md` | unpublished_metadata |
| `core/net-core-project-converter.md` | unpublished_metadata |
| `installation-and-upgrades/api-analyzer.md` | unpublished_metadata |
| `installation-and-upgrades/major-and-minor-releases.md` | unpublished_metadata |
| `installation-and-upgrades/versions-upgrade.md` | unpublished_metadata |
| `knowledge-base/distinguishing-between-versions-dev-trial.md` | unpublished_metadata |
| `knowledge-base/upgrade-trial-to-licensed-version.md` | unpublished_metadata |
| `telerik-presentation-framework/painting-logic.md` | unpublished_metadata |

## Results

| Metric | Result |
|---|---:|
| Articles with confirmed Critical findings | 0 |
| Articles with confirmed High findings | 218 |
| Articles with Critical or High findings (union) | 218 |
| Critical findings | 0 |
| High findings | 528 |
| Medium findings | 3027 |
| Low findings | 2140 |
| Human-review cases (not severity-rated) | 7799 |
| Articles with human-review cases | 1754 |
| Mean weighted overall score | 4.6 / 5 |

Zero confirmed Critical findings means no source-only check established an essential-content blocker; it does not establish that none exists. Missing/ambiguous alternatives are not labeled Critical without evidence of essential informative purpose. Missing H1 alone is not Critical when meaningful headings remain.

### Dimension averages

Equal article weighting; all eligible articles, including absent content types, are included. Display values use decimal half-up rounding to one decimal.

| Dimension | Weight | Mean / 5 |
|---|---:|---:|
| heading_structure | 20% | 3.7 |
| alternative_text | 20% | 4.6 |
| link_text_clarity | 15% | 4.8 |
| plain_language | 15% | 4.9 |
| table_accessibility | 10% | 4.9 |
| formatting_independence | 10% | 5.0 |
| callout_structure | 5% | 5.0 |
| code_block_accessibility | 5% | 4.9 |

## Reproducible method and scoring rubric

Used the preinstalled Python standard library, PyYAML 6.0.1, and markdown-it-py 3.0.0 CommonMark parser with its table rule enabled; no dependencies, helper scripts, or test/build infrastructure were added. YAML metadata is excluded from content checks. CommonMark ATX/Setext headings, backtick and tilde fences, lists, inline code, Markdown tables, reference links/images, and HTML blocks are parsed; a separate HTML parser checks authored HTML headings, links, images, and tables. HTML pre/code/script/style content is not prose. Templating/source markers are blanked with original line positions preserved; slug link targets are made opaque/parser-safe without resolving them. No includes, templates, external code snippets, or remote links are fetched or expanded. Both `{{source=… region=…}}` markers and `<snippet id="…" />` markers are registered without expansion and are not counted as authored code or prose; `{{endregion}}` is only a terminator. Source SHA-256 values hash original file bytes, including any BOM and original line endings. Paired code samples may share an introduction.

Each dimension has an integer score 1–5. **5** = absent type or no configured source signal (not proof of semantic perfection); **4** = Low findings only; **3** = any Medium finding or unresolved human-review case; **2** = one High finding; **1** = a confirmed Critical finding or at least two High findings in that dimension. The most severe applicable rule wins. Unexpanded include/source/snippet dependencies are explicitly out of source-only scoring scope and are registered for review without deductions. A dimension with an authored-source finding or an applicable authored-content review cannot receive 5; an absent authored type still receives 5, even if an unexpanded dependency is registered separately. This explicit repository-wide heuristic scale replaces unsupported per-article semantic judgments; it is not a standardized accessibility certification.

Weighted overall = `(20×heading + 20×alt + 15×link + 15×plain + 10×table + 10×formatting + 5×callout + 5×code) / 100`. JSONL stores the exact integer numerator/denominator and unrounded numeric `overall_score` (increments of 0.05), plus a one-decimal display score. The repository mean is the arithmetic mean of unrounded article scores. No per-article scores appear in this report.

### Check rules and severity interpretation

- **Headings:** KB means `knowledge-base/` or case-insensitive `res_type: kb`; no authored H1 is expected. Standard articles require one H1. Missing/multiple standard H1 and KB authored H1 are Medium if an outline remains; a standard article with no headings is High. A heading-level increase of more than one is Medium once and High at each location when repeated within the article. KB H2 roots are valid. Empty headings are Medium; exact vague labels (`Details`, `More Info`, `More Information`, `Section N`) are Low. A parent heading immediately followed by a subheading is not automatically “empty.”
- **Images:** empty, absent, generic (image/screenshot/picture/diagram/logo/figure with optional number), or exact filename-stem-like alternatives are Human Review Required with no severity; purpose and text equivalence require human judgment. No missing-alt case was promoted to Critical. Missing adjacent detected sentence/`>caption` introductions are Low authoring signals, not conformance failures. Alternatives longer than 240 characters are review candidates, not inherently defects.
- **Links:** exact generic labels such as “here,” “click here,” and “this article” are Medium. URL-shaped labels are Low. Empty extracted link labels and repeated generic labels pointing to different destinations require human review. Destination-equivalent descriptive synonyms are not penalized merely for varying wording. Link purpose, title/accessibility attributes, all same-target naming consistency, and bare prose URLs need contextual review.
- **Tables:** Markdown delimiter rows are semantic headers; bold is not required. HTML tables with at least two rows/four text cells, no images, and no `<th>` are treated as headerless data tables (High); author review should verify relationships before remediation. Presentation tables or uncertain table purpose require review. Empty cells are Medium candidates requiring contextual correction, not an instruction to fill intentional blanks blindly. Markdown tables with five or more columns and no detected sentence lead-in are Low. Merged HTML cells and unparsed pipe-row groups require review.
- **Plain language:** only parsed non-heading/non-table prose is measured; inline code, image alternatives, destinations, technical qualified/camelCase identifiers, and source placeholders are filtered. A prose sentence over 40 ordinary-word tokens is Medium; each location records the measured count. This deliberately conservative threshold avoids treating all 26-word technical sentences as defects. “Utilize/utilizes/utilizing,” “aforementioned,” and “heretofore” are Low word-choice candidates. No reading-grade, acronym-completeness, passive-voice, or jargon-comprehension claims are made.
- **Formatting:** bold-only warning/important/caution/“do not” labels are Medium. `<u>` is a Low inspection candidate. References to colored/formatted items are unranked human-review cases; they do not prove color-only meaning. Routine bold UI/API syntax is not penalized as an accessibility defect.
- **Callouts:** supported typed callouts and ordinary platform-supported note blockquotes are accepted. Colon-labeled note/tip/warning/important/caution prose is a Low consistency candidate; an empty typed callout is Medium when it has no following content; CommonMark lazy paragraph continuation and blank quoted lines before callout text are accepted, and uncertain unquoted-list continuation is registered for human review. Semantic severity, overload, and self-contained meaning still require human review.
- **Code:** one unlabeled authored fence is Medium; two or more make each unlabeled fence High. C#/VB.NET aliases (`cs`, `csharp`, `vb`, `visualbasic`, `vbnet`) are Low local-style candidates, not proof syntax highlighting fails. Missing immediately detected introductions are Low; paired blocks share a lead-in. Indented code and possible unclosed fences require review. Placeholder clarity and command outcomes need semantic review; external source and snippet-ID markers are only unscored dependency-review cases, never unlabeled-code defects.

### Limitations and follow-up

The parser is not the site renderer. Nested templating, unusual HTML/Markdown mixtures, multiline inline constructs, escaping, conditional content, CSS-generated text, accessible names supplied by rendering, and local renderer extensions can differ. Location evidence is exact authored source; some readability/link locations identify the start of their containing source paragraph. Image introductions use a conservative adjacent-sentence/typed-caption heuristic; a meaningful non-sentence lead-in may therefore be a false positive. Technical-token filtering reduces, but cannot eliminate, prose false positives. HTML table purpose and intentionally empty cells must be confirmed. No image content, animations, video captions/transcripts, PDF alternatives, actual DOM heading outline, keyboard/focus behavior, color contrast, assistive-technology output, or link availability was tested. Absent type gets 5; a 5 means no detected signal and must not be interpreted as a human semantic review. These limitations apply to every record, even those with no explicit review case. Human review is required before claiming equivalence or conformance. The report remains provisional in that semantic sense; no article was omitted or left unscored.

## Critical and High findings by article

All confirmed Critical/High findings are listed below. Within each article, Critical precedes High, then exact source line order. Evidence is literal source text with HTML/Markdown characters escaped for safe report rendering. Proposed fixes are recommendations only; no article source was changed.

### `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating a ToolWindow </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 30** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating a DocumentWindow </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating ToolWindows and DocumentWindows </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/customization.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribe to TextBlockFormatting </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribe to VisualListItemFormatting </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/formatting-items.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customize selected item appearance </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 37** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribe to the VisualItemFormatting event of the auto complete popup</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### SizingMode.None </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 90** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### DropDownHeight </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 128** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Auto size drop down </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 147** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### DefaultItemsCountInDropDown </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Setting DropDownStyle </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Initial Set Up </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/auto-complete.md`

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### AutoCompleteMode.None </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 88** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### SuggestMode.Contains </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 120** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom comparer </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/scrolling.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Enabling Kinetic Scrolling </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Scroll to Item </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 83** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Discrete Scrolling </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/selection.md`

- **High — heading_structure — line 32** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting a Selection Mode </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Next Item Selection </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/sorting.md`

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### SortStyle </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom comparer </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ItemHeight </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 40** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### AutoSizeItems </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 70** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Auto-complete items height </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/filtering.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Filtering method body </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 44** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the FilterExpression property </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/selection.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Set the selection mode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Select items programmatically </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/editors/datetimepicker/raddatetimepicker-properties.md`

- **High — heading_structure — line 13** (heading_level_skip): Heading level jumps from H0 to H2 (repeated skips in this article).
  - Source: <code>## Properties</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the value of RadDateTimePicker </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/editors/popupeditor/customize-elements.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customize TextBoxElement </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 35** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set arrow button BackColor </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Change Popup BackColor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/dialog-controls/explorer-control.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>####  Example 1: Define explorer control</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 87** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Allow selecting folders only </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 110** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 3: Getting the first item from the selected files/folders</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 142** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 5: Filtering ExplorerControl</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/dialog-controls/radopenfiledialog.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 1: Show an open file dialog </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Open a file stream </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 3: Enable multiple selection </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 67** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 4: Get the selected file names</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 80** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 5: Set RestoreDirectory property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 96** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 6: Enabling the ReadOnly CheckBox</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 111** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 7: Using the DereferenceLinks property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/dialog-controls/radopenfolderdialog.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 1: Show a open folder dialog </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 37** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Multiple selection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 3: Get the selected folder names</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 65** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 4: Set RestoreDirectory property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/dialog-controls/radsavefiledialog.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 1: Show a save file dialog</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Open a file stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 51** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 3: Set the file name </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/features/common.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 1: Setting initial directory</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Setting initial layout </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 117** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 3: Disabling the automatic expanding to current directory  </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 139** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 4:  </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/features/drag-and-drop/overview.md`

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 1: Drag-Drop Files</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Disabling drag and drop</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/file-dialogs/features/filtering.md`

- **High — heading_structure — line 28** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 1: Set Filter property of RadOpenFileDialog </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 64** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Set Filter property of RadSaveFileDialog </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/forms-and-dialogs/form/accessing-radform-elements.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing RadForm elements </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 41** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding new button to the title bar </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 57** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing the FormBorderPrimitive </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 75** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing the FormImageBorderPrimitive </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/forms-and-dialogs/statusstrip/adding-items.md`

- **High — heading_structure — line 15** (heading_level_skip): Heading level jumps from H0 to H2 (repeated skips in this article).
  - Source: <code>## Item Element Types</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 59** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Elements to RadStatusStrip </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/forms-and-dialogs/tabbedform/features/drag-and-drop.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### RadTabbedFormDragDropService</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 63** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the Drag Drop Mode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/forms-and-dialogs/tabbedform/features/pinned-tabs.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show Pin Button</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Pin with code</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gauges/radialgauge/getting-started.md`

- **High — heading_structure — line 62** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add Items</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 74** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Additional Element</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 86** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Clock</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding rows to the rows collection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 30** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Assigning value to a cell</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Removing a row from the rows collection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/exporting-data/export-to-csv.md`

- **High — heading_structure — line 35** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  ExportToCSV initialization</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 82** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Export to CVS format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 93** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling the CSVCellFormatting event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/exporting-data/export-to-excel-via-excelml-format.md`

- **High — heading_structure — line 108** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export to Excel in ExcelML format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 119** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Fomatting dates</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 130** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling the ExcelCellFormatting event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/exporting-data/export-to-pdf.md`

- **High — heading_structure — line 208** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  ExportToPDF initialization</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 342** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Exporting to PDF format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 351** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Handling the HTMLCellFormatting event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/exporting-data/html-export.md`

- **High — heading_structure — line 136** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export to HTML format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 145** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Handling the HTMLCellFormatting event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/exporting-data/spreadstream-export.md`

- **High — heading_structure — line 35** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Exporting the grid. </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 115** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Exporting asynchronously and reporting the progress.  </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/filtering/setting-filters-programmatically-(composite-descriptors).md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting composite filter descriptors</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting complex composite filter descriptors</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting filters for Excel-like filtering</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/grouping/basic-grouping.md`

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Setting grouping properties</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Hide the group panel</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/grouping/groups-collection.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing groups</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing parent/child groups</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/features/sorting/setting-sorting-programmatically.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Enable Sorting</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Sorting by Two Columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/styling-and-appearance/images.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Changing the current row image</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set an image in a column header</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/cells/formatting-cells.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Changing the data cells font color</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 44** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Formatting cells </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 59** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Formatting non-data rows</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing RadGridView columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 30** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Iterating through RadGridView columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Iterating through hierarchical RadGridView columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md`

- **High — heading_structure — line 51** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Adding and binding GridViewComboBoxColumn</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 78** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Bind to array of string</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 91** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Binding to collection of custom object</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 100** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Customizing DropDownList editors in RadGridView</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/converting-data-types.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ToggleState converter</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Applying TypeConverter</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling null values</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 66** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling null values when sorting</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/generating-columns.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Automatic column generation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 44** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Columns in Code at Run Time</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Pinning a single columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 32** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Pinning multiple columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/reordering-columns.md`

- **High — heading_structure — line 18** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Allow or disallow column reordering</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Reordering columns programmatically</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/columns/working-with-columnchooser.md`

- **High — heading_structure — line 30** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show ColumnChooser Programmatically</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 93** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Determines if the specified column is allowed to be dragged to the column chooser dialog</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/gridview/visual-elements/rows/adding-and-inserting-rows.md`

- **High — heading_structure — line 56** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add an empty row</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 91** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Insert a GridViewDataRowInfo</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/heatmap/populating-with-data/unbound-mode.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Example 1: Categorical Definition__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Example 2: Horizontal Definition__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/heatmap/selection.md`

- **High — heading_structure — line 32** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### __Example 1: Modify Selected Cell__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Example 2: Programmatic Selection__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/layoutcontrol/customizing-appearance.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting Fill and Stroke</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 35** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Change BackColor and Font</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/custom-items.md`

- **High — heading_structure — line 28** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating custom item</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 52** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating custom item</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/customizing-appearance/formatting-items.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customizing items when using the VisualItemFormatting event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customizing cells when using the CellFormatting event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Populating with data</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling the RadDragDropService's events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Starting the drag and drop operation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Starting a drag and drop operation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Starting a drag and drop operation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Populating with data</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 32** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Starting a drag and drop operation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 65** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribing to the RadDragDropService's events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/editors/editors.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Start editing</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 60** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Validation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/export-data/spread-export.md`

- **High — heading_structure — line 59** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Running export synchronously using a stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 142** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Running export asynchronously using a stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/features/filtering.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Enable Filtering</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom FilterPredicate </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/features/grouping.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Group by value</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Grouping</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/features/sorting.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Enable column sorting</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom sorting</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/listview/populating-with-data/unbound-mode.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding items</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 60** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding groups</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/map/drag-and-drop/ole-drag-and-drop.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribe to Events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 37** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Drag and Drop Events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/map/features/layers/colorization.md`

- **High — heading_structure — line 30** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting up GraphColorizationStrategy</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting up ChoroplethColorizationStrategy</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 60** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting up PropertyColorizationStrategy</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/map/providers/bingmaps/imagery-sets.md`

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 1: Aerial mode with labels__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 41** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 2: Aerial mode without labels__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 3: AerialOnDemand mode__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 55** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 4: Road mode__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 62** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 5: RoadOnDemand mode__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 69** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 6: CanvasLight mode__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 76** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 7: CanvasGray mode__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 83** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 7: CanvasDark mode__	</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/map/providers/bingmaps/search.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Bing search</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 41** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Bing search</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/map/tooltips.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Using the ToolTipText property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Using the ToolTipTextNeeded event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/menus/menu/styling-and-appearance/menu-orientation.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Default Orientation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Vertical Text Orientation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Vertical Menu With Horizontal Text</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 58** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Vertical Menu With Vertical Text</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Constructing and adding menu items</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 51** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Combo Sub Item</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 62** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Suspending the layout</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 73** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Removing items</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling the ToggleStateChanging event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling the SelectedIndexChanged event of RadMenuComboItem</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handling events for controls embedded in RadMenuContentItem</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/multicolumncombobox/drop-down-properties.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the DropDownWidth property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the DropDownHeight property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 55** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### AutoSizeDropDownToBestFit</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/navigationview/ui-automation.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### RadNavigationView </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 80** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### RadNavigationView</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/notifyicon/features/balloon-notifications.md`

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 1: Balloon Notification__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 2: Warning Notification__</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/notifyicon/features/popup.md`

- **High — heading_structure — line 24** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 1: RadNotifyIcon with Popup__ (Windows 11 OS)</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 95** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### __Figure 2: Show/Hide Animation__ (Windows 10 OS)</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pageview/backstageview/customizing-backstage-view.md`

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing the content area of Backstage View</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 69** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing the content area of Backstage View</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 86** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing the content area of Backstage View</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 133** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Accessing the content area of Backstage View</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pageview/explorerbarview/customizing-the-explorerbarview.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ExplorerBarContentSizeMode.EqualLength</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 55** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the IsContentVisible property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 82** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ScrollToItem</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pageview/how-to/programatically-adding-pages.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding pages</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding controls to a page</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/panorama/tiles.md`

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Set tile's position</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add live tiles</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 72** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Populating With Data Programmatically</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pdfviewer/features/text/text-selection.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ViewerMode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 62** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Text selection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pdfviewer/features/thumbnails.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Enable Thumbnails</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show/Hide Thumbnails</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/binding-with-radchartview.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Setting RadChartView Data Source</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Totals Settings</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 77** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Chart Events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/calculated-items.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Calculated Item</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### PrepareDescriptionForField Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### SolveOrder Property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/custom-aggregation.md`

- **High — heading_structure — line 28** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Function Logic</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Aggregate Logic</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 52** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Using the Custom Aggregate Function</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/custom-group-comparer.md`

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Defining the Custom Comparer</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 87** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Using the Custom Comparer</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 109** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Defining a Comparer with Aggregate Access</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/customizing-appearance/formatting-appearance.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### CellFormatting Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### GroupElementFormatting Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Error and Empty Value Strings</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/expand-behavior.md`

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Expanding Groups</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Changing Expand Behavior</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/exporting-data/export-to-pdf.md`

- **High — heading_structure — line 28** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### PivotGridPdfExport Class</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 82** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Running Export Asynchronously</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/exporting-data/spread-export.md`

- **High — heading_structure — line 51** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Running Export Synchronously</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 130** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### CellFormatting Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/filtering/report-filters.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### ShowFilterArea Property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 42** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Filter Descriptions at Run-time</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/layout-settings.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Headers Layout</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 40** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Grand and Sub Totals Position</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 68** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Aggregates Level and Position</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md`

- **High — heading_structure — line 24** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Sorting the Nodes</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 53** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setup the Providers</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md`

- **High — heading_structure — line 52** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Connecting to OLAP Cube</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 81** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Adomd Descriptions</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/populating-with-data/using-the-datasource-property.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Setting DataSource and DataMember</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 35** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Setting Culture</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set ItemSource</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 40** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add Row Descriptions</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 103** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Data Provider</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 114** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Provider Culture</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set IQueryable Source</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Queryable Row Descriptions</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 110** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Data Provider</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md`

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Connecting to OLAP Cube</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 83** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Xmla Descriptions</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/propertygrid/editors/handling-editors'-events.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### How to Handle Events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### How to Handle Events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/propertygrid/export-data/spread-export.md`

- **High — heading_structure — line 58** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Running Export Synchronously Using a Stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 142** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Running Export Asynchronously Using a Stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/propertygrid/how-to/custom-keyboard-handling.md`

- **High — heading_structure — line 41** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Control&#96;s Implementation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Elements&#96; Implementation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/propertygrid/type-converters.md`

- **High — heading_structure — line 28** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Bind RadPropertyGrid</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### TemperatureTypeConverter</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 71** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### BloodTypeConverter</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 95** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### VolumeTypeConverter</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/rangeselector/integration-with-radchartview.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### SeriesInitializing Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### LabelInitializing Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 92** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Disable Pan and Zoom Synchronization</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/rangeselector/properties-and-events.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>####  UpdateMode.Immediate</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 109** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Initializing Scale</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/ribbonbar/backstage-view/working-with-backstage-view.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Enable Backstage View Mode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 60** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding items programatically</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md`

- **High — heading_structure — line 77** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Open a text file and make its text bold</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 169** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Modify the OpenFile method</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 192** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add most recent files functionality</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 221** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add most recent files functionality</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add a button to RadRibbonBarGroup</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 41** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Remove a button from RadRibbonBarGroup</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 69** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add button group with buttons</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a tab to RadRibbonBar</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Remove a Tab from RadRibbonBar</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 70** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Create and Setup New RadRibbonBarGroup</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 90** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Remove RadRibbonBarGroup</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Assign image to start button</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating and add new menu item</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 56** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handle the menu item click event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 67** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding items to the right column</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 80** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding menu items with sub items</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/document-elements/break.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Insert a break</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 37** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 2: Modify a break</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md`

- **High — heading_structure — line 32** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Insert vertical tab through RadDocumentEditor </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 70** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 3: Insert vertical tab in the switch of a merge field </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 98** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 5: Insert the vertical tab in the switch of a merge field</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/mentions/mentions-custom-provider.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Custom mention item</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 72** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom insert action</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 87** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Filtering</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/merge-documents/append.md`

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### **Example 1: Using the AppendDocument() method**</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 57** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### **Table 1: Restrictions for using AppendDocument()**</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/merge-documents/merge.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Merge documents with InsertDocumentOptions </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### **Table 1: Behavior of the InsertDocument() method in different scenarios**</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/paste-options.md`

- **High — heading_structure — line 73** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### [C#] Example 1: Paste with Specific Settings</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 84** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 1: Paste Options Popup in RadRichTextEditor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/positioning.md`

- **High — heading_structure — line 87** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Getting the Paragraph on the caret position</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 119** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Screen position to DocumentPosition conversion</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 148** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Using DocumentPosition events</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/features/selection.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customize the appearance of the selection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 138** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Select all occurrences of the "RadRichTextBox" word</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 155** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating a Custom MouseSelectionHandler</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/how-to/drag-and-drop.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Initial Controls Setup</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### PreviewDragOver Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/docx/docxformatprovider.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Import Document from a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 40** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export Document to a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/html/htmlformatprovider.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Import Html File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export Html to File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/plain-text/txtformatprovider.md`

- **High — heading_structure — line 24** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Import Document from a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export a Document to a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/rtf/rtfformatprovider.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Import Document from a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export a Document to a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/rtf/settings.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the ExportSettings of the RtfFormatProvider</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 37** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setup Default RtfFormatProvider</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/xaml/xaml-verification.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Disable the default XAML validation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add assemblies to the AllowedAssemblies collection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/import-export/xaml/xamlformatprovider.md`

- **High — heading_structure — line 27** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Import XAML Document from a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Export Document to a File</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Disabling the context menu</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribe to Event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 68** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Builder Class</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/appearance/formatting-cells.md`

- **High — heading_structure — line 49** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Data Cells</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 84** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Header Cells.</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resize Column</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resize Column</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 63** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resize Column</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 80** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resize Resource</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/appointments-and-dialogs/working-with-appointments.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### New Appointment</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 55** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Appointment Status</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md`

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### RecurrenceRule Property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 68** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting HourlyReccurrenceRule</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/data-binding/binding-to-business-objects.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Appointment Class</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom Resource Class</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 68** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Define One-to-many Relation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 108** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Define Many-to-many Relation</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md`

- **High — heading_structure — line 25** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Convert Methods</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### EditAppointmentDialog with multiple resources</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md`

- **High — heading_structure — line 24** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handle ListBox MouseMove</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 58** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Handle RadScheduler MouseMove</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/end-user-functionality/editing-appointments-.md`

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### EditAppointmentDialog with multiple resources</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 56** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting a Simple Editor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 89** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom TextBox Editor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/holidays.md`

- **High — heading_structure — line 42** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add a holiday programmatically</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 71** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Formatting the holidays</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/print-support/schedulerprintstyles.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Daily Print Style</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 84** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set SchedulerDailyPrintStyle</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 108** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set SchedulerWeeklyCalendarPrintStyle</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 128** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set SchedulerWeeklyPrintStyle</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 158** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set SchedulerMonthlyPrintStyle</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 182** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set SchedulerDetailsPrintStyle</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/day-view.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Day View</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### GetDayView Method</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 61** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Day Count</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 72** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Work Time</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 97** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show Day Headers</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 108** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Header Format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 131** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Ruler Scale</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 142** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Ruler Size</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 153** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Ruler Start and End</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 167** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set 12 Hour Time Format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 191** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show Ruler</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 202** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Ruler Width</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 213** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Time Pointer</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 224** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Modify All Day Area</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 235** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Column Size</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/grouping-by-resources.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Group by Resources</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resources Count</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 57** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resource Start Index</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 93** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Define Resource Size</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 118** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customize Child Views</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/month-view.md`

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ActiveViewType Property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 44** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### GetMonthView Method</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 55** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show Weekend</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 75** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Start/End Work Days</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 91** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Number of Weeks</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 100** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Get Week Days</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 111** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Full Month</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 123** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Hiding The Vertical Indicator</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 132** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Navigator Range</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 146** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Showing Weeks Headers</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 157** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting A Header Format</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 168** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Full Month</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 179** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Verical Scrolling Range</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 190** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Appointments Scrolling</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 204** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting Row Height</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 218** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Headers Size</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/scheduler-cell-containers.md`

- **High — heading_structure — line 21** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Initialize Elements</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Update Elements</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Access Elements</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 61** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Update Elements In The Container</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/timeline-view.md`

- **High — heading_structure — line 29** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ActiveViewType Timeline</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 42** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### GetTimelineView Method</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 65** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Timeline View Range</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 96** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set Time Scale</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 107** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Current Scaling</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 118** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Navigation Element</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 129** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Resizing Columns</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 140** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Headers Size</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/week-view.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Set ActiveViewType</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### GetWeekView Method</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 62** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Show Weekend</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/scheduler/views/work-week-view.md`

- **High — heading_structure — line 26** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### ActiveViewType Property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 39** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### GetWeekView Method</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/sparkline/features/annotations.md`

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add Plot Band Annotation </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 64** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Add Plot Band Annotation </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/sparkline/tooltips.md`

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Enable tooltips</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 32** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Subscribing to DataPointTooltipTextNeeded</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/speechtotextbutton/getting-started.md`

- **High — heading_structure — line 24** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting up a RadSpeechToTextButton</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 77** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Using the SpeechRecognized event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/spreadsheet/events.md`

- **High — heading_structure — line 38** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Disable messages related to protection using the MessageShowing event</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 127** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 4: Using the HyperlinkClicked event to implement confirmation for the clicked links in the document</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 140** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 5: Using the CellPropertyChangedEvent</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/spreadsheet/features/freeze-panes.md`

- **High — heading_structure — line 30** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Freeze Panes</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 59** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Unfreeze Panes</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/spreadsheet/features/ui-working-with-selection.md`

- **High — heading_structure — line 96** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Change the ActiveCellMode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 115** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Selecting a Cell</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 186** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Selecting all or the used Cells </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 278** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Get current region</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Hide Row and Column Headers</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Example 2: Hide Gridlines</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/features/caret.md`

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 1: Caret's display mode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the caret's display mode</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 45** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the caret's color</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/features/fonts.md`

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Setting font properties</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 31** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 2: Enabling monospaced font optimization</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/features/intelliprompts.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 1: Populate and display the completion list window</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Example 2: Populate and display the completion list window</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/features/selection.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 1: RadSyntaxEditor with selected text</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Table 1: Hotkeys supported by the RadSyntaxEditor and their actions</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 54** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Customize the appearance of the selection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/features/zooming.md`

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 1: Zooming the RadSyntaxEditor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Setting the ScaleFactor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 48** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Zoom in and Zoom out</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/getting-started.md`

- **High — heading_structure — line 42** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a RadSyntaxEditor at run time</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 66** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 2: RadSyntaxEditor with a loaded C# file</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 79** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 3: RadSyntaxEditor with C# code highlighting</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/syntax-editor/structure.md`

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 1: RadSyntaxEditor's structure</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Figure 2: RadSyntaxEditor's elements hierarchy</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/task-board/task-board-adding-user-and-tasks.md`

- **High — heading_structure — line 12** (heading_level_skip): Heading level jumps from H0 to H2 (repeated skips in this article).
  - Source: <code>## Adding Users</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 16** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Users at Design time</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 35** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding Tags at Design time</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/task-dialog/task-dialog-element-types.md`

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a RadTaskDialogProgressBar</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 60** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a RadTaskDialogVerificationCheckBox</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 73** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a RadTaskDialogCommandLinkButton</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 86** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a RadTaskDialogRadioButton</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 99** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a RadTaskDialogButton</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/toast-notification/adding-toast-notifications-programmatically.md`

- **High — heading_structure — line 13** (heading_level_skip): Heading level jumps from H0 to H2 (repeated skips in this article).
  - Source: <code>## Adding Toast Notifications Programmatically</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 19** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding RadToastNotification at RunTime</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/treeview/data-binding/togglestateconverter.md`

- **High — table_accessibility — line 13** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `controls/treeview/export-data/spread-export.md`

- **High — heading_structure — line 59** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Running export synchronously using a stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 150** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>####  Running export asynchronously using a stream</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/treeview/ui-automation.md`

- **High — heading_structure — line 47** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### RadTreeView </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 79** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### RadTreeView</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/treeview/working-with-nodes/scrolling-nodes.md`

- **High — heading_structure — line 34** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Discrete Scrolling </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 85** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Enabling Kinetic Scrolling </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 105** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Scroll to Item </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/virtual-keyboard/default-layouts.md`

- **High — heading_structure — line 18** (heading_level_skip): Heading level jumps from H1 to H3 (repeated skips in this article).
  - Source: <code>### **Extended** </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a key to the default Home layout</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/virtualgrid/features/context-menu/custom-context-menu.md`

- **High — heading_structure — line 20** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Create a RadContextMenu and initialize its items</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 40** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Create custom context menus</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/virtualgrid/features/editing/editors.md`

- **High — heading_structure — line 13** (heading_level_skip): Heading level jumps from H0 to H2 (repeated skips in this article).
  - Source: <code>## Editors</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 43** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Defining a Columns&#96;s Data Type</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `controls/virtualgrid/features/filtering/setting-filters-programmatically.md`

- **High — heading_structure — line 36** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Using simple filter descriptor </code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 50** (heading_level_skip): Heading level jumps from H1 to H4 (repeated skips in this article).
  - Source: <code>#### Using CompositeFilterDescriptor</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `getting-started/first-steps.md`

- **High — code_block_accessibility — line 29** (unlabeled_code_fence): Fenced code block has no language label (multiple unlabeled blocks in this article).
  - Source: <code>	&#96;&#96;&#96;</code>
  - Fix: Add the correct language identifier: C# or VB.NET for paired application samples, or the appropriate shell/data language; use text only for actual plain text.

- **High — code_block_accessibility — line 35** (unlabeled_code_fence): Fenced code block has no language label (multiple unlabeled blocks in this article).
  - Source: <code>	&#96;&#96;&#96;</code>
  - Fix: Add the correct language identifier: C# or VB.NET for paired application samples, or the appropriate shell/data language; use text only for actual plain text.

### `knowledge-base/change-checkbox-size.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/chartview-summary-labels-stacked-bars.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/checked-dropdownlist-add-tokens.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/custom-resizing-behavior-in-radscheduler.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/customize-rating-column.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/dashboard-demo.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/dataentry-customize-editor-controls-layout.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/dataentry-properties-order.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/deal-with-slow-webcam-preview-on-start.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/diagram-restricting-drag-direction.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/double-buffered-table-layout.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/dropdownlist-style-indicating-focus.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/filtering-indicators-in-gridview.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/free-text-in-combobox-column.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/ganttview-custom-input-behavior.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/ganttview-zoom-to-date-range.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/grid-format-group-key.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/gridview-auto-size-rows-to-fill.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/gridview-drag-drop-bound-mode.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/gridview-improve-down-arrow-key-performance.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Improved scrolling performance with Down Arrow key</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Custom row behavior</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `knowledge-base/gridview-permanenteditor-in-filter-cell.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/hdpi-tips-and-tricks.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/kb-installation-cannot-load-licensing-assembly.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/kb-installation-missing-license-vs-2019.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/kb-installation-missing-licensing-assembly.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/keep-states-on-reset.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/map-point-with-radius.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/masked-edit-box-play-sound.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/negative-area-chart.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/pdfviewer-silent-print.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/pivotgrid-changing-default-aggregate-function.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/radchartview-restrict-zoom-interval.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/radmap-export-to-an-image.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/radmap-pins-with-an-image.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/scheduler-custom-time-scale.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/scheduler-minutely-recurrence-pattern.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/scheduler-month-view-comparer.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/scheduler-update-timeline-header-text.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/scientific-notation-leading-zeros-spineditor.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/server-side-paging-in-virtualgrid.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/shopping-cart-lsitview-custom-item.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/snapping-per-day-in-radganttview.md`

- **High — table_accessibility — line 16** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/tabbedform-keep-show-new-tab-button.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/textboxcontrol-autocomplete-contains.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/tooltip-on-disabled-element.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/tree-view-handle-keypress.md`

- **High — table_accessibility — line 14** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `knowledge-base/treeview-find-node-by-value.md`

- **High — table_accessibility — line 15** (html_data_table_no_headers): An HTML table contains multiple rows of text cells but no <th> headers.
  - Source: <code>&lt;table&gt;</code>
  - Fix: Use <th scope="row"> for property/value tables or <th scope="col"> for column headers, matching the actual data relationships.

### `telerik-presentation-framework/animations.md`

- **High — heading_structure — line 33** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Animate button's Opacity property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 75** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Animate button's Margin property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 114** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Animate button's Bounds property</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md`

- **High — heading_structure — line 22** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a Header Row.</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 73** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Adding a Footer row.</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `telerik-presentation-framework/getting-started/getting-started.md`

- **High — heading_structure — line 46** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating MyPanelElement</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 172** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating MyPanel control</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `telerik-presentation-framework/primitives/borderprimitive.md`

- **High — heading_structure — line 23** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating a BorderPrimitive with SingleBorder</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 70** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating a BorderPrimitive with FourBorders</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 127** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Creating a BorderPrimitive with OuterInnerBorders</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

### `visual-studio-integration/visual-studio-extensions/upgrade-project.md`

- **High — heading_structure — line 17** (heading_level_skip): Heading level jumps from H1 to H3 (repeated skips in this article).
  - Source: <code>### Prerequisites</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

- **High — heading_structure — line 80** (heading_level_skip): Heading level jumps from H2 to H4 (repeated skips in this article).
  - Source: <code>#### Version Detection</code>
  - Fix: Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors.

## Recurring Medium and Low patterns

Counts are finding occurrences, not unique articles; one source line can carry different dimension findings. Exact locations, evidence, and fixes for every occurrence are in `scores.jsonl` → `findings` and the matching dimension’s `violations`. These candidate findings should be checked in context before editing.

| Severity | Dimension | Rule | Occurrences | Articles |
|---|---|---|---:|---:|
| Medium | heading_structure | multiple_standard_h1 | 1293 | 1190 |
| Medium | heading_structure | heading_level_skip | 712 | 712 |
| Medium | link_text_clarity | generic_link_label | 320 | 257 |
| Medium | table_accessibility | empty_table_cell | 244 | 109 |
| Medium | heading_structure | kb_authored_h1 | 200 | 200 |
| Medium | plain_language | long_prose_sentence | 172 | 147 |
| Medium | heading_structure | empty_heading | 84 | 84 |
| Medium | heading_structure | missing_standard_h1 | 1 | 1 |
| Medium | code_block_accessibility | unlabeled_code_fence | 1 | 1 |
| Low | alternative_text | image_introduction | 1422 | 680 |
| Low | code_block_accessibility | code_introduction | 594 | 346 |
| Low | plain_language | complex_vocabulary | 70 | 60 |
| Low | code_block_accessibility | noncanonical_code_language | 32 | 18 |
| Low | link_text_clarity | url_link_label | 12 | 12 |
| Low | callout_structure | nonstandard_callout | 10 | 8 |

## Human Review Required

These cases have **no severity assignment**. Review counts are disjoint from finding-severity totals but articles may overlap. Every traceable case includes path (record), line, literal evidence, dimension, issue, and recommendation in `scores.jsonl` → `human_review_required`; no image is assumed informative solely because alt is absent. Includes/source placeholders identify unassessed generated material rather than authored prose/code failures.

| Review rule | Cases | Articles |
|---|---:|---:|
| snippet_id_not_expanded | 6320 | 1196 |
| missing_or_ambiguous_alt | 796 | 342 |
| external_source_not_expanded | 470 | 119 |
| include_not_expanded | 110 | 110 |
| ambiguous_repeated_link_label | 76 | 18 |
| visual_reference | 18 | 13 |
| html_table_purpose | 4 | 4 |
| callout_list_continuation | 2 | 2 |
| unparsed_pipe_table | 2 | 2 |
| empty_link_label | 1 | 1 |

To retrieve all cases for an article without ambiguity, select its unique JSONL `path` and inspect `human_review_required`. To retrieve all unranked alt cases, filter that array for `rule == "missing_or_ambiguous_alt"`. The aggregate table above is exhaustive by rule; the JSONL is the exhaustive location register, rather than a sample.

### Dependency totals

Unexpanded dependency register: 470 source-marker locations, 6320 snippet-ID occurrences, and 110 includes. Dependency cases have `scope: "unexpanded_dependency_not_scored"`; their generated contents have no asserted score. All eligible authored article sources are scored.

## Validation performed

- Enumerated and reconciled every eligible article: 3097 eligible, 3097 records, 3097 unique sorted paths, zero unscored and zero duplicate paths.
- Validated eight integer dimension scores per record, each in 1–5, and recomputed every unrounded weighted overall using decimal arithmetic and exact integer numerators/100.
- Validated every finding/review line against the original article and checked literal evidence equality; line numbers are one-based, including frontmatter.
- Verified review cases have no severity field, missing/ambiguous-alt cases are never severity-ranked, and KB records never receive a missing-H1 finding.
- Compared all Critical/High report entries with the JSONL register; aggregate/dimension arithmetic and JSONL parsing are independently checked after writing. No documentation tests/build/lint were introduced or run; no source files were edited.
- Source hashes allow checking the assessed snapshot. Re-running on changed sources requires recomputing the assessment; prior issue/PR statements are not reused as evidence.
