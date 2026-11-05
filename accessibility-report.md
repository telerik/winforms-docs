# Markdown source-only accessibility assessment

Assessment date: 2026-11-05. Assessed base commit: `8fd204dce28b247702f83aeff9f77446da471d8b`. Eligible source manifest SHA-256: `8560314fd8dd570c724efce8069a020d0517e3749a8ba6272fbf799d183431de` (sorted path, NUL, original-byte SHA-256, newline per article). **Complete inventory; provisional source-only heuristic scores.** All eligible articles were scored; none are unscored. Semantic judgments and rendered behavior remain subject to human review. This is not a WCAG conformance audit, rendered-site test, or assessment of Telerik UI for WinForms controls. No image pixels were inspected.

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
| generated_api | 0 |
| prior_audit_output | 0 |
| unpublished_metadata | 21 |
| eligible | 3098 |
| **Source inventory total, excluding this audit’s outputs** | **3136** |
| **Excluded source files** | **38** |
| **Scored eligible articles** | **3098** |
| **Unscored eligible articles** | **0** |

Equality verified: **3136 − 38 = 3098 eligible = 3098 JSONL records = 3098 unique paths**. The original input consists of 3,136 Markdown files (3,120 outside excluded directories). Of these, 38 input files are excluded and 3,098 are scored. The newly generated `accessibility-report.md` adds one Markdown file to the working tree, making a post-audit filename count of 3,137; its self-exclusion is separate from the 38 input exclusions. `scores.jsonl` is not Markdown. Both audit outputs are excluded on repeat runs. `.git` internal files are outside the source inventory.

Configuration evidence: `docs-builder.yml:34–35` excludes `**/README.md` (including the root README); `docs-builder.yml:50–69` separates API content and identifies Knowledge Base metadata; `docs-builder.yml:19` identifies external snippets. `docs-builder-api.yml:32–33` repeats the README exclusion, and `:44–56` identifies API file sources. `docfx/metadata-config.json:2–35` describes assembly-derived generated metadata, not authored articles. No generated-reference Markdown files are present in this input inventory. The authored API landing page `_assetsApi/api/index.md` is included and scored; API-related paths are not excluded solely because they refer to API documentation. Assembly-derived reference material identified by the API/DocFX configuration would be outside authored-source scope. No publication exclusions were found in `docs-builder.yml` inherited metadata or the discovered `_meta.yml` files; `pdfHidden` and `hideChildren` affect PDF/navigation, not web publication. Frontmatter `publish`/`published: false` is excluded (case-insensitive booleans); `draft`/`exclude`/`excluded: true` would also be excluded. These last fields had no observed matches. All 21 non-README unpublished articles use `published: false`; the root README also uses `publish: false` but is counted only in the earlier README reason.

### Explicit exclusions outside pruned directories

| Path | Reason |
|---|---|
| `README.md` | configured:**/README.md |
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

## Average Scores

Mean weighted overall: **4.6/5** across all 3,098 eligible articles.

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

## Summary

All **3,098 eligible authored Markdown articles** were scored. The mean weighted score is **4.6/5**. There are **0 Critical source findings** and **218 articles with High source findings**; the Critical/High article union is **218**. These are provisional source-check results, not a rendered-site or WCAG conformance assessment; unresolved semantic cases require human review.

The strongest source-check averages are **formatting independence** and **callout structure** (both 5.0/5 after rounding). These averages include absent-type scores of 5 and do not establish semantic or rendered accessibility. The weakest area is **heading structure** (3.7/5), followed by **alternative text** (4.6/5).

Prioritize the 478 repeated heading-skip findings and verification of 48 HTML table header/relationship candidates. Recurring Medium patterns include 1,293 additional standard-article H1 findings and 320 generic-link labels. Separately, 796 missing/ambiguous-alt cases require author review without severity assumptions; captions do not resolve those alternatives. The recurring-pattern and human-review sections provide exhaustive counts, and the JSONL preserves every location.

| Metric | Result |
|---|---:|
| Articles with Critical source findings | 0 |
| Articles with High source findings | 218 |
| Articles with Critical or High findings (union) | 218 |
| Critical findings | 0 |
| High findings | 528 |
| Medium findings | 3016 |
| Low findings | 2140 |
| Human-review cases (not severity-rated) | 7811 |
| Articles with human-review cases | 1755 |
| Mean weighted overall score | 4.6 / 5 |

Zero Critical source findings means no source-only check established an essential-content blocker; it does not establish that none exists. Missing/ambiguous alternatives are not labeled Critical without evidence of essential informative purpose. Missing H1 alone is not Critical when meaningful headings remain.

## Critical/High Issues

All Critical/High **source findings** are listed below. Within each article, Critical precedes High, then exact source line order. HTML table purpose/data relationships are inferred candidates requiring the verification stated in each recommended fix, not verified semantic failures. Evidence is literal source text escaped for safe report rendering. Proposed fixes are recommendations only; no article source was changed.

### `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating a ToolWindow </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md` | 30 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating a DocumentWindow </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating ToolWindows and DocumentWindows </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/customization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/customization.md` | 22 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribe to TextBlockFormatting </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/customization.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribe to VisualListItemFormatting </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/formatting-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/formatting-items.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customize selected item appearance </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/formatting-items.md` | 37 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribe to the VisualItemFormatting event of the auto complete popup</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### SizingMode.None </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md` | 90 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### DropDownHeight </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md` | 128 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Auto size drop down </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md` | 147 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### DefaultItemsCountInDropDown </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md` | 25 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting DropDownStyle </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Initial Set Up </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/auto-complete.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/auto-complete.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### AutoCompleteMode.None </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/auto-complete.md` | 88 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### SuggestMode.Contains </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/auto-complete.md` | 120 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom comparer </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/scrolling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/scrolling.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enabling Kinetic Scrolling </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/scrolling.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Scroll to Item </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/scrolling.md` | 83 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Discrete Scrolling </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/selection.md` | 32 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting a Selection Mode </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/selection.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Next Item Selection </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/sorting.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### SortStyle </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/sorting.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom comparer </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ItemHeight </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing.md` | 40 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### AutoSizeItems </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing.md` | 70 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Auto-complete items height </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/filtering.md` | 20 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Filtering method body </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/filtering.md` | 44 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the FilterExpression property </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/selection.md` | 23 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set the selection mode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/selection.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Select items programmatically </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/editors/datetimepicker/raddatetimepicker-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/editors/datetimepicker/raddatetimepicker-properties.md` | 13 | `heading_structure` | Heading level jumps from H0 to H2 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>## Properties</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/editors/datetimepicker/raddatetimepicker-properties.md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the value of RadDateTimePicker </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/editors/popupeditor/customize-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/editors/popupeditor/customize-elements.md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customize TextBoxElement </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/editors/popupeditor/customize-elements.md` | 35 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set arrow button BackColor </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/editors/popupeditor/customize-elements.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Change Popup BackColor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/dialog-controls/explorer-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/dialog-controls/explorer-control.md` | 22 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 1: Define explorer control</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/explorer-control.md` | 87 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Allow selecting folders only </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/explorer-control.md` | 110 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 3: Getting the first item from the selected files/folders</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/explorer-control.md` | 142 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 5: Filtering ExplorerControl</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/dialog-controls/radopenfiledialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 1: Show an open file dialog </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Open a file stream </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 3: Enable multiple selection </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 67 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 4: Get the selected file names</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 80 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 5: Set RestoreDirectory property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 96 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 6: Enabling the ReadOnly CheckBox</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 111 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 7: Using the DereferenceLinks property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/dialog-controls/radopenfolderdialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/dialog-controls/radopenfolderdialog.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 1: Show a open folder dialog </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfolderdialog.md` | 37 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Multiple selection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfolderdialog.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 3: Get the selected folder names</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radopenfolderdialog.md` | 65 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 4: Set RestoreDirectory property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/dialog-controls/radsavefiledialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/dialog-controls/radsavefiledialog.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 1: Show a save file dialog</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radsavefiledialog.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Open a file stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/dialog-controls/radsavefiledialog.md` | 51 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 3: Set the file name </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/features/common.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/features/common.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 1: Setting initial directory</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/features/common.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Setting initial layout </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/features/common.md` | 117 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 3: Disabling the automatic expanding to current directory  </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/features/common.md` | 139 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 4:  </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/features/drag-and-drop/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/features/drag-and-drop/overview.md` | 16 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 1: Drag-Drop Files</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/features/drag-and-drop/overview.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Disabling drag and drop</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/file-dialogs/features/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/file-dialogs/features/filtering.md` | 28 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 1: Set Filter property of RadOpenFileDialog </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/file-dialogs/features/filtering.md` | 64 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Set Filter property of RadSaveFileDialog </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/forms-and-dialogs/form/accessing-radform-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/forms-and-dialogs/form/accessing-radform-elements.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing RadForm elements </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/forms-and-dialogs/form/accessing-radform-elements.md` | 41 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding new button to the title bar </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/forms-and-dialogs/form/accessing-radform-elements.md` | 57 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing the FormBorderPrimitive </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/forms-and-dialogs/form/accessing-radform-elements.md` | 75 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing the FormImageBorderPrimitive </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/forms-and-dialogs/statusstrip/adding-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/forms-and-dialogs/statusstrip/adding-items.md` | 15 | `heading_structure` | Heading level jumps from H0 to H2 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>## Item Element Types</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/forms-and-dialogs/statusstrip/adding-items.md` | 59 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Elements to RadStatusStrip </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/forms-and-dialogs/tabbedform/features/drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/forms-and-dialogs/tabbedform/features/drag-and-drop.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### RadTabbedFormDragDropService</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/forms-and-dialogs/tabbedform/features/drag-and-drop.md` | 63 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the Drag Drop Mode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/forms-and-dialogs/tabbedform/features/pinned-tabs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/forms-and-dialogs/tabbedform/features/pinned-tabs.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show Pin Button</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/forms-and-dialogs/tabbedform/features/pinned-tabs.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Pin with code</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gauges/radialgauge/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gauges/radialgauge/getting-started.md` | 62 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add Items</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gauges/radialgauge/getting-started.md` | 74 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Additional Element</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gauges/radialgauge/getting-started.md` | 86 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Clock</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding rows to the rows collection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md` | 30 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Assigning value to a cell</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Removing a row from the rows collection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/exporting-data/export-to-csv.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/exporting-data/export-to-csv.md` | 35 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  ExportToCSV initialization</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/export-to-csv.md` | 82 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Export to CVS format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/export-to-csv.md` | 93 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling the CSVCellFormatting event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/exporting-data/export-to-excel-via-excelml-format.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/exporting-data/export-to-excel-via-excelml-format.md` | 108 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export to Excel in ExcelML format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/export-to-excel-via-excelml-format.md` | 119 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Fomatting dates</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/export-to-excel-via-excelml-format.md` | 130 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling the ExcelCellFormatting event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/exporting-data/export-to-pdf.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/exporting-data/export-to-pdf.md` | 208 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  ExportToPDF initialization</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/export-to-pdf.md` | 342 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Exporting to PDF format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/export-to-pdf.md` | 351 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Handling the HTMLCellFormatting event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/exporting-data/html-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/exporting-data/html-export.md` | 136 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export to HTML format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/html-export.md` | 145 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Handling the HTMLCellFormatting event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/exporting-data/spreadstream-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/exporting-data/spreadstream-export.md` | 35 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Exporting the grid. </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/exporting-data/spreadstream-export.md` | 115 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Exporting asynchronously and reporting the progress.  </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/filtering/setting-filters-programmatically-(composite-descriptors).md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/filtering/setting-filters-programmatically-(composite-descriptors).md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting composite filter descriptors</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/filtering/setting-filters-programmatically-(composite-descriptors).md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting complex composite filter descriptors</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/filtering/setting-filters-programmatically-(composite-descriptors).md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting filters for Excel-like filtering</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/grouping/basic-grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/grouping/basic-grouping.md` | 38 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting grouping properties</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/grouping/basic-grouping.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Hide the group panel</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/grouping/groups-collection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/grouping/groups-collection.md` | 17 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing groups</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/grouping/groups-collection.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing parent/child groups</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/features/sorting/setting-sorting-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/features/sorting/setting-sorting-programmatically.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enable Sorting</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/features/sorting/setting-sorting-programmatically.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Sorting by Two Columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/styling-and-appearance/images.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/styling-and-appearance/images.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Changing the current row image</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/styling-and-appearance/images.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set an image in a column header</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/cells/formatting-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/cells/formatting-cells.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Changing the data cells font color</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/cells/formatting-cells.md` | 44 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Formatting cells </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/cells/formatting-cells.md` | 59 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Formatting non-data rows</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing RadGridView columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md` | 30 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Iterating through RadGridView columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Iterating through hierarchical RadGridView columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md` | 51 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding and binding GridViewComboBoxColumn</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md` | 78 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Bind to array of string</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md` | 91 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Binding to collection of custom object</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md` | 100 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Customizing DropDownList editors in RadGridView</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/converting-data-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/converting-data-types.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ToggleState converter</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/converting-data-types.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Applying TypeConverter</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/converting-data-types.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling null values</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/converting-data-types.md` | 66 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling null values when sorting</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/generating-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/generating-columns.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Automatic column generation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/generating-columns.md` | 44 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Columns in Code at Run Time</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Pinning a single columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md` | 32 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Pinning multiple columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/reordering-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/reordering-columns.md` | 18 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Allow or disallow column reordering</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/reordering-columns.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Reordering columns programmatically</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/columns/working-with-columnchooser.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/columns/working-with-columnchooser.md` | 30 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show ColumnChooser Programmatically</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/columns/working-with-columnchooser.md` | 93 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Determines if the specified column is allowed to be dragged to the column chooser dialog</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/gridview/visual-elements/rows/adding-and-inserting-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/gridview/visual-elements/rows/adding-and-inserting-rows.md` | 56 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add an empty row</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/gridview/visual-elements/rows/adding-and-inserting-rows.md` | 91 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Insert a GridViewDataRowInfo</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/heatmap/populating-with-data/unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/heatmap/populating-with-data/unbound-mode.md` | 22 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Example 1: Categorical Definition__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/heatmap/populating-with-data/unbound-mode.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Example 2: Horizontal Definition__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/heatmap/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/heatmap/selection.md` | 32 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Example 1: Modify Selected Cell__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/heatmap/selection.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Example 2: Programmatic Selection__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/layoutcontrol/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/layoutcontrol/customizing-appearance.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting Fill and Stroke</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/layoutcontrol/customizing-appearance.md` | 35 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Change BackColor and Font</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/custom-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/custom-items.md` | 28 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating custom item</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/custom-items.md` | 52 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating custom item</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/customizing-appearance/formatting-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/customizing-appearance/formatting-items.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customizing items when using the VisualItemFormatting event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/customizing-appearance/formatting-items.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customizing cells when using the CellFormatting event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md` | 19 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Populating with data</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling the RadDragDropService's events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Starting the drag and drop operation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Starting a drag and drop operation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Starting a drag and drop operation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md` | 17 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Populating with data</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md` | 32 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Starting a drag and drop operation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md` | 65 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribing to the RadDragDropService's events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/editors/editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/editors/editors.md` | 27 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Start editing</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/editors/editors.md` | 60 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Validation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/export-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/export-data/spread-export.md` | 59 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Running export synchronously using a stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/export-data/spread-export.md` | 142 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Running export asynchronously using a stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/features/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/features/filtering.md` | 17 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enable Filtering</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/features/filtering.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom FilterPredicate </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/features/grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/features/grouping.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Group by value</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/features/grouping.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Grouping</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/features/sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/features/sorting.md` | 19 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enable column sorting</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/features/sorting.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom sorting</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/listview/populating-with-data/unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/listview/populating-with-data/unbound-mode.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding items</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/populating-with-data/unbound-mode.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/listview/populating-with-data/unbound-mode.md` | 60 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding groups</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/map/drag-and-drop/ole-drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/map/drag-and-drop/ole-drag-and-drop.md` | 26 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribe to Events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/drag-and-drop/ole-drag-and-drop.md` | 37 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Drag and Drop Events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/map/features/layers/colorization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/map/features/layers/colorization.md` | 30 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting up GraphColorizationStrategy</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/features/layers/colorization.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting up ChoroplethColorizationStrategy</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/features/layers/colorization.md` | 60 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting up PropertyColorizationStrategy</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/map/providers/bingmaps/imagery-sets.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 1: Aerial mode with labels__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 41 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 2: Aerial mode without labels__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 3: AerialOnDemand mode__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 55 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 4: Road mode__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 62 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 5: RoadOnDemand mode__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 69 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 6: CanvasLight mode__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 76 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 7: CanvasGray mode__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/imagery-sets.md` | 83 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 7: CanvasDark mode__	</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/map/providers/bingmaps/search.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/map/providers/bingmaps/search.md` | 26 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Bing search</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/providers/bingmaps/search.md` | 41 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Bing search</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/map/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/map/tooltips.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using the ToolTipText property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/map/tooltips.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using the ToolTipTextNeeded event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/menus/menu/styling-and-appearance/menu-orientation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/menus/menu/styling-and-appearance/menu-orientation.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Default Orientation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/styling-and-appearance/menu-orientation.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Vertical Text Orientation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/styling-and-appearance/menu-orientation.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Vertical Menu With Horizontal Text</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/styling-and-appearance/menu-orientation.md` | 58 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Vertical Menu With Vertical Text</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Constructing and adding menu items</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md` | 51 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Combo Sub Item</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md` | 62 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Suspending the layout</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md` | 73 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Removing items</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling the ToggleStateChanging event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling the SelectedIndexChanged event of RadMenuComboItem</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handling events for controls embedded in RadMenuContentItem</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/multicolumncombobox/drop-down-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/multicolumncombobox/drop-down-properties.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the DropDownWidth property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/multicolumncombobox/drop-down-properties.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the DropDownHeight property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/multicolumncombobox/drop-down-properties.md` | 55 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### AutoSizeDropDownToBestFit</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/navigationview/ui-automation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/navigationview/ui-automation.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### RadNavigationView </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/navigationview/ui-automation.md` | 80 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### RadNavigationView</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/notifyicon/features/balloon-notifications.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/notifyicon/features/balloon-notifications.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 1: Balloon Notification__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/notifyicon/features/balloon-notifications.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 2: Warning Notification__</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/notifyicon/features/popup.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/notifyicon/features/popup.md` | 24 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 1: RadNotifyIcon with Popup__ (Windows 11 OS)</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/notifyicon/features/popup.md` | 95 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### __Figure 2: Show/Hide Animation__ (Windows 10 OS)</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pageview/backstageview/customizing-backstage-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pageview/backstageview/customizing-backstage-view.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing the content area of Backstage View</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pageview/backstageview/customizing-backstage-view.md` | 69 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing the content area of Backstage View</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pageview/backstageview/customizing-backstage-view.md` | 86 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing the content area of Backstage View</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pageview/backstageview/customizing-backstage-view.md` | 133 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Accessing the content area of Backstage View</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pageview/explorerbarview/customizing-the-explorerbarview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pageview/explorerbarview/customizing-the-explorerbarview.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ExplorerBarContentSizeMode.EqualLength</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pageview/explorerbarview/customizing-the-explorerbarview.md` | 55 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the IsContentVisible property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pageview/explorerbarview/customizing-the-explorerbarview.md` | 82 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ScrollToItem</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pageview/how-to/programatically-adding-pages.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pageview/how-to/programatically-adding-pages.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding pages</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pageview/how-to/programatically-adding-pages.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding controls to a page</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/panorama/tiles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/panorama/tiles.md` | 19 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set tile's position</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/panorama/tiles.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add live tiles</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/panorama/tiles.md` | 72 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Populating With Data Programmatically</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pdfviewer/features/text/text-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pdfviewer/features/text/text-selection.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ViewerMode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pdfviewer/features/text/text-selection.md` | 62 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Text selection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pdfviewer/features/thumbnails.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pdfviewer/features/thumbnails.md` | 22 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enable Thumbnails</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pdfviewer/features/thumbnails.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show/Hide Thumbnails</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/binding-with-radchartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/binding-with-radchartview.md` | 17 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting RadChartView Data Source</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/binding-with-radchartview.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Totals Settings</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/binding-with-radchartview.md` | 77 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Chart Events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/calculated-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/calculated-items.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Calculated Item</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/calculated-items.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### PrepareDescriptionForField Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/calculated-items.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### SolveOrder Property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/custom-aggregation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/custom-aggregation.md` | 28 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Function Logic</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/custom-aggregation.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Aggregate Logic</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/custom-aggregation.md` | 52 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using the Custom Aggregate Function</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/custom-group-comparer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/custom-group-comparer.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Defining the Custom Comparer</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/custom-group-comparer.md` | 87 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using the Custom Comparer</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/custom-group-comparer.md` | 109 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Defining a Comparer with Aggregate Access</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/customizing-appearance/formatting-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/customizing-appearance/formatting-appearance.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### CellFormatting Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/customizing-appearance/formatting-appearance.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### GroupElementFormatting Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/customizing-appearance/formatting-appearance.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Error and Empty Value Strings</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/expand-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/expand-behavior.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Expanding Groups</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/expand-behavior.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Changing Expand Behavior</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/exporting-data/export-to-pdf.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/exporting-data/export-to-pdf.md` | 28 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### PivotGridPdfExport Class</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/exporting-data/export-to-pdf.md` | 82 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Running Export Asynchronously</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/exporting-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/exporting-data/spread-export.md` | 51 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Running Export Synchronously</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/exporting-data/spread-export.md` | 130 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### CellFormatting Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/filtering/report-filters.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/filtering/report-filters.md` | 23 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ShowFilterArea Property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/filtering/report-filters.md` | 42 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Filter Descriptions at Run-time</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/layout-settings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/layout-settings.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Headers Layout</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/layout-settings.md` | 40 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Grand and Sub Totals Position</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/layout-settings.md` | 68 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Aggregates Level and Position</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md` | 24 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Sorting the Nodes</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md` | 53 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setup the Providers</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md` | 52 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Connecting to OLAP Cube</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md` | 81 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Adomd Descriptions</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/populating-with-data/using-the-datasource-property.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/populating-with-data/using-the-datasource-property.md` | 17 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting DataSource and DataMember</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-datasource-property.md` | 35 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting Culture</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set ItemSource</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md` | 40 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add Row Descriptions</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md` | 103 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Data Provider</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md` | 114 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Provider Culture</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md` | 22 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set IQueryable Source</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Queryable Row Descriptions</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md` | 110 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Data Provider</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Connecting to OLAP Cube</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md` | 83 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Xmla Descriptions</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/propertygrid/editors/handling-editors'-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/propertygrid/editors/handling-editors'-events.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### How to Handle Events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/propertygrid/editors/handling-editors'-events.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### How to Handle Events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/propertygrid/export-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/propertygrid/export-data/spread-export.md` | 58 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Running Export Synchronously Using a Stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/propertygrid/export-data/spread-export.md` | 142 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Running Export Asynchronously Using a Stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/propertygrid/how-to/custom-keyboard-handling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/propertygrid/how-to/custom-keyboard-handling.md` | 41 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Control&#96;s Implementation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/propertygrid/how-to/custom-keyboard-handling.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Elements&#96; Implementation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/propertygrid/type-converters.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/propertygrid/type-converters.md` | 28 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Bind RadPropertyGrid</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/propertygrid/type-converters.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### TemperatureTypeConverter</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/propertygrid/type-converters.md` | 71 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### BloodTypeConverter</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/propertygrid/type-converters.md` | 95 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### VolumeTypeConverter</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/rangeselector/integration-with-radchartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/rangeselector/integration-with-radchartview.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### SeriesInitializing Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/rangeselector/integration-with-radchartview.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### LabelInitializing Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/rangeselector/integration-with-radchartview.md` | 92 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Disable Pan and Zoom Synchronization</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/rangeselector/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/rangeselector/properties-and-events.md` | 26 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  UpdateMode.Immediate</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/rangeselector/properties-and-events.md` | 109 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Initializing Scale</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/ribbonbar/backstage-view/working-with-backstage-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/ribbonbar/backstage-view/working-with-backstage-view.md` | 17 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enable Backstage View Mode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/backstage-view/working-with-backstage-view.md` | 60 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding items programatically</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md` | 77 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Open a text file and make its text bold</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md` | 169 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Modify the OpenFile method</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md` | 192 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add most recent files functionality</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md` | 221 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add most recent files functionality</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add a button to RadRibbonBarGroup</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md` | 41 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Remove a button from RadRibbonBarGroup</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md` | 69 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add button group with buttons</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a tab to RadRibbonBar</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Remove a Tab from RadRibbonBar</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md` | 70 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Create and Setup New RadRibbonBarGroup</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md` | 90 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Remove RadRibbonBarGroup</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Assign image to start button</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating and add new menu item</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md` | 56 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handle the menu item click event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md` | 67 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding items to the right column</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md` | 80 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding menu items with sub items</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/document-elements/break.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/document-elements/break.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Insert a break</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/document-elements/break.md` | 37 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 2: Modify a break</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md` | 32 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Insert vertical tab through RadDocumentEditor </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md` | 70 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 3: Insert vertical tab in the switch of a merge field </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md` | 98 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 5: Insert the vertical tab in the switch of a merge field</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/mentions/mentions-custom-provider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/mentions/mentions-custom-provider.md` | 20 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Custom mention item</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/mentions/mentions-custom-provider.md` | 72 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom insert action</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/mentions/mentions-custom-provider.md` | 87 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Filtering</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/merge-documents/append.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/merge-documents/append.md` | 43 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### **Example 1: Using the AppendDocument() method**</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/merge-documents/append.md` | 57 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### **Table 1: Restrictions for using AppendDocument()**</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/merge-documents/merge.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/merge-documents/merge.md` | 26 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Merge documents with InsertDocumentOptions </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/merge-documents/merge.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### **Table 1: Behavior of the InsertDocument() method in different scenarios**</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/paste-options.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/paste-options.md` | 73 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### [C#] Example 1: Paste with Specific Settings</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/paste-options.md` | 84 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 1: Paste Options Popup in RadRichTextEditor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/positioning.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/positioning.md` | 87 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Getting the Paragraph on the caret position</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/positioning.md` | 119 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Screen position to DocumentPosition conversion</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/positioning.md` | 148 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using DocumentPosition events</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/features/selection.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customize the appearance of the selection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/selection.md` | 138 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Select all occurrences of the "RadRichTextBox" word</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/features/selection.md` | 155 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating a Custom MouseSelectionHandler</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/how-to/drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/how-to/drag-and-drop.md` | 22 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Initial Controls Setup</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/how-to/drag-and-drop.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### PreviewDragOver Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/docx/docxformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/docx/docxformatprovider.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Import Document from a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/docx/docxformatprovider.md` | 40 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export Document to a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/html/htmlformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/html/htmlformatprovider.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Import Html File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/html/htmlformatprovider.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export Html to File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/plain-text/txtformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/plain-text/txtformatprovider.md` | 24 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Import Document from a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/plain-text/txtformatprovider.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export a Document to a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/rtf/rtfformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/rtf/rtfformatprovider.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Import Document from a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/rtf/rtfformatprovider.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export a Document to a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/rtf/settings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/rtf/settings.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the ExportSettings of the RtfFormatProvider</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/rtf/settings.md` | 37 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setup Default RtfFormatProvider</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/xaml/xaml-verification.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/xaml/xaml-verification.md` | 20 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Disable the default XAML validation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/xaml/xaml-verification.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add assemblies to the AllowedAssemblies collection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/import-export/xaml/xamlformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/import-export/xaml/xamlformatprovider.md` | 27 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Import XAML Document from a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/import-export/xaml/xamlformatprovider.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Export Document to a File</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md` | 23 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Disabling the context menu</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribe to Event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md` | 68 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Builder Class</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/appearance/formatting-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/appearance/formatting-cells.md` | 49 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Data Cells</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/appearance/formatting-cells.md` | 84 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Header Cells.</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resize Column</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resize Column</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md` | 63 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resize Column</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md` | 80 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resize Resource</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/appointments-and-dialogs/working-with-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/appointments-and-dialogs/working-with-appointments.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### New Appointment</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/appointments-and-dialogs/working-with-appointments.md` | 55 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Appointment Status</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### RecurrenceRule Property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md` | 68 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting HourlyReccurrenceRule</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/data-binding/binding-to-business-objects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/data-binding/binding-to-business-objects.md` | 21 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Appointment Class</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/data-binding/binding-to-business-objects.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom Resource Class</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/data-binding/binding-to-business-objects.md` | 68 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Define One-to-many Relation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/data-binding/binding-to-business-objects.md` | 108 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Define Many-to-many Relation</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md` | 25 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Convert Methods</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### EditAppointmentDialog with multiple resources</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md` | 24 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handle ListBox MouseMove</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md` | 58 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Handle RadScheduler MouseMove</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/end-user-functionality/editing-appointments-.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/end-user-functionality/editing-appointments-.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### EditAppointmentDialog with multiple resources</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/end-user-functionality/editing-appointments-.md` | 56 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting a Simple Editor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/end-user-functionality/editing-appointments-.md` | 89 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom TextBox Editor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/holidays.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/holidays.md` | 42 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add a holiday programmatically</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/holidays.md` | 71 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Formatting the holidays</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/print-support/schedulerprintstyles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/print-support/schedulerprintstyles.md` | 23 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Daily Print Style</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/print-support/schedulerprintstyles.md` | 84 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set SchedulerDailyPrintStyle</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/print-support/schedulerprintstyles.md` | 108 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set SchedulerWeeklyCalendarPrintStyle</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/print-support/schedulerprintstyles.md` | 128 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set SchedulerWeeklyPrintStyle</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/print-support/schedulerprintstyles.md` | 158 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set SchedulerMonthlyPrintStyle</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/print-support/schedulerprintstyles.md` | 182 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set SchedulerDetailsPrintStyle</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/day-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/day-view.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Day View</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### GetDayView Method</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 61 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Day Count</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 72 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Work Time</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 97 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show Day Headers</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 108 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Header Format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 131 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Ruler Scale</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 142 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Ruler Size</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 153 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Ruler Start and End</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 167 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set 12 Hour Time Format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 191 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show Ruler</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 202 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Ruler Width</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 213 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Time Pointer</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 224 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Modify All Day Area</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/day-view.md` | 235 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Column Size</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/grouping-by-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/grouping-by-resources.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Group by Resources</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/grouping-by-resources.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resources Count</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/grouping-by-resources.md` | 57 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resource Start Index</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/grouping-by-resources.md` | 93 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Define Resource Size</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/grouping-by-resources.md` | 118 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customize Child Views</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/month-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/month-view.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ActiveViewType Property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 44 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### GetMonthView Method</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 55 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show Weekend</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 75 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Start/End Work Days</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 91 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Number of Weeks</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 100 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Get Week Days</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 111 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Full Month</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 123 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Hiding The Vertical Indicator</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 132 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Navigator Range</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 146 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Showing Weeks Headers</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 157 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting A Header Format</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 168 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Full Month</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 179 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Verical Scrolling Range</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 190 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Appointments Scrolling</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 204 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting Row Height</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/month-view.md` | 218 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Headers Size</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/scheduler-cell-containers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/scheduler-cell-containers.md` | 21 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Initialize Elements</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/scheduler-cell-containers.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Update Elements</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/scheduler-cell-containers.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Access Elements</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/scheduler-cell-containers.md` | 61 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Update Elements In The Container</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/timeline-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/timeline-view.md` | 29 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ActiveViewType Timeline</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 42 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### GetTimelineView Method</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 65 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Timeline View Range</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 96 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set Time Scale</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 107 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Current Scaling</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 118 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Navigation Element</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 129 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Resizing Columns</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/timeline-view.md` | 140 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Headers Size</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/week-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/week-view.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Set ActiveViewType</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/week-view.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### GetWeekView Method</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/week-view.md` | 62 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Show Weekend</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/scheduler/views/work-week-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/scheduler/views/work-week-view.md` | 26 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### ActiveViewType Property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/scheduler/views/work-week-view.md` | 39 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### GetWeekView Method</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/sparkline/features/annotations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/sparkline/features/annotations.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add Plot Band Annotation </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/sparkline/features/annotations.md` | 64 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Add Plot Band Annotation </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/sparkline/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/sparkline/tooltips.md` | 16 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enable tooltips</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/sparkline/tooltips.md` | 32 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Subscribing to DataPointTooltipTextNeeded</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/speechtotextbutton/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/speechtotextbutton/getting-started.md` | 24 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting up a RadSpeechToTextButton</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/speechtotextbutton/getting-started.md` | 77 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using the SpeechRecognized event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/spreadsheet/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/spreadsheet/events.md` | 38 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Disable messages related to protection using the MessageShowing event</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/events.md` | 127 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 4: Using the HyperlinkClicked event to implement confirmation for the clicked links in the document</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/events.md` | 140 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 5: Using the CellPropertyChangedEvent</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/spreadsheet/features/freeze-panes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/spreadsheet/features/freeze-panes.md` | 30 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Freeze Panes</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/features/freeze-panes.md` | 59 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Unfreeze Panes</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/spreadsheet/features/ui-working-with-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/spreadsheet/features/ui-working-with-selection.md` | 96 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Change the ActiveCellMode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/features/ui-working-with-selection.md` | 115 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Selecting a Cell</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/features/ui-working-with-selection.md` | 186 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Selecting all or the used Cells </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/features/ui-working-with-selection.md` | 278 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Get current region</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md` | 20 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Hide Row and Column Headers</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Example 2: Hide Gridlines</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/features/caret.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/features/caret.md` | 16 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 1: Caret's display mode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/caret.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the caret's display mode</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/caret.md` | 45 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the caret's color</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/features/fonts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/features/fonts.md` | 16 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Setting font properties</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/fonts.md` | 31 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 2: Enabling monospaced font optimization</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/features/intelliprompts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/features/intelliprompts.md` | 20 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 1: Populate and display the completion list window</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/intelliprompts.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Example 2: Populate and display the completion list window</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/features/selection.md` | 20 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 1: RadSyntaxEditor with selected text</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/selection.md` | 36 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Table 1: Hotkeys supported by the RadSyntaxEditor and their actions</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/selection.md` | 54 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Customize the appearance of the selection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/features/zooming.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/features/zooming.md` | 16 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 1: Zooming the RadSyntaxEditor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/zooming.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Setting the ScaleFactor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/features/zooming.md` | 48 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Zoom in and Zoom out</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/getting-started.md` | 42 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a RadSyntaxEditor at run time</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/getting-started.md` | 66 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 2: RadSyntaxEditor with a loaded C# file</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/getting-started.md` | 79 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 3: RadSyntaxEditor with C# code highlighting</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/syntax-editor/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/syntax-editor/structure.md` | 16 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 1: RadSyntaxEditor's structure</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/syntax-editor/structure.md` | 33 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Figure 2: RadSyntaxEditor's elements hierarchy</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/task-board/task-board-adding-user-and-tasks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/task-board/task-board-adding-user-and-tasks.md` | 12 | `heading_structure` | Heading level jumps from H0 to H2 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>## Adding Users</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/task-board/task-board-adding-user-and-tasks.md` | 16 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Users at Design time</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/task-board/task-board-adding-user-and-tasks.md` | 35 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding Tags at Design time</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/task-dialog/task-dialog-element-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/task-dialog/task-dialog-element-types.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a RadTaskDialogProgressBar</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/task-dialog/task-dialog-element-types.md` | 60 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a RadTaskDialogVerificationCheckBox</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/task-dialog/task-dialog-element-types.md` | 73 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a RadTaskDialogCommandLinkButton</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/task-dialog/task-dialog-element-types.md` | 86 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a RadTaskDialogRadioButton</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/task-dialog/task-dialog-element-types.md` | 99 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a RadTaskDialogButton</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/toast-notification/adding-toast-notifications-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/toast-notification/adding-toast-notifications-programmatically.md` | 13 | `heading_structure` | Heading level jumps from H0 to H2 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>## Adding Toast Notifications Programmatically</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/toast-notification/adding-toast-notifications-programmatically.md` | 19 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding RadToastNotification at RunTime</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/treeview/data-binding/togglestateconverter.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/treeview/data-binding/togglestateconverter.md` | 13 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `controls/treeview/export-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/treeview/export-data/spread-export.md` | 59 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Running export synchronously using a stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/treeview/export-data/spread-export.md` | 150 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>####  Running export asynchronously using a stream</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/treeview/ui-automation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/treeview/ui-automation.md` | 47 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### RadTreeView </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/treeview/ui-automation.md` | 79 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### RadTreeView</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/treeview/working-with-nodes/scrolling-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/treeview/working-with-nodes/scrolling-nodes.md` | 34 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Discrete Scrolling </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/treeview/working-with-nodes/scrolling-nodes.md` | 85 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Enabling Kinetic Scrolling </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/treeview/working-with-nodes/scrolling-nodes.md` | 105 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Scroll to Item </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/virtual-keyboard/default-layouts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/virtual-keyboard/default-layouts.md` | 18 | `heading_structure` | Heading level jumps from H1 to H3 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>### **Extended** </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/virtual-keyboard/default-layouts.md` | 50 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a key to the default Home layout</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/virtualgrid/features/context-menu/custom-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/virtualgrid/features/context-menu/custom-context-menu.md` | 20 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Create a RadContextMenu and initialize its items</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/virtualgrid/features/context-menu/custom-context-menu.md` | 40 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Create custom context menus</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/virtualgrid/features/editing/editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/virtualgrid/features/editing/editors.md` | 13 | `heading_structure` | Heading level jumps from H0 to H2 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>## Editors</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/virtualgrid/features/editing/editors.md` | 43 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Defining a Columns&#96;s Data Type</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `controls/virtualgrid/features/filtering/setting-filters-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `controls/virtualgrid/features/filtering/setting-filters-programmatically.md` | 36 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using simple filter descriptor </code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `controls/virtualgrid/features/filtering/setting-filters-programmatically.md` | 50 | `heading_structure` | Heading level jumps from H1 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Using CompositeFilterDescriptor</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `getting-started/first-steps.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `getting-started/first-steps.md` | 29 | `code_block_accessibility` | Fenced code block has no language label (multiple unlabeled blocks in this article).<br>Rule: <code>unlabeled_code_fence</code><br>Source: <code>	&#96;&#96;&#96;</code> | Add the correct language identifier: C# or VB.NET for paired application samples, or the appropriate shell/data language; use text only for actual plain text. |
| High | `getting-started/first-steps.md` | 35 | `code_block_accessibility` | Fenced code block has no language label (multiple unlabeled blocks in this article).<br>Rule: <code>unlabeled_code_fence</code><br>Source: <code>	&#96;&#96;&#96;</code> | Add the correct language identifier: C# or VB.NET for paired application samples, or the appropriate shell/data language; use text only for actual plain text. |

### `knowledge-base/change-checkbox-size.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/change-checkbox-size.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/chartview-summary-labels-stacked-bars.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/chartview-summary-labels-stacked-bars.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/checked-dropdownlist-add-tokens.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/checked-dropdownlist-add-tokens.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/custom-resizing-behavior-in-radscheduler.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/custom-resizing-behavior-in-radscheduler.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/customize-rating-column.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/customize-rating-column.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/dashboard-demo.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/dashboard-demo.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/dataentry-customize-editor-controls-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/dataentry-customize-editor-controls-layout.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/dataentry-properties-order.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/dataentry-properties-order.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/deal-with-slow-webcam-preview-on-start.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/deal-with-slow-webcam-preview-on-start.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/diagram-restricting-drag-direction.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/diagram-restricting-drag-direction.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/double-buffered-table-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/double-buffered-table-layout.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/dropdownlist-style-indicating-focus.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/dropdownlist-style-indicating-focus.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/filtering-indicators-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/filtering-indicators-in-gridview.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/free-text-in-combobox-column.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/free-text-in-combobox-column.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/ganttview-custom-input-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/ganttview-custom-input-behavior.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/ganttview-zoom-to-date-range.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/ganttview-zoom-to-date-range.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/grid-format-group-key.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/grid-format-group-key.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/gridview-auto-size-rows-to-fill.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/gridview-auto-size-rows-to-fill.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/gridview-drag-drop-bound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/gridview-drag-drop-bound-mode.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/gridview-improve-down-arrow-key-performance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/gridview-improve-down-arrow-key-performance.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Improved scrolling performance with Down Arrow key</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `knowledge-base/gridview-improve-down-arrow-key-performance.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Custom row behavior</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `knowledge-base/gridview-permanenteditor-in-filter-cell.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/gridview-permanenteditor-in-filter-cell.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/hdpi-tips-and-tricks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/hdpi-tips-and-tricks.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/kb-installation-cannot-load-licensing-assembly.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/kb-installation-cannot-load-licensing-assembly.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/kb-installation-missing-license-vs-2019.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/kb-installation-missing-license-vs-2019.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/kb-installation-missing-licensing-assembly.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/kb-installation-missing-licensing-assembly.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/keep-states-on-reset.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/keep-states-on-reset.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/map-point-with-radius.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/map-point-with-radius.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/masked-edit-box-play-sound.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/masked-edit-box-play-sound.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/negative-area-chart.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/negative-area-chart.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/pdfviewer-silent-print.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/pdfviewer-silent-print.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/pivotgrid-changing-default-aggregate-function.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/pivotgrid-changing-default-aggregate-function.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/radchartview-restrict-zoom-interval.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/radchartview-restrict-zoom-interval.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/radmap-export-to-an-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/radmap-export-to-an-image.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/radmap-pins-with-an-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/radmap-pins-with-an-image.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/scheduler-custom-time-scale.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/scheduler-custom-time-scale.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/scheduler-minutely-recurrence-pattern.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/scheduler-minutely-recurrence-pattern.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/scheduler-month-view-comparer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/scheduler-month-view-comparer.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/scheduler-update-timeline-header-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/scheduler-update-timeline-header-text.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/scientific-notation-leading-zeros-spineditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/scientific-notation-leading-zeros-spineditor.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/server-side-paging-in-virtualgrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/server-side-paging-in-virtualgrid.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/shopping-cart-lsitview-custom-item.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/shopping-cart-lsitview-custom-item.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/snapping-per-day-in-radganttview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/snapping-per-day-in-radganttview.md` | 16 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/tabbedform-keep-show-new-tab-button.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/tabbedform-keep-show-new-tab-button.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/textboxcontrol-autocomplete-contains.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/textboxcontrol-autocomplete-contains.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/tooltip-on-disabled-element.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/tooltip-on-disabled-element.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/tree-view-handle-keypress.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/tree-view-handle-keypress.md` | 14 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `knowledge-base/treeview-find-node-by-value.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `knowledge-base/treeview-find-node-by-value.md` | 15 | `table_accessibility` | Source check: an HTML table has multiple rows of text cells but no &lt;th&gt; headers; verify its data relationships and intended purpose.<br>Rule: <code>html_data_table_no_headers</code><br>Source: <code>&lt;table&gt;</code> | Verify that this is a data table, not layout. If data, use &lt;th scope="row"&gt; for property/value labels or &lt;th scope="col"&gt; for column headers, matching the actual relationships; preserve a logical reading order. |

### `telerik-presentation-framework/animations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `telerik-presentation-framework/animations.md` | 33 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Animate button's Opacity property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `telerik-presentation-framework/animations.md` | 75 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Animate button's Margin property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `telerik-presentation-framework/animations.md` | 114 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Animate button's Bounds property</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md` | 22 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a Header Row.</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md` | 73 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Adding a Footer row.</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `telerik-presentation-framework/getting-started/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `telerik-presentation-framework/getting-started/getting-started.md` | 46 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating MyPanelElement</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `telerik-presentation-framework/getting-started/getting-started.md` | 172 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating MyPanel control</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `telerik-presentation-framework/primitives/borderprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `telerik-presentation-framework/primitives/borderprimitive.md` | 23 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating a BorderPrimitive with SingleBorder</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `telerik-presentation-framework/primitives/borderprimitive.md` | 70 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating a BorderPrimitive with FourBorders</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `telerik-presentation-framework/primitives/borderprimitive.md` | 127 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Creating a BorderPrimitive with OuterInnerBorders</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

### `visual-studio-integration/visual-studio-extensions/upgrade-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | `visual-studio-integration/visual-studio-extensions/upgrade-project.md` | 17 | `heading_structure` | Heading level jumps from H1 to H3 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>### Prerequisites</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |
| High | `visual-studio-integration/visual-studio-extensions/upgrade-project.md` | 80 | `heading_structure` | Heading level jumps from H2 to H4 (repeated skips in this article).<br>Rule: <code>heading_level_skip</code><br>Source: <code>#### Version Detection</code> | Use sequential heading levels reflecting the actual section hierarchy; preserve meaningful labels and check changed anchors. |

## Recurring Medium and Low patterns

Counts are finding occurrences, not unique articles; one source line can carry different dimension findings. Exact locations, evidence, and fixes for every occurrence are in `scores.jsonl` → `findings` and the matching dimension’s `violations`. These candidate findings should be checked in context before editing.

| Severity | Dimension | Rule | Occurrences | Articles |
|---|---|---|---:|---:|
| Medium | heading_structure | multiple_standard_h1 | 1293 | 1190 |
| Medium | heading_structure | heading_level_skip | 712 | 712 |
| Medium | link_text_clarity | generic_link_label | 320 | 257 |
| Medium | table_accessibility | empty_table_cell | 232 | 108 |
| Medium | heading_structure | kb_authored_h1 | 200 | 200 |
| Medium | plain_language | long_prose_sentence | 172 | 147 |
| Medium | heading_structure | empty_heading | 84 | 84 |
| Medium | heading_structure | missing_standard_h1 | 2 | 2 |
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
| html_preformatted_code | 12 | 1 |
| html_table_purpose | 4 | 4 |
| callout_list_continuation | 2 | 2 |
| unparsed_pipe_table | 2 | 2 |
| empty_link_label | 1 | 1 |

To retrieve all cases for an article without ambiguity, select its unique JSONL `path` and inspect `human_review_required`. To retrieve all unranked alt cases, filter that array for `rule == "missing_or_ambiguous_alt"`. The aggregate table above is exhaustive by rule; the JSONL is the exhaustive location register, rather than a sample.

### Dependency totals

Unexpanded dependency register: 470 source-marker locations, 6320 snippet-ID occurrences, and 110 includes. Dependency cases have `scope: "unexpanded_dependency_not_scored"`; their generated contents have no asserted score. All eligible authored article sources are scored.

## Reproducible method and scoring rubric

Used the preinstalled Python standard library, PyYAML 6.0.1, and markdown-it-py 3.0.0 CommonMark parser with its table rule enabled; no dependencies, helper scripts, or test/build infrastructure were added. YAML metadata is excluded from content checks. CommonMark ATX/Setext headings, backtick and tilde fences, lists, inline code, Markdown tables, reference links/images, and HTML blocks are parsed; a separate HTML parser checks authored HTML headings, links, images, and tables. HTML pre/code/script/style content is not prose. Templating/source markers are blanked with original line positions preserved; slug link targets are made opaque/parser-safe without resolving them. No includes, templates, external code snippets, or remote links are fetched or expanded. Both `{{source=… region=…}}` markers and `<snippet id="…" />` markers are registered without expansion and are not counted as authored code or prose; `{{endregion}}` is only a terminator. Source SHA-256 values hash original file bytes, including any BOM and original line endings. Paired code samples may share an introduction.

Each dimension has an integer score 1–5. **5** = absent type or no configured source signal (not proof of semantic perfection); **4** = Low findings only; **3** = any Medium finding or unresolved human-review case; **2** = one High finding; **1** = a verified essential-content Critical finding or at least two High findings in that dimension. The most severe applicable rule wins. Unexpanded include/source/snippet dependencies are explicitly out of source-only scoring scope and are registered for review without deductions. A dimension with an authored-source finding or an applicable authored-content review cannot receive 5; an absent authored type still receives 5, even if an unexpanded dependency is registered separately. This explicit repository-wide heuristic scale replaces unsupported per-article semantic judgments; it is not a standardized accessibility certification.

Weighted overall = `(20×heading + 20×alt + 15×link + 15×plain + 10×table + 10×formatting + 5×callout + 5×code) / 100`. JSONL stores the exact integer numerator/denominator and unrounded numeric `overall_score` (increments of 0.05), plus a one-decimal display score. The repository mean is the arithmetic mean of unrounded article scores. No per-article scores appear in this report.

### Check rules and severity interpretation

- **Headings:** KB means `knowledge-base/` or case-insensitive `res_type: kb`; no authored H1 is expected. Standard articles require one H1. Missing/multiple standard H1 and KB authored H1 are Medium if an outline remains; a standard article with no headings is High. A heading-level increase of more than one is Medium once and High at each location when repeated within the article. KB H2 roots are valid. Empty headings are Medium; exact vague labels (`Details`, `More Info`, `More Information`, `Section N`) are Low. A parent heading immediately followed by a subheading is not automatically “empty.”
- **Images:** empty, absent, generic (image/screenshot/picture/diagram/logo/figure with optional number), or exact filename-stem-like alternatives are Human Review Required with no severity; purpose and text equivalence require human judgment. No missing-alt case was promoted to Critical. Missing adjacent detected sentence/`>caption` introductions are Low authoring signals, not conformance failures. Alternatives longer than 240 characters are review candidates, not inherently defects.
- **Links:** exact generic labels such as “here,” “click here,” and “this article” are Medium. URL-shaped labels are Low. Empty extracted link labels and repeated generic labels pointing to different destinations require human review. Destination-equivalent descriptive synonyms are not penalized merely for varying wording. Link purpose, title/accessibility attributes, all same-target naming consistency, and bare prose URLs need contextual review.
- **Tables:** Markdown delimiter rows are semantic headers; bold is not required. HTML tables with at least two rows/four text cells, no images, and no `<th>` are treated as headerless data tables (High); author review should verify relationships before remediation. Presentation tables or uncertain table purpose require review. Text inside HTML `pre`/`code` is retained when checking whether a table cell has content, even though it is excluded from prose readability. Empty cells are Medium candidates requiring contextual correction, not an instruction to fill intentional blanks blindly. Markdown tables with five or more columns and no detected sentence lead-in are Low. Merged HTML cells and unparsed pipe-row groups require review.
- **Plain language:** only parsed non-heading/non-table prose is measured; inline code, image alternatives, destinations, technical qualified/camelCase identifiers, and source placeholders are filtered. A prose sentence over 40 ordinary-word tokens is Medium; each location records the measured count. This deliberately conservative threshold avoids treating all 26-word technical sentences as defects. “Utilize/utilizes/utilizing,” “aforementioned,” and “heretofore” are Low word-choice candidates. No reading-grade, acronym-completeness, passive-voice, or jargon-comprehension claims are made.
- **Formatting:** bold-only warning/important/caution/“do not” labels are Medium. `<u>` is a Low inspection candidate. References to colored/formatted items are unranked human-review cases; they do not prove color-only meaning. Routine bold UI/API syntax is not penalized as an accessibility defect.
- **Callouts:** supported typed callouts and ordinary platform-supported note blockquotes are accepted. Colon-labeled note/tip/warning/important/caution prose is a Low consistency candidate; an empty typed callout is Medium when it has no following content; CommonMark lazy paragraph continuation and blank quoted lines before callout text are accepted, and uncertain unquoted-list continuation is registered for human review. Semantic severity, overload, and self-contained meaning still require human review.
- **Code:** one unlabeled authored fence is Medium; two or more make each unlabeled fence High. C#/VB.NET aliases (`cs`, `csharp`, `vb`, `visualbasic`, `vbnet`) are Low local-style candidates, not proof syntax highlighting fails. Missing immediately detected introductions are Low; paired blocks share a lead-in. Authored HTML preformatted/code blocks are counted separately and registered for human review of their actual content type and rendered labeling; natural-language prompts are not presumed to be C#/VB.NET. Indented code and possible unclosed fences require review. Placeholder clarity and command outcomes need semantic review; external source and snippet-ID markers are only unscored dependency-review cases, never unlabeled-code defects.

### Limitations and follow-up

The parser is not the site renderer. Nested templating, unusual HTML/Markdown mixtures, multiline inline constructs, escaping, conditional content, CSS-generated text, accessible names supplied by rendering, and local renderer extensions can differ. Location evidence is exact authored source; some readability/link locations identify the start of their containing source paragraph. Image introductions use a conservative adjacent-sentence/typed-caption heuristic; a meaningful non-sentence lead-in may therefore be a false positive. Technical-token filtering reduces, but cannot eliminate, prose false positives. HTML table purpose and intentionally empty cells must be confirmed. No image content, animations, video captions/transcripts, PDF alternatives, actual DOM heading outline, keyboard/focus behavior, color contrast, assistive-technology output, or link availability was tested. Absent type gets 5; a 5 means no detected signal and must not be interpreted as a human semantic review. These limitations apply to every record, even those with no explicit review case. Human review is required before claiming equivalence or conformance. The report remains provisional in that semantic sense; no article was omitted or left unscored.

## Validation performed

- Enumerated and reconciled every eligible article: 3098 eligible, 3098 records, 3098 unique sorted paths, zero unscored and zero duplicate paths.
- Validated eight integer dimension scores per record, each in 1–5, and recomputed every unrounded weighted overall using decimal arithmetic and exact integer numerators/100.
- Validated every finding/review line against the original article and checked literal evidence equality; line numbers are one-based, including frontmatter.
- Verified review cases have no severity field, missing/ambiguous-alt cases are never severity-ranked, and KB records never receive a missing-H1 finding.
- Calibrated against the authored API landing page (CSS at lines 1–83 is not prose), `getting-started/first-steps.md` (card attributes are not prose), and `knowledge-base/tabbedform-keep-show-new-tab-button.md` (four-backtick C#/VB.NET samples, a property/value Environment data table, and KB heading rules). Supported `>caption` introductions do not replace alt text or participate in the heading outline; Markdown delimiter headers do not require HTML `scope` attributes.
- Rechecked HTML table-cell content independently, retaining nested `pre`/`code` text. Removed 12 false empty-cell signals from `ai-tools/mcp-server/coding-assistant/prompt-library.md` and registered its 12 authored HTML prompt blocks for code-accessibility review instead of claiming that code content is absent.
- Compared all Critical/High report entries with the JSONL register; aggregate/dimension arithmetic, every recurring-pattern/review aggregate, original-byte source hashes, exclusion eligibility, and JSONL parsing were independently checked after writing. Only the two requested artifacts appear in `git status`. No repository test/build/lint infrastructure was introduced or run; no article source files were edited.
- Independently reparsed the source structure behind all 528 High findings: 478 repeated heading skips, 48 headerless HTML data-table structures, and two unlabeled fences. In-memory assertions additionally checked frontmatter separation, ATX/Setext headings, caption handling, four-backtick/tilde fences, Markdown table headers, and removal of source markers from prose/code evaluation. These checks created no helper scripts or test files.
- Parsed the report itself and verified that all 218 article finding tables have exactly the requested six headers, with all 528 finding rows matching JSONL severity, article, line, dimension, issue, source evidence, and recommended fix.
- Source hashes allow checking the assessed snapshot. Re-running on changed sources requires recomputing the assessment; prior issue/PR statements are not reused as evidence.
