# Repository Documentation Accessibility Audit

**Status:** Provisional

## Average Scores

- **Articles scored:** 3097
- **Articles excluded:** 40
- **Markdown candidates discovered:** 3137
- **Articles that could not be scored:** 0
- **Overall documentation accessibility score:** 4.5 / 5.0

| Dimension | Average score | Weight |
|---|---:|---:|
| Heading Structure | 4.2 / 5.0 | 20% |
| Alternative Text | 4.8 / 5.0 | 20% |
| Link Text Clarity | 4.7 / 5.0 | 15% |
| Plain Language | 3.3 / 5.0 | 15% |
| Table Accessibility | 4.9 / 5.0 | 10% |
| Formatting Independence | 5.0 / 5.0 | 10% |
| Callout Structure | 5.0 / 5.0 | 5% |
| Code Block Accessibility | 4.9 / 5.0 | 5% |

## Summary

The source-only screening scored 3097 of 3137 discovered Markdown files. Strongest dimensions: **Callout Structure** (5.0/5), **Formatting Independence** (5.0/5), **Table Accessibility** (4.9/5). Weakest dimensions: **Plain Language** (3.3/5), **Heading Structure** (4.2/5), **Link Text Clarity** (4.7/5). **0** articles contain at least one Critical finding, **1481** contain at least one High finding, and **1481** contain Critical and/or High findings.

The recurring Medium/Low patterns are summarized below by affected article count. These are source-pattern indicators rather than judgments about rendered output or image pixels.
- `frequent sentences over 25 words`: 1664 articles (1664 detected instances).
- `occasional sentences over 25 words`: 1052 articles (1052 detected instances).
- `isolated heading level skips`: 694 articles (694 detected instances).
- `different anchors same destination`: 363 articles (438 detected instances).
- `code blocks without prose introduction`: 227 articles (388 detected instances).
- `isolated nondescriptive links`: 220 articles (231 detected instances).
- `generic or filename alt text`: 193 articles (315 detected instances).
- `empty heading sections`: 173 articles (193 detected instances).
- `images without adjacent introduction`: 168 articles (273 detected instances).
- `same anchor different destinations`: 49 articles (57 detected instances).
- `bold only warning cues`: 18 articles (19 detected instances).
- `color only meaning cues`: 11 articles (15 detected instances).

**Human review:** 3 image instances lack an alt attribute. Their purpose cannot be determined from Markdown source alone, so they are marked “Human Review Required” and are not classified as Critical or High. The audit is **Provisional** because these cases require review.

### Limitations

This audit evaluates Markdown source only. It does not inspect rendered pages, image pixels, control/product behavior, code correctness, or claim WCAG conformance. Automated checks identify explicit structural patterns; plain-language scores use sentence-length heuristics, and contextual judgments (including whether an image is informative, decorative, or well described) require human review. Included articles with no content of a dimension receive 5 for that dimension. The per-article records use integer dimension scores; weighted article scores and repository averages are rounded to one decimal place.

### Exclusion Counts

- **Total unique excluded files:** 40.
- **Reasons (exclusive counts, with overlapping metadata reasons noted):
  - Generated API reference content: 1.
  - Generated accessibility audit output: 1.
  - Repository/build/audit output directories: 16.
  - docs-builder.yml excluded-files rule (README.md): 1.
  - publish/published: false frontmatter: 21.
  - Directory exclusions: `.github` 16; `.git`, `node_modules`, `_site`, `bin`, and `obj` 0; audit-output directories 0.
  - The README also has `publish: false`; it is counted once under the build-config exclusion.
  - Generated report output is excluded from subsequent runs; output folders matching audit naming are excluded.
  - No invalid-UTF-8 articles were found.

## Scoring Method

The audit applies the eight requested dimensions and weights to Markdown source patterns. It checks authored heading levels and H1 rules, image alt attributes and adjacent introductions, link labels and destinations, table header/empty-cell patterns, sentence length, color/formatting cues, callout syntax, and fenced-code language labels and introductions. A dimension with no applicable content receives 5; other scores map detected concerns to the 1–5 rubric scale. Plain-language scores are automated estimates based primarily on the share of prose sentences longer than 25 words, not a full editorial assessment.

## Validation

- Eligible articles included: **3097**.
- Score records written: **3097**.
- Count match: **True**.
- Articles not scored: **0**.
- Each score record has a unique repository-relative path; weighted scores and repository averages are recalculated from the per-article dimension scores.


## Critical and High Issues

Findings are grouped by repository-relative article path; Critical findings precede High findings within each article. No per-article scores are included.

### `controls/datafilter/end-user-functionality.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/datafilter/end-user-functionality.md | 53 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md | 75 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/customizing-floating-windows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/customizing-floating-windows.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/customizing-tabstrip-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/customizing-tabstrip-items.md | 93 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/example-building-an-advanced-layout-at-runtime.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/example-building-an-advanced-layout-at-runtime.md | 123 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/tabs-and-captions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/tabs-and-captions.md | 90 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/toolwindow-and-documentwindow-properties-and-methods.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/toolwindow-and-documentwindow-properties-and-methods.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dock/object-model/tracking-the-activewindow.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dock/object-model/tracking-the-activewindow.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/checkeddropdownlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/checkeddropdownlist.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/theming.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/theming.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/design-time.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/data-binding.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/design-time.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/properties-and-events.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/animation-effects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/animation-effects.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/design-time.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/adding-items-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/adding-items-programmatically.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/data-binding.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/design-time.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/properties-methods-events.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/properties-methods-events.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/properties-methods-events.md | 95 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/structure.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/customizing-appearance/themes.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/properties-methods-events.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/properties-methods-events.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/properties-methods-events.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/structure.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance).md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance).md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/data-representation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/data-representation.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/design-time.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/drag-and-drop/listcontroldragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/drag-and-drop/listcontroldragdropservice.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/listcontrol.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/listcontrol.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/adding-items-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/adding-items-programmatically.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/databinding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/databinding.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/design-time.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/properties-methods-events.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/properties-methods-events.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/properties-methods-events.md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/structure.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/visual-data-representation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/visual-data-representation.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/auto-complete.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/auto-complete.md | 93 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/autocompletebox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/autocompletebox.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/caret-positioning-and-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/caret-positioning-and-selection.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/creating-custom-blocks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/creating-custom-blocks.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/customizing-appearance/customizing-fill-and-border.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/customizing-appearance/customizing-fill-and-border.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/customizing-appearance/formatting-blocks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/customizing-appearance/formatting-blocks.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/customizing-appearance/themes.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/design-time.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/element-structure-and-document-object-model.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/element-structure-and-document-object-model.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/properties-events-methods.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/properties-events-methods.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/autocompletebox/text-editing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/autocompletebox/text-editing.md | 69 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/browseeditor/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/browseeditor/customizing-appearance/accessing-and-customizing-elements.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/browseeditor/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/browseeditor/customizing-appearance/themes.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/browseeditor/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/browseeditor/design-time/smart-tag.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/browseeditor/properties-event.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/browseeditor/properties-event.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/browseeditor/properties-event.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/design-time.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/item-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/item-types.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/populating-with-items/adding-items-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/populating-with-items/adding-items-programmatically.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/populating-with-items/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/populating-with-items/design-time.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/properties-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/properties-events.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/buttontextbox/properties-events.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/buttontextbox/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/buttontextbox/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/calculatordropdown/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/calculatordropdown/customizing-appearance/themes.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/calculatordropdown/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/calculatordropdown/design-time/smart-tag.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/colorbox/colorbox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/colorbox/colorbox.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/colorbox/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/colorbox/customizing-appearance/customizing-appearance.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/colorbox/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/colorbox/customizing-appearance/themes.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/colorbox/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/colorbox/design-time.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/colorbox/properies-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/colorbox/properies-and-events.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/colorbox/properies-and-events.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/colorbox/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/colorbox/structure.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/colorbox/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/MaskDateTimeProvider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/MaskDateTimeProvider.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/customizing-appearance/customize-radcalendar-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/customizing-appearance/customize-radcalendar-programmatically.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/customizing-appearance/customizing-appearance.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/customizing-appearance/themes.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/design-time.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/free-form-date-time-parsing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/free-form-date-time-parsing.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/how-to/set-null-or-empty-value.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/how-to/set-null-or-empty-value.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/how-to/tweak-increment-step.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/how-to/tweak-increment-step.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/internationalization/cultureinfo-and-regioninfo-basics.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/internationalization/cultureinfo-and-regioninfo-basics.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/internationalization/date-formats.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/internationalization/date-formats.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/internationalization/internationalization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/internationalization/internationalization.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/navigation-modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/navigation-modes.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/overview.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/providers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/providers.md | 137 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/datetimepicker/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/datetimepicker/structure.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/customizing-appearance/accessing-and-customizing-elements.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/customizing-appearance/themes.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/design-time.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/features.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/features.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/overview.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/populating-with-data/adding-items-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/populating-with-data/adding-items-programmatically.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/populating-with-data/data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/populating-with-data/data-binding.md | 129 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/domainupdown/populating-with-data/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/domainupdown/populating-with-data/design-time.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/maskededitbox/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/maskededitbox/customizing-appearance/accessing-and-customizing-elements.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/maskededitbox/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/maskededitbox/customizing-appearance/themes.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/maskededitbox/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/maskededitbox/design-time/smart-tag.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/maskededitbox/null-values-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/maskededitbox/null-values-support.md | 16 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/maskededitbox/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/maskededitbox/properties-methods-events.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/maskededitbox/properties-methods-events.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/maskededitbox/properties-methods-events.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/maskededitbox/properties-methods-events.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/popupeditor/customize-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/popupeditor/customize-elements.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/popupeditor/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/popupeditor/design-time.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/popupeditor/design-time.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/popupeditor/handling-popup-keyboard-input.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/popupeditor/handling-popup-keyboard-input.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/popupeditor/popupcontainer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/popupeditor/popupcontainer.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/popupeditor/properties-events-and-methods.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/popupeditor/properties-events-and-methods.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/spineditor/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/spineditor/customizing-appearance/customizing-appearance.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/spineditor/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/spineditor/customizing-appearance/themes.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/spineditor/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/spineditor/design-time.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/spineditor/null-value-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/spineditor/null-value-support.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/spineditor/spineditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/spineditor/spineditor.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/spineditor/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/spineditor/structure.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/spineditor/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textbox/adding-buttons-to-radtextbox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textbox/adding-buttons-to-radtextbox.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textbox/control-element-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textbox/control-element-structure.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textbox/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textbox/customizing-appearance/customizing-appearance.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textbox/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textbox/customizing-appearance/themes.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textbox/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textbox/design-time.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textbox/programming-radtextbox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textbox/programming-radtextbox.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/autocomplete.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/autocomplete.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/caret-positioning-and-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/caret-positioning-and-selection.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/creating-custom-blocks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/creating-custom-blocks.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/customizing-appearance/customizing-appearance.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/customizing-appearance/formatting-blocks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/customizing-appearance/formatting-blocks.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/customizing-appearance/themes.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/design-time.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/element-structure-and-document-object-model.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/element-structure-and-document-object-model.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/keyboard-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/keyboard-support.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/localization.md | 88 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/properties.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/textboxcontrol/properties.md | 88 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/radtextboxcontrol-vs-radtextbox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/radtextboxcontrol-vs-radtextbox.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/textboxcontrol/text-editing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/textboxcontrol/text-editing.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timeonlypicker/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timeonlypicker/structure.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/customizing-appearance/customizing-programatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/customizing-appearance/customizing-programatically.md | 106 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/customizing-appearance/themes.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/design-time.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/getting-started.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/localization.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/structure-properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/structure-properties-and-events.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/structure.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/timepicker/structure.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/timepicker/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timepicker/timepicker.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timepicker/timepicker.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timespanpicker/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timespanpicker/customizing-appearance/customizing-appearance.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timespanpicker/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timespanpicker/customizing-appearance/themes.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timespanpicker/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timespanpicker/design-time.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timespanpicker/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timespanpicker/properties-methods-events.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/editors/timespanpicker/properties-methods-events.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/editors/timespanpicker/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/editors/timespanpicker/structure.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/dialog-controls/explorer-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/dialog-controls/explorer-control.md | 170 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/dialog-controls/radopenfiledialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/dialog-controls/radopenfiledialog.md | 120 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/dialog-controls/radopenfolderdialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/dialog-controls/radopenfolderdialog.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/dialog-controls/radsavefiledialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/dialog-controls/radsavefiledialog.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/events.md | 119 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/features/common.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/features/common.md | 158 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/features/custom-places.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/features/custom-places.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/features/environment-variables.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/features/environment-variables.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/features/error-handling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/features/error-handling.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/features/favorites-and-libraries.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/features/favorites-and-libraries.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/how-to/improve-load-performance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/how-to/improve-load-performance.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/localization.md | 306 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/overview.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/file-dialogs/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/file-dialogs/structure.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/filter-view-changing-default-editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/filter-view-changing-default-editors.md | 92 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/filter-view-design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/filter-view-design-time.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/filter-view-getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/filter-view-getting-started.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/filter-view-localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/filter-view-localization.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/filter-view-properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/filter-view-properties-methods-events.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/filter-view-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/filter-view-structure.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/filter-view/unbound_mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/filter-view/unbound_mode.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/colordialog/colordialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/colordialog/colordialog.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/colordialog/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/colordialog/properties-methods-events.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/colordialog/properties-methods-events.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/colordialog/properties-methods-events.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/colordialog/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/colordialog/structure.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/form/form.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/form/form.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/form/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/form/properties-methods-events.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/form/properties-methods-events.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/form/properties-methods-events.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/form/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/form/structure.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/form/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/form/themes.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/form/using-the-formimageborderprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/form/using-the-formimageborderprimitive.md | 102 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/messagebox/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/messagebox/getting-started.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/messagebox/messagebox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/messagebox/messagebox.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/messagebox/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/messagebox/properties-methods-events.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/messagebox/properties-methods-events.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/messagebox/properties-methods-events.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/messagebox/properties-methods-events.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/messagebox/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/messagebox/structure.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/radtitlebar/properties-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/radtitlebar/properties-events.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/radtitlebar/properties-events.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/radtitlebar/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/radtitlebar/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/ribbonform/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/ribbonform/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/ribbonform/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/ribbonform/properties-methods-events.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/ribbonform/properties-methods-events.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/ribbonform/properties-methods-events.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/ribbonform/properties-methods-events.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/ribbonform/properties-methods-events.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/ribbonform/ribbonform.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/ribbonform/ribbonform.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/ribbonform/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/ribbonform/structure.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/shapedform/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/shapedform/overview.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/statusstrip/statusstrip.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/statusstrip/statusstrip.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/statusstrip/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/statusstrip/structure.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/statusstrip/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/statusstrip/themes.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/tabbedform/customizing-appearance/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/tabbedform/customizing-appearance/customizing-appearance.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/tabbedform/customizing-appearance/customizing-appearance.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/tabbedform/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/tabbedform/customizing-appearance/themes.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/tabbedform/features/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/tabbedform/features/context-menu.md | 18 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/tabbedform/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/tabbedform/getting-started.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/tabbedform/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/tabbedform/overview.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/tabbedform/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/tabbedform/properties-methods-events.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/tabbedform/properties-methods-events.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/tabbedform/properties-methods-events.md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/tabbedform/properties-methods-events.md | 116 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/toolbarform/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/toolbarform/design-time.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/toolbarform/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/toolbarform/overview.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/forms-and-dialogs/toolbarform/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/forms-and-dialogs/toolbarform/properties-methods-events.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/forms-and-dialogs/toolbarform/properties-methods-events.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/context-menu/data-item-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/context-menu/data-item-context-menu.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/context-menu/default-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/context-menu/default-context-menu.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/context-menu/modifying-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/context-menu/modifying-context-menu.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/custom-items/data-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/custom-items/data-cells.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/custom-items/data-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/custom-items/data-items.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/custom-items/task-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/custom-items/task-elements.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/design-time/adding-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/design-time/adding-columns.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/design-time/adding-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/design-time/adding-items.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/design-time/adding-links.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/design-time/adding-links.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/design-time/smart-tag.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/drag-and-drop/ganttviewdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/drag-and-drop/ganttviewdragdropservice.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/editing/creating-custom-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/editing/creating-custom-editor.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/editing/customizing-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/editing/customizing-editor.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/editing/editing-graphical-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/editing/editing-graphical-view.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/editing/editing-text-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/editing/editing-text-view.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/formatting/custom-painting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/formatting/custom-painting.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/formatting/graphicalview-item-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/formatting/graphicalview-item-formatting.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/formatting/graphicalview-link-item-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/formatting/graphicalview-link-item-formatting.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/formatting/textview-item-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/formatting/textview-item-formatting.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/formatting/thmes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/formatting/thmes.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/formatting/timeline-item-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/formatting/timeline-item-formatting.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/ganttview-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/ganttview-selection.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/input-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/input-behavior.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/integration.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/integration.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/printing-support/printing-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/printing-support/printing-support.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/properties-events-metohods.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/properties-events-metohods.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/ganttview/properties-events-metohods.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/ganttview/properties-events-metohods.md | 75 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/structure/item-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/structure/item-types.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/structure/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/structure/structure.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/timeline/custom-timeline.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/timeline/custom-timeline.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/timeline/timeline-views.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/timeline/timeline-views.md | 91 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/today-indicator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/today-indicator.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/tooltip.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/tooltip.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/usability/keyboard-navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/usability/keyboard-navigation.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/usability/mouse-navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/usability/mouse-navigation.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/working-with-data/adding-new-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/working-with-data/adding-new-items.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/working-with-data/binding-to-database.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/working-with-data/binding-to-database.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/working-with-data/data-binding-basics.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/working-with-data/data-binding-basics.md | 83 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/working-with-data/importing-xml-from-ms-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/working-with-data/importing-xml-from-ms-project.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/working-with-data/link-type-converter.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/working-with-data/link-type-converter.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ganttview/working-with-data/populating-with-data-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ganttview/working-with-data/populating-with-data-programmatically.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/bulletgraph/bulletgraph.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/bulletgraph/bulletgraph.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/bulletgraph/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/bulletgraph/design-time/smart-tag.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/bulletgraph/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/bulletgraph/getting-started.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/bulletgraph/properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/bulletgraph/properties.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gauges/bulletgraph/properties.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/bulletgraph/save-and-load-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/bulletgraph/save-and-load-layout.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/design-time/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/design-time/design-time.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gauges/lineargauge/design-time/design-time.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gauges/lineargauge/design-time/design-time.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/elements/working-with-bars.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/elements/working-with-bars.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/elements/working-with-labels.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/elements/working-with-labels.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/elements/working-with-line.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/elements/working-with-line.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/elements/working-with-needle-indicator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/elements/working-with-needle-indicator.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/elements/working-with-ticks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/elements/working-with-ticks.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/properties-and-events.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gauges/lineargauge/properties-and-events.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/lineargauge/save-and-load-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/lineargauge/save-and-load-layout.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/design-time/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/design-time/design-time.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gauges/radialgauge/design-time/design-time.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/getting-started.md | 91 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/properties-and-events.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gauges/radialgauge/properties-and-events.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/radialgauge.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/radialgauge.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/save-and-load-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/save-and-load-layout.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/understanding-gauge-elements/working-with-arcs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/understanding-gauge-elements/working-with-arcs.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/understanding-gauge-elements/working-with-labels.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/understanding-gauge-elements/working-with-labels.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/understanding-gauge-elements/working-with-needles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/understanding-gauge-elements/working-with-needles.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/understanding-gauge-elements/working-with-single-label.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/understanding-gauge-elements/working-with-single-label.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gauges/radialgauge/understanding-gauge-elements/working-with-ticks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gauges/radialgauge/understanding-gauge-elements/working-with-ticks.md | 69 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/design-time-support/property-builder.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/design-time-support/property-builder.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/design-time-support/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/design-time-support/smart-tag.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/end-user-capabilities/grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/end-user-capabilities/grouping.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/context-menus/conditional-custom-context-menus.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/context-menus/conditional-custom-context-menus.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/context-menus/custom-context-menus.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/context-menus/custom-context-menus.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/copy-paste-cut.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/copy-paste-cut.md | 108 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/drag-and-drop/radgridviewdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/drag-and-drop/radgridviewdragdropservice.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/drag-and-drop/rows-reordering-in-master-detail-hierarchy.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/drag-and-drop/rows-reordering-in-master-detail-hierarchy.md | 504 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/drag-and-drop/rows-reordering-in-self-reference-hierarchy.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/drag-and-drop/rows-reordering-in-self-reference-hierarchy.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/editing/editors/api.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/editing/editors/api.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/editing/editors/how-to/allow-end-users-to-add-items-to-dropdownlisteditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/editing/editors/how-to/allow-end-users-to-add-items-to-dropdownlisteditor.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/editing/editors/how-to/change-the-active-editor-depending-on-the-cell-value-type.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/editing/editors/how-to/change-the-active-editor-depending-on-the-cell-value-type.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/editing/insert-update-delete-records/validation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/editing/insert-update-delete-records/validation.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/exporting-data/export-to-pdf.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/exporting-data/export-to-pdf.md | 363 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/exporting-data/html-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/exporting-data/html-export.md | 157 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/exporting-data/spreadstream-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/exporting-data/spreadstream-export.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gridview/features/exporting-data/spreadstream-export.md | 102 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/exporting-data/troubleshooting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/exporting-data/troubleshooting.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/basic-grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/basic-grouping.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/custom-grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/custom-grouping.md | 159 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/events.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/formatting-group-header-row.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/formatting-group-header-row.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/group-aggregates.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/group-aggregates.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/groups-collection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/groups-collection.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/setting-groups-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/setting-groups-programmatically.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/sorting-group-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/sorting-group-rows.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/grouping/using-grouping-expressions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/grouping/using-grouping-expressions.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/paging/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/paging/overview.md | 124 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/paging/paging-panel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/paging/paging-panel.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/printing-support/events-and-customization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/printing-support/events-and-customization.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/printing-support/printing-hierarchical-grid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/printing-support/printing-hierarchical-grid.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/printing-support/printing-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/printing-support/printing-support.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/save-and-load-layout/advanced.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/save-and-load-layout/advanced.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/save-and-load-layout/load-layout-buttons-in-the-property-grid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/save-and-load-layout/load-layout-buttons-in-the-property-grid.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/save-and-load-layout/save-and-load-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/save-and-load-layout/save-and-load-layout.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/scrolling/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/scrolling/events.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/scrolling/scrolling-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/scrolling/scrolling-programmatically.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/selection/basic-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/selection/basic-selection.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/selection/multiple-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/selection/multiple-selection.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/selection/selecting-rows-and-cells-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/selection/selecting-rows-and-cells-programmatically.md | 95 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/sorting/basic-sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/sorting/basic-sorting.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/sorting/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/sorting/events.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/sorting/setting-sorting-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/sorting/setting-sorting-programmatically.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/sorting/sorting-expressions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/sorting/sorting-expressions.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/features/virtual-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/features/virtual-mode.md | 69 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/binding-the-grid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/binding-the-grid.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/columns.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/creating-hierarchical-grids.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/creating-hierarchical-grids.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/editing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/editing.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/element-hierarchy.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/element-hierarchy.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/key-features.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/key-features.md | 25 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 29 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 35 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 41 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 47 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 53 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 59 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 59 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 65 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 65 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 85 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 89 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 89 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 93 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 93 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/key-features.md | 96 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/keyboard-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/keyboard-support.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/logical-vs.-visual-grid-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/logical-vs.-visual-grid-structure.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/overview-of-radgridview-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/overview-of-radgridview-structure.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/rows.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/fundamentals/ui-virtualization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/fundamentals/ui-virtualization.md | 20 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/ui-virtualization.md | 31 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/ui-virtualization.md | 35 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/fundamentals/ui-virtualization.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/hierarchical-grid/binding-to-hierarchical-data.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/hierarchical-grid/binding-to-hierarchical-data.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/hierarchical-grid/how-to/accessing-child-templates.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/hierarchical-grid/how-to/accessing-child-templates.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/hierarchical-grid/how-to/expanding-all-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/hierarchical-grid/how-to/expanding-all-rows.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/localization/right-to-left-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/localization/right-to-left-support.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/bind-to-xml.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/bind-to-xml.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/bindable-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/bindable-types.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-a-collection-of-interfaces.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-a-collection-of-interfaces.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-array-and-arraylist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-array-and-arraylist.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-bindinglist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-bindinglist.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-datareader.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-datareader.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-generic-lists.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-generic-lists.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-observablecollection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-observablecollection.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/binding-to-sub-objects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/binding-to-sub-objects.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/reflecting-custom-object-changes-in-rgv.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/reflecting-custom-object-changes-in-rgv.md | 132 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/tips-when-binding-to-custom-collections.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/tips-when-binding-to-custom-collections.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/tutorial-binding-to-datatable-or-dataset.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/tutorial-binding-to-datatable-or-dataset.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/unbound-mode.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/populating-with-data/updating-the-database-with-ado.net.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/populating-with-data/updating-the-database-with-ado.net.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/structure.md | 20 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/structure.md | 22 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/gridview/structure.md | 24 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `controls/gridview/styling-and-appearance/alternating-row-color.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/styling-and-appearance/alternating-row-color.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/styling-and-appearance/four-ways-to-customize-radgridview-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/styling-and-appearance/four-ways-to-customize-radgridview-appearance.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/styling-and-appearance/html-like-text-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/styling-and-appearance/html-like-text-formatting.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/styling-and-appearance/images.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/styling-and-appearance/images.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/styling-and-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/styling-and-appearance/themes.md | 96 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/view-definitions/column-groups-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/view-definitions/column-groups-view.md | 83 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/gridview/view-definitions/column-groups-view.md | 94 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/view-definitions/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/view-definitions/overview.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/view-definitions/table-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/view-definitions/table-view.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/accessing-and-setting-the-currentcell.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/accessing-and-setting-the-currentcell.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/accessing-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/accessing-cells.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/cell-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/cell-types.md | 136 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/creating-custom-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/creating-custom-cells.md | 95 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/formating-examples/child-tabs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/formating-examples/child-tabs.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/formating-examples/command-cell.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/formating-examples/command-cell.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/formating-examples/group-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/formating-examples/group-rows.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/formating-examples/style-property.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/formating-examples/style-property.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/formatting-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/formatting-cells.md | 94 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/gridviewcellinfo.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/gridviewcellinfo.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/iterating-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/iterating-cells.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/painting-and-drawing-in-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/painting-and-drawing-in-cells.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/cells/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/cells/tooltips.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/calculated-column-expressions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/calculated-column-expressions.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewbrowsecolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewbrowsecolumn.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewcalculatorcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewcalculatorcolumn.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewcheckboxcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewcheckboxcolumn.md | 74 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewcolorcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewcolorcolumn.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewcommandcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewcommandcolumn.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewdateonlycolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewdateonlycolumn.md | 92 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewdatetimecolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewdatetimecolumn.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewdecimalcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewdecimalcolumn.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewhyperlinkcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewhyperlinkcolumn.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewimagecolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewimagecolumn.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewmaskboxcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewmaskboxcolumn.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewmulticomboboxcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewmulticomboboxcolumn.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewratingcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewratingcolumn.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewtextboxcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewtextboxcolumn.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewtimeonlycolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewtimeonlycolumn.md | 119 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/column-types/gridviewtimespancolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/column-types/gridviewtimespancolumn.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/columns.md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/converting-data-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/converting-data-types.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/data-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/data-formatting.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/generating-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/generating-columns.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/gridviewcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/gridviewcolumn.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/gridviewdatacolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/gridviewdatacolumn.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/reordering-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/reordering-columns.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/resizing-columns-programatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/resizing-columns-programatically.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/columns/working-with-columnchooser.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/columns/working-with-columnchooser.md | 125 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/conditional-formatting-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/conditional-formatting-rows.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/creating-custom-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/creating-custom-rows.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/drag-and-drop.md | 116 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/formatting-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/formatting-rows.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/gridviewrowinfo.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/gridviewrowinfo.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/iterating-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/iterating-rows.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/new-row.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/new-row.md | 136 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/painting-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/painting-rows.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/pinned-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/pinned-rows.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/removing-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/removing-rows.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/reordering-system-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/reordering-system-rows.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/resizing-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/resizing-rows.md | 124 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/row-behaviors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/row-behaviors.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/rows-vs-childrows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/rows-vs-childrows.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/search-row.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/search-row.md | 94 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/selected-rows-and-current-row.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/selected-rows-and-current-row.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/summary-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/summary-rows.md | 165 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/gridview/visual-elements/rows/tag-property.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/gridview/visual-elements/rows/tag-property.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/adustments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/adustments.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/image-editor/features/adustments.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/image-editor/features/adustments.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/image-editor/features/adustments.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/image-editor/features/adustments.md | 87 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/canvas-resize.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/canvas-resize.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/crop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/crop.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/drawing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/drawing.md | 83 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/effects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/effects.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/image-editor/features/effects.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/image-editor/features/effects.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/flip.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/flip.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/history.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/history.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/rotate.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/rotate.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/round-corners.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/round-corners.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/features/zoom.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/features/zoom.md | 18 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/localization.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/overview.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/properties-and-events.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/image-editor/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/image-editor/structure.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/customize-layout-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/customize-layout-mode.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/customizing-appearance.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/design-time.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/drag-and-drop/layoutcontroldragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/drag-and-drop/layoutcontroldragdropservice.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/items.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/layoutcontrol.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/layoutcontrol.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/load-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/load-layout.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/localization.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/layoutcontrol/properties-events-and-methods.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/layoutcontrol/properties-events-and-methods.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/customizing-appearance/accessing-and-customizing-elements.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/customizing-appearance/formatting-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/customizing-appearance/formatting-items.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/customizing-appearance/themes.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md | 19 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md | 34 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/drag-and-drop/detaillistviewdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/drag-and-drop/detaillistviewdragdropservice.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/drag-and-drop/drag-and-drop-from-another-control.md | 25 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/drag-and-drop-from-another-control.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/drag-and-drop-from-another-control.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/drag-and-drop/drag-and-drop-in-bound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/drag-and-drop/drag-and-drop-in-bound-mode.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md | 17 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md | 32 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md | 65 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md | 81 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/drag-and-drop/listviewdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/drag-and-drop/listviewdragdropservice.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/editors/custom-editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/editors/custom-editors.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/editors/default-editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/editors/default-editors.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/editors/editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/editors/editors.md | 27 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/editors/editors.md | 60 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/editors/editors.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/export-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/export-data/spread-export.md | 59 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/export-data/spread-export.md | 142 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/listview/features/features.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/features/features.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/features/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/features/filtering.md | 17 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/features/filtering.md | 54 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/features/filtering.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/features/grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/features/grouping.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/features/grouping.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/features/grouping.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/features/item-sizing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/features/item-sizing.md | 96 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/features/selection.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/features/sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/features/sorting.md | 19 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/features/sorting.md | 45 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/features/sorting.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/listview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/listview.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/populating-with-data/data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/populating-with-data/data-binding.md | 111 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/populating-with-data/unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/populating-with-data/unbound-mode.md | 25 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/populating-with-data/unbound-mode.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/populating-with-data/unbound-mode.md | 60 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/listview/populating-with-data/unbound-mode.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/properties-methods-events.md | 143 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/structure.md | 16 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/listview/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/listview/structure.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/listview/structure.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/touch-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/touch-support.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/working-with-design-time/adding-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/working-with-design-time/adding-columns.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/working-with-design-time/adding-groups.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/working-with-design-time/adding-groups.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/working-with-design-time/adding-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/working-with-design-time/adding-items.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/listview/working-with-design-time/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/listview/working-with-design-time/overview.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/drag-and-drop/ole-drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/drag-and-drop/ole-drag-and-drop.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/drag-and-drop/ole-drag-and-drop.md | 37 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/drag-and-drop/ole-drag-and-drop.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/layers/clusterization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/layers/clusterization.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/layers/colorization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/layers/colorization.md | 30 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/features/layers/colorization.md | 45 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/features/layers/colorization.md | 60 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/features/layers/colorization.md | 90 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/layers/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/layers/overview.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/legend.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/legend.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/minimap.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/minimap.md | 83 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/navigation-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/navigation-controls.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/features/navigation-controls.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/features/navigation-controls.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/features/navigation-controls.md | 93 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/pan-and-zoom.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/pan-and-zoom.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/features/scale-indicators.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/features/scale-indicators.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/features/scale-indicators.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/file-readers/esri-shapefile-reader.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/file-readers/esri-shapefile-reader.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/file-readers/kml-reader.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/file-readers/kml-reader.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/file-readers/kml-reader.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/how-to/adding-pins-and-drawing-regions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/how-to/adding-pins-and-drawing-regions.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/map-factory.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/map-factory.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/overview.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/properties-methods-events.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/bingrestmapprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/bingrestmapprovider.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/providers/bingmaps/bingrestmapprovider.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/providers/bingmaps/bingrestmapprovider.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/map/providers/bingmaps/bingrestmapprovider.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/elevation/bounds.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/elevation/bounds.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/elevation/elevation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/elevation/elevation.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/elevation/list.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/elevation/list.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/elevation/polyline.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/elevation/polyline.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/elevation/sealevel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/elevation/sealevel.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/imagery-sets.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/imagery-sets.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 41 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 48 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 55 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 62 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 69 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 76 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 83 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/imagery-sets.md | 87 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/route.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/route.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/search.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/search.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/search.md | 41 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/providers/bingmaps/search.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/tiles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/tiles.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/providers/bingmaps/truck-route.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/providers/bingmaps/truck-route.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/structure.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/map/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/map/tooltips.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/map/tooltips.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/menus/application-menu/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/application-menu/design-time.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/application-menu/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/application-menu/properties-methods-events.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/application-menu/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/application-menu/structure.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/contextmenu/assign-radcontextmenu-to-telerik-and-non-telerik-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/contextmenu/assign-radcontextmenu-to-telerik-and-non-telerik-controls.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/contextmenu/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/contextmenu/properties-methods-events.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/design-time/menu-designer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/design-time/menu-designer.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/design-time/smart-tag.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/getting-started.md | 151 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/menu-merge/mdi-list.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/menu-merge/mdi-list.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/menu-merge/menu-merge-in-mdi-applications.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/menu-merge/menu-merge-in-mdi-applications.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/menu-merge/menu-merge.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/menu-merge/menu-merge.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/overview.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/structure.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/styling-and-appearance/animation-effects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/styling-and-appearance/animation-effects.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/styling-and-appearance/menu-background--and-background-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/styling-and-appearance/menu-background--and-background-image.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/styling-and-appearance/menu-item-images-.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/styling-and-appearance/menu-item-images-.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/styling-and-appearance/menu-orientation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/styling-and-appearance/menu-orientation.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/styling-and-appearance/menu-orientation.md | 34 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/styling-and-appearance/menu-orientation.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/styling-and-appearance/menu-orientation.md | 58 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/styling-and-appearance/menu-orientation.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md | 51 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md | 62 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md | 73 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/working-with-radmenu-items/multi-line-menu-item-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/working-with-radmenu-items/multi-line-menu-item-text.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md | 43 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md | 54 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/menus/menu/working-with-radmenu-items/radmenuitem.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/menus/menu/working-with-radmenu-items/radmenuitem.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/design-time.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/drop-down-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/drop-down-properties.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/multicolumncombobox/drop-down-properties.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/multicolumncombobox/drop-down-properties.md | 55 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/multicolumncombobox/features/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/features/filtering.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/how-to/multiple-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/how-to/multiple-selection.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/populating-with-data/databinding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/populating-with-data/databinding.md | 81 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/populating-with-data/unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/populating-with-data/unbound-mode.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/properties-methods-events.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/structure.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/multicolumncombobox/styling-and-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/multicolumncombobox/styling-and-appearance/themes.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/navigationview/display-modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/navigationview/display-modes.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/navigationview/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/navigationview/overview.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/navigationview/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/navigationview/properties-methods-events.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/navigationview/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/navigationview/structure.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/navigationview/ui-automation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/navigationview/ui-automation.md | 29 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/navigationview/ui-automation.md | 80 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/notifyicon/features/balloon-notifications.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/notifyicon/features/balloon-notifications.md | 31 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/notifyicon/features/balloon-notifications.md | 48 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/notifyicon/features/popup.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/notifyicon/features/popup.md | 24 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/notifyicon/features/popup.md | 95 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/notifyicon/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/notifyicon/properties-methods-events.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/notifyicon/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/notifyicon/structure.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/context-menu.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/design-time.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/options-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/options-dialog.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/overview.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/peek-window.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/peek-window.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/properties-methods-events.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/structure.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/officenavigationbar/structure.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/officenavigationbar/view-modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/officenavigationbar/view-modes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/architecture.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/architecture.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/backstageview/customizing-backstage-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/backstageview/customizing-backstage-view.md | 54 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/backstageview/customizing-backstage-view.md | 69 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/backstageview/customizing-backstage-view.md | 86 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/backstageview/customizing-backstage-view.md | 133 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/backstageview/customizing-backstage-view.md | 143 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/drag-and-drop/radpageviewdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/drag-and-drop/radpageviewdragdropservice.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/explorerbarview/customizing-the-explorerbarview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/explorerbarview/customizing-the-explorerbarview.md | 27 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/explorerbarview/customizing-the-explorerbarview.md | 55 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/explorerbarview/customizing-the-explorerbarview.md | 82 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/explorerbarview/customizing-the-explorerbarview.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/explorerbarview/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/explorerbarview/overview.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/explorerbarview/using-the-keyboard.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/explorerbarview/using-the-keyboard.md | 16 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/how-to/add-contextMenu-to-radpageviewpage-tabs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/how-to/add-contextMenu-to-radpageviewpage-tabs.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/how-to/programatically-adding-pages.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/how-to/programatically-adding-pages.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/how-to/programatically-adding-pages.md | 34 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pageview/how-to/programatically-adding-pages.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/how-to/subscribing-to-radpageviewpage-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/how-to/subscribing-to-radpageviewpage-events.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/localization/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/localization/localization.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/localization/right-to-left-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/localization/right-to-left-support.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/navigation-view/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/navigation-view/overview.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/outlookview/outlook-element-properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/outlookview/outlook-element-properties-methods-events.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/outlookview/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/outlookview/overview.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/outlookview/using-the-overflow-grip.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/outlookview/using-the-overflow-grip.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/outlookview/using-the-overflow-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/outlookview/using-the-overflow-menu.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/overview.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/peek-window.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/peek-window.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/properties-methods-events.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stackview/customizing-the-selection-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stackview/customizing-the-selection-mode.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stackview/customizing-the-stack-position.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stackview/customizing-the-stack-position.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stackview/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stackview/overview.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stripview/fitting-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stripview/fitting-items.md | 83 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stripview/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stripview/getting-started.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stripview/new-item.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stripview/new-item.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stripview/scrolling-and-overflow-(strip-buttons).md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stripview/scrolling-and-overflow-(strip-buttons).md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/stripview/strip-element-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/stripview/strip-element-properties.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pageview/upgrading-to-radpageview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pageview/upgrading-to-radpageview.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/collapsiblepanel/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/collapsiblepanel/customizing-appearance/themes.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/collapsiblepanel/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/collapsiblepanel/design-time.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/collapsiblepanel/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/collapsiblepanel/getting-started.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/collapsiblepanel/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/collapsiblepanel/properties-methods-events.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/collapsiblepanel/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/collapsiblepanel/structure.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/collapsiblepanel/working-with-radcollapsiblepanel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/collapsiblepanel/working-with-radcollapsiblepanel.md | 121 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/groupbox/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/groupbox/customizing-appearance/accessing-and-customizing-elements.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/groupbox/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/groupbox/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/groupbox/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/groupbox/design-time.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/groupbox/header-styling-options.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/groupbox/header-styling-options.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/groupbox/properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/groupbox/properties.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/groupbox/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/groupbox/structure.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/label/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/label/customizing-appearance/themes.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/label/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/label/design-time.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/label/html-like-text-formatting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/label/html-like-text-formatting.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/label/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/label/overview.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/label/properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/label/properties.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/label/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/label/structure.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/customizing-appearance/creating-a-radpanel-with-gradient-background.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/customizing-appearance/creating-a-radpanel-with-gradient-background.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/customizing-appearance/creating-a-radpanel-with-rounded-corners.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/customizing-appearance/creating-a-radpanel-with-rounded-corners.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/customizing-appearance/themes.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/design-time.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/getting-started.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/overview.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/properties.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panels-and-labels/panel/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panels-and-labels/panel/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/custom-tiles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/custom-tiles.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/customizing-appearance/accessing-and-customizing-elements.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/customizing-appearance/themes.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/design-time.md | 97 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/drad-and-drop/drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/drad-and-drop/drag-and-drop.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/drad-and-drop/tiledragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/drad-and-drop/tiledragdropservice.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/live-tile-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/live-tile-editor.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/overview.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/scrolling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/scrolling.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/structure.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/tiles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/tiles.md | 19 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/panorama/tiles.md | 48 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/panorama/tiles.md | 72 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/panorama/tiles.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/panorama/touch-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/panorama/touch-support.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/customize-and-extensibility/customize-pdf-rendering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/customize-and-extensibility/customize-pdf-rendering.md | 87 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/design-time.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/navigation.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/printing-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/printing-support.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/text/text-position.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/text/text-position.md | 87 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/text/text-search.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/text/text-search.md | 92 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/text/text-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/text/text-selection.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pdfviewer/features/text/text-selection.md | 62 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pdfviewer/features/text/text-selection.md | 107 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/thumbnails.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/thumbnails.md | 22 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pdfviewer/features/thumbnails.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pdfviewer/features/thumbnails.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/features/unsupported-features.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/features/unsupported-features.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/how-to/handle-rendering-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/how-to/handle-rendering-events.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/keyboard-and-mouse-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/keyboard-and-mouse-support.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/localization.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/overview.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/pdfviewernavigator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/pdfviewernavigator.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/properties-methods-events.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/pdfviewer/properties-methods-events.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/pdfviewer/properties-methods-events.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/structure/logical-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/structure/logical-structure.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/structure/visual-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/structure/visual-structure.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/troubleshooting-common-problems.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/troubleshooting-common-problems.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/ui/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/ui/context-menu.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/ui/document-modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/ui/document-modes.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pdfviewer/ui/viewer-modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pdfviewer/ui/viewer-modes.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/picturebox/features/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/picturebox/features/context-menu.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/picturebox/features/edit.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/picturebox/features/edit.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/picturebox/features/pan-and-zoom.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/picturebox/features/pan-and-zoom.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/picturebox/features/working-with-panels.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/picturebox/features/working-with-panels.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/binding-with-radchartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/binding-with-radchartview.md | 17 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/binding-with-radchartview.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/binding-with-radchartview.md | 77 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/binding-with-radchartview.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/calculated-fields.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/calculated-fields.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/calculated-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/calculated-items.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/calculated-items.md | 43 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/calculated-items.md | 54 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/calculated-items.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/context-menu.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/custom-aggregation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/custom-aggregation.md | 28 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/custom-aggregation.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/custom-aggregation.md | 52 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/custom-aggregation.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/custom-group-comparer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/custom-group-comparer.md | 38 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/custom-group-comparer.md | 87 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/custom-group-comparer.md | 109 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/custom-group-comparer.md | 263 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/customizing-appearance/formatting-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/customizing-appearance/formatting-appearance.md | 25 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/customizing-appearance/formatting-appearance.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/customizing-appearance/formatting-appearance.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/customizing-appearance/formatting-appearance.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/design-time/property-builder.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/design-time/property-builder.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/design-time/smart-tag.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/dialogs/custom-dialogs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/dialogs/custom-dialogs.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/dialogs/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/dialogs/overview.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/drag-and-drop/pivotfieldlistdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/drag-and-drop/pivotfieldlistdragdropservice.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/drag-and-drop/pivotgriddragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/drag-and-drop/pivotgriddragdropservice.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/drilldown.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/drilldown.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/end-user-functionalities.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/end-user-functionalities.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/expand-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/expand-behavior.md | 38 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/expand-behavior.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/expand-behavior.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/exporting-data/export-to-excel-via-excelml-format.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/exporting-data/export-to-excel-via-excelml-format.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/exporting-data/export-to-pdf.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/exporting-data/export-to-pdf.md | 28 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/exporting-data/export-to-pdf.md | 82 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/exporting-data/export-to-pdf.md | 104 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/exporting-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/exporting-data/spread-export.md | 51 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/exporting-data/spread-export.md | 130 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/exporting-data/spread-export.md | 145 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/filtering/group-filters.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/filtering/group-filters.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/filtering/report-filters.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/filtering/report-filters.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/filtering/report-filters.md | 42 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/filtering/report-filters.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/layout-settings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/layout-settings.md | 25 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/layout-settings.md | 40 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/layout-settings.md | 68 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/layout-settings.md | 75 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/localization/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/localization/localization.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md | 24 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md | 53 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md | 104 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/pivot-field-list/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/pivot-field-list/overview.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/binding-to-icustomtypeprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/binding-to-icustomtypeprovider.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/design-time-data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/design-time-data-binding.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md | 52 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md | 81 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md | 92 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/using-the-datasource-property.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/using-the-datasource-property.md | 17 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-datasource-property.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/pivotgrid/populating-with-data/using-the-datasource-property.md | 35 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-datasource-property.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md | 40 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md | 103 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md | 114 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md | 121 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md | 22 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md | 43 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md | 110 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md | 117 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md | 83 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md | 94 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/printing-support/events-and-customization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/printing-support/events-and-customization.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/printing-support/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/printing-support/overview.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/printing-support/pivotgridprintstyle.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/printing-support/pivotgridprintstyle.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/save-and-load-layout/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/save-and-load-layout/overview.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/save-and-load-layout/serialize-adomddataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/save-and-load-layout/serialize-adomddataprovider.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/save-and-load-layout/serialize-custom-aggregates.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/save-and-load-layout/serialize-custom-aggregates.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/save-and-load-layout/serialize-xmladdataprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/save-and-load-layout/serialize-xmladdataprovider.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/sorting.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/pivotgrid/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/pivotgrid/structure.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/attributes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/attributes.md | 165 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/custom-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/custom-items.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/customizing-appearance/customization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/customizing-appearance/customization.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/design-time.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/api.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/api.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/customizing-editor-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/customizing-editor-behavior.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/propertygrid/editors/customizing-editor-behavior.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/events.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/handling-editors'-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/handling-editors'-events.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/editors/handling-editors'-events.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/editors/handling-editors'-events.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/overview.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/using-custom-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/using-custom-editor.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/editors/validation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/editors/validation.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/export-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/export-data/spread-export.md | 58 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/export-data/spread-export.md | 142 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/propertygrid/features/custom-grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/custom-grouping.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/features/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/filtering.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/features/grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/grouping.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/features/help-bar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/help-bar.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/features/kinetic-scrolling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/kinetic-scrolling.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/features/sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/sorting.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/features/toolbar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/features/toolbar.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/how-to/custom-keyboard-handling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/how-to/custom-keyboard-handling.md | 41 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/how-to/custom-keyboard-handling.md | 54 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/how-to/custom-keyboard-handling.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/item-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/item-elements.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/keyboard-navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/keyboard-navigation.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/localization.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/overview.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/populating-with-data/binding-to-multiple-objects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/populating-with-data/binding-to-multiple-objects.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/populating-with-data/radpropertystore-adding-custom-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/populating-with-data/radpropertystore-adding-custom-properties.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/structure.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/touch-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/touch-support.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/propertygrid/type-converters.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/propertygrid/type-converters.md | 28 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/type-converters.md | 47 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/type-converters.md | 71 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/type-converters.md | 95 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/propertygrid/type-converters.md | 115 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/rangeselector/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/rangeselector/design-time.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/rangeselector/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/rangeselector/getting-started.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/rangeselector/integration-with-radchartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/rangeselector/integration-with-radchartview.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/rangeselector/integration-with-radchartview.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/rangeselector/integration-with-radchartview.md | 92 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/rangeselector/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/rangeselector/properties-and-events.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/rangeselector/properties-and-events.md | 109 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/rangeselector/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/rangeselector/structure.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ribbonbar/backstage-view/working-with-backstage-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/backstage-view/working-with-backstage-view.md | 17 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/backstage-view/working-with-backstage-view.md | 60 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/ribbonbar/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/customizing-appearance/themes.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ribbonbar/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/design-time.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md | 77 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md | 169 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md | 192 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md | 221 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md | 41 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md | 69 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md | 25 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md | 45 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md | 70 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md | 90 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md | 47 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md | 56 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md | 67 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md | 80 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/ribbonbar/simplified-mode/customizing-simplified-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/simplified-mode/customizing-simplified-layout.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/ribbonbar/simplified-mode/simplified-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/ribbonbar/simplified-mode/simplified-mode.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/annotations/manipulating-annotations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/annotations/manipulating-annotations.md | 101 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/annotations/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/annotations/overview.md | 22 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/document-elements/annotations/overview.md | 58 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/document-elements/annotations/overview.md | 60 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/document-elements/annotations/overview.md | 62 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/document-elements/annotations/overview.md | 66 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/document-elements/annotations/overview.md | 68 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/document-elements/annotations/overview.md | 104 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/break.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/break.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/document-elements/break.md | 37 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/document-elements/break.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/inline-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/inline-image.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/paragraph.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/paragraph.md | 70 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/raddocument.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/raddocument.md | 94 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/section.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/section.md | 126 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/document-elements/span.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/document-elements/span.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/events.md | 124 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/clipboard-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/clipboard-support.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/comments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/comments.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/content-controls/content-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/content-controls/content-controls.md | 139 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/content-controls/working-with-content-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/content-controls/working-with-content-controls.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/custom-fonts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/custom-fonts.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/document-protection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/document-protection.md | 123 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/fields-and-document-variables/fields.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/fields-and-document-variables/fields.md | 109 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/headers-and-footers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/headers-and-footers.md | 114 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/history.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/history.md | 69 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md | 32 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md | 70 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md | 98 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md | 107 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/mentions/mentions-custom-provider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/mentions/mentions-custom-provider.md | 20 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/mentions/mentions-custom-provider.md | 72 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/mentions/mentions-custom-provider.md | 87 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/features/mentions/mentions-overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/mentions/mentions-overview.md | 69 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/merge-documents/append.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/merge-documents/append.md | 43 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/merge-documents/append.md | 57 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/features/merge-documents/merge.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/merge-documents/merge.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/merge-documents/merge.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/features/paste-options.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/paste-options.md | 73 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/paste-options.md | 84 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/features/positioning.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/positioning.md | 87 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/positioning.md | 119 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/positioning.md | 148 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/positioning.md | 155 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/raddocumenteditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/raddocumenteditor.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/read-only-ranges.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/read-only-ranges.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/repeat-table-header-row.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/repeat-table-header-row.md | 81 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/search.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/search.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/section-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/section-columns.md | 122 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/selection.md | 29 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/selection.md | 138 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/selection.md | 155 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/features/selection.md | 183 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/features/watermark.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/features/watermark.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/getting-started/formatting-api.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/getting-started/formatting-api.md | 32 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/getting-started/formatting-api.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/getting-started/layout-modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/getting-started/layout-modes.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/how-to/drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/how-to/drag-and-drop.md | 22 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/how-to/drag-and-drop.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/how-to/drag-and-drop.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ime-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ime-support.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/import-export/docx/docxformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/docx/docxformatprovider.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/docx/docxformatprovider.md | 40 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/import-export/html/htmlformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/html/htmlformatprovider.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/html/htmlformatprovider.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/import-export/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/overview.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/import-export/plain-text/txtformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/plain-text/txtformatprovider.md | 24 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/plain-text/txtformatprovider.md | 48 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/import-export/rtf/rtfformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/rtf/rtfformatprovider.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/rtf/rtfformatprovider.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/import-export/rtf/settings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/rtf/settings.md | 27 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/rtf/settings.md | 37 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/import-export/xaml/xaml-verification.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/xaml/xaml-verification.md | 20 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/xaml/xaml-verification.md | 31 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/import-export/xaml/xamlformatprovider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/import-export/xaml/xamlformatprovider.md | 27 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/import-export/xaml/xamlformatprovider.md | 38 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/richtexteditor/keyboard-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/keyboard-support.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/overview.md | 50 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 52 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 58 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 60 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 62 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 64 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 66 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 68 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 70 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 72 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 74 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 76 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 78 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 80 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 82 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 84 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 86 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 88 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 90 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 92 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 94 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 96 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 98 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/richtexteditor/overview.md | 100 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `controls/richtexteditor/printing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/printing.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/applying-styles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/applying-styles.md | 85 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md | 46 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md | 68 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/editing-images.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/editing-images.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/how-to/custom-ribbon.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/how-to/custom-ribbon.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/ribbon-ui.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/ribbon-ui.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-for-applying-rich-text-formatting/section-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-for-applying-rich-text-formatting/section-columns.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/ui-virtualization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/ui-virtualization.md | 17 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/richtexteditor/upgrading-to-radrichtexteditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/richtexteditor/upgrading-to-radrichtexteditor.md | 71 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appearance/appointment-styles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appearance/appointment-styles.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appearance/formatting-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appearance/formatting-appointments.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appearance/formatting-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appearance/formatting-cells.md | 49 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appearance/formatting-cells.md | 84 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appearance/formatting-cells.md | 95 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md | 46 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md | 63 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md | 80 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md | 90 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appearance/themes-and-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appearance/themes-and-appearance.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/adding-tooltips-to-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/adding-tooltips-to-appointments.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/custom-appointment-element.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/custom-appointment-element.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/recurrence-rule-walkthrough.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/recurrence-rule-walkthrough.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/working-with-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/working-with-appointments.md | 29 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appointments-and-dialogs/working-with-appointments.md | 55 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appointments-and-dialogs/working-with-appointments.md | 151 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md | 68 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/appointments-and-dialogs/working-with-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/appointments-and-dialogs/working-with-resources.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/context-menu/customize-the-contextmenu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/context-menu/customize-the-contextmenu.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/binding-to-access-db(tips-and-tricks).md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/binding-to-access-db(tips-and-tricks).md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/binding-to-business-objects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/binding-to-business-objects.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/data-binding/binding-to-business-objects.md | 46 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/data-binding/binding-to-business-objects.md | 68 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/data-binding/binding-to-business-objects.md | 108 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/data-binding/binding-to-business-objects.md | 134 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/binding-to-custom-fields.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/binding-to-custom-fields.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md | 15 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md | 15 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md | 17 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/codeless-data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/codeless-data-binding.md | 130 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/data-binding-walkthrough.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/data-binding-walkthrough.md | 120 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/introduction.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/introduction.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/sample-database.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/sample-database.md | 203 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/scheduler-mapping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/scheduler-mapping.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/setting-appointment-and-resource-relations.md | 25 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/data-binding/setting-appointment-and-resource-relations.md | 48 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/data-binding/setting-appointment-and-resource-relations.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/using-a-data-provider.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/using-a-data-provider.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/using-datasource-property.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/using-datasource-property.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/working-with-exceptions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/working-with-exceptions.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/data-binding/working-with-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/data-binding/working-with-resources.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/design-time/smart-tag.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/dialogs/editappointmentdialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/dialogs/editappointmentdialog.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/scheduler/dialogs/editappointmentdialog.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/dialogs/radschedulerdialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/dialogs/radschedulerdialog.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/drag-and-drop/appointmentdraggingbehavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/drag-and-drop/appointmentdraggingbehavior.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md | 24 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md | 58 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/drag-and-drop/drag-and-drop-using-raddragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/drag-and-drop/drag-and-drop-using-raddragdropservice.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/end-user-functionality/adding-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/end-user-functionality/adding-appointments.md | 95 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/end-user-functionality/copy-paste-cut.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/end-user-functionality/copy-paste-cut.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/end-user-functionality/editing-appointments-.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/end-user-functionality/editing-appointments-.md | 45 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/end-user-functionality/editing-appointments-.md | 56 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/end-user-functionality/editing-appointments-.md | 89 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/end-user-functionality/editing-appointments-.md | 112 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/end-user-functionality/print-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/end-user-functionality/print-support.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/end-user-functionality/resizing-moving-and-deleting-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/end-user-functionality/resizing-moving-and-deleting-appointments.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/end-user-functionality/scheduler-navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/end-user-functionality/scheduler-navigation.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/appointment-factory.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/appointment-factory.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/appointment-resizing-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/appointment-resizing-behavior.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/appointment-title-formatter.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/appointment-title-formatter.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/input-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/input-behavior.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/scheduler-element-provider-.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/scheduler-element-provider-.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/scheduler-ruler.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/scheduler-ruler.md | 99 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/fundamentals/scheduler-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/fundamentals/scheduler-selection.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/holidays.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/holidays.md | 42 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/holidays.md | 71 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/scheduler/how-to/loading-data-for-selected-day-only.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/how-to/loading-data-for-selected-day-only.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/importing-and-exporting-appointments/export-to-a-custom-file.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/importing-and-exporting-appointments/export-to-a-custom-file.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/importing-and-exporting-appointments/export-to-icalendar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/importing-and-exporting-appointments/export-to-icalendar.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/importing-and-exporting-appointments/import-from-icalendar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/importing-and-exporting-appointments/import-from-icalendar.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/localization/localizing-dialog-strings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/localization/localizing-dialog-strings.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/localization/localizing-scheduler-navigator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/localization/localizing-scheduler-navigator.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/localization/right-to-left-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/localization/right-to-left-support.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/localization/translating-strings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/localization/translating-strings.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/overview.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/print-support/events-and-customization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/print-support/events-and-customization.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/print-support/print-support-overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/print-support/print-support-overview.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/print-support/schedulerprintstyles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/print-support/schedulerprintstyles.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/print-support/schedulerprintstyles.md | 84 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/print-support/schedulerprintstyles.md | 108 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/print-support/schedulerprintstyles.md | 128 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/print-support/schedulerprintstyles.md | 158 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/print-support/schedulerprintstyles.md | 182 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/print-support/schedulerprintstyles.md | 189 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/reminders/load-reminders.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/reminders/load-reminders.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/reminders/localizing-reminder-strings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/reminders/localizing-reminder-strings.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/reminders/radreminder.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/reminders/radreminder.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/reminders/radschedulerreminder.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/reminders/radschedulerreminder.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/scheduler-navigator/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/scheduler-navigator/getting-started.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/scheduler-navigator/navigation-step.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/scheduler-navigator/navigation-step.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/scheduler-navigator/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/scheduler-navigator/overview.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/scheduler-navigator/search.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/scheduler-navigator/search.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/agenda-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/agenda-view.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/common-visual-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/common-visual-properties.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/day-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/day-view.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 38 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 61 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 72 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 97 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 108 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 131 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 142 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 153 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 167 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 191 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 202 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 213 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 224 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 235 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/day-view.md | 245 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/exact-time-rendering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/exact-time-rendering.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/grouping-by-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/grouping-by-resources.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/grouping-by-resources.md | 46 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/grouping-by-resources.md | 57 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/grouping-by-resources.md | 93 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/grouping-by-resources.md | 118 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/grouping-by-resources.md | 149 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/month-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/month-view.md | 31 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 44 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 55 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 75 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 91 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 100 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 111 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 123 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 132 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 146 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 157 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 168 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 179 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 190 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 204 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 218 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/month-view.md | 228 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/multiday-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/multiday-view.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/overview-and-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/overview-and-structure.md | 90 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/scheduler-cell-containers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/scheduler-cell-containers.md | 21 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/scheduler-cell-containers.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/scheduler-cell-containers.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/scheduler-cell-containers.md | 61 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/scheduler-cell-containers.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/time-zones.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/time-zones.md | 152 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/timeline-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/timeline-view.md | 29 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 42 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 65 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 96 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 107 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 118 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 129 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 140 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/timeline-view.md | 152 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/views-walkthrough.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/views-walkthrough.md | 81 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/week-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/week-view.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/week-view.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/week-view.md | 62 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/week-view.md | 69 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/work-week-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/work-week-view.md | 26 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/work-week-view.md | 39 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/scheduler/views/work-week-view.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/scheduler/views/working-with-views.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/scheduler/views/working-with-views.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/shortcuts/assigning-global-radshortcuts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/shortcuts/assigning-global-radshortcuts.md | 156 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/shortcuts/getting-started-(radbuttons).md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/shortcuts/getting-started-(radbuttons).md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/shortcuts/getting-started-(radmenuitems).md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/shortcuts/getting-started-(radmenuitems).md | 117 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/shortcuts/properties-methods.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/shortcuts/properties-methods.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/smartpastebutton/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/smartpastebutton/getting-started.md | 12 | Heading Structure | The standard article has no authored H1. | Add one descriptive H1 that identifies the article topic. |

### `controls/sparkline/features/annotations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/sparkline/features/annotations.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/sparkline/features/annotations.md | 64 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/sparkline/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/sparkline/overview.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/sparkline/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/sparkline/tooltips.md | 16 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/sparkline/tooltips.md | 32 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/speechtotextbutton/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/speechtotextbutton/getting-started.md | 24 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/speechtotextbutton/getting-started.md | 77 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/spellchecker/dictionaries.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spellchecker/dictionaries.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/spellchecker/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spellchecker/overview.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/spellchecker/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spellchecker/properties-methods-events.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/spellchecker/spell-check-as-you-type.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spellchecker/spell-check-as-you-type.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/spellchecker/spellchecking-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spellchecker/spellchecking-radgridview.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/flyout/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/flyout/overview.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/overlay/customize-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/overlay/customize-appearance.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/overlay/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/overlay/getting-started.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/overlay/how-to/custom-overlay-screen.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/overlay/how-to/custom-overlay-screen.md | 160 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/overlay/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/overlay/overview.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/splashscreen/custom-splash.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/splashscreen/custom-splash.md | 356 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/splashscreen/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/splashscreen/getting-started.md | 150 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/splashscreen/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/splashscreen/overview.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/splashscreen/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/splashscreen/properties-methods-events.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splashscreens/splashscreen/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splashscreens/splashscreen/structure.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/building-a-layout-of-radsplitcontainers-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/building-a-layout-of-radsplitcontainers-programmatically.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/building-advanced-layouts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/building-advanced-layouts.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/customizing-appearance/accessing-and-customizing-elements.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/customizing-appearance/themes.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/design-time.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/getting-started.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/properties.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/splitcontainer/properties.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/splitcontainer/properties.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/splitter-buttons.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/splitter-buttons.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/splitcontainer/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/splitcontainer/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/spreadsheet/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spreadsheet/events.md | 38 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/events.md | 127 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/events.md | 140 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/spreadsheet/features/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spreadsheet/features/context-menu.md | 16 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `controls/spreadsheet/features/freeze-panes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spreadsheet/features/freeze-panes.md | 30 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/features/freeze-panes.md | 59 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/spreadsheet/features/ui-working-with-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spreadsheet/features/ui-working-with-selection.md | 96 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/features/ui-working-with-selection.md | 115 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/features/ui-working-with-selection.md | 186 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/features/ui-working-with-selection.md | 278 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/features/ui-working-with-selection.md | 295 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md | 20 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/spreadsheet/model.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/spreadsheet/model.md | 14 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `controls/syntax-editor/features/caret.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/caret.md | 16 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/caret.md | 34 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/caret.md | 45 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/syntax-editor/features/find-and-replace.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/find-and-replace.md | 70 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/syntax-editor/features/fonts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/fonts.md | 16 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/fonts.md | 31 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/syntax-editor/features/intelliprompts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/intelliprompts.md | 20 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/intelliprompts.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/intelliprompts.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/syntax-editor/features/layers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/layers.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/syntax-editor/features/margins.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/margins.md | 101 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/syntax-editor/features/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/selection.md | 20 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/selection.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/selection.md | 54 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/selection.md | 74 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/syntax-editor/features/taggers/custom-taggers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/taggers/custom-taggers.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/syntax-editor/features/zooming.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/features/zooming.md | 16 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/zooming.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/features/zooming.md | 48 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/syntax-editor/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/getting-started.md | 42 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/getting-started.md | 66 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/getting-started.md | 79 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/syntax-editor/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/syntax-editor/structure.md | 16 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/syntax-editor/structure.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/syntax-editor/structure.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/task-board/task-board-adding-task-cards.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-adding-task-cards.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-board/task-board-adding-user-and-tasks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-adding-user-and-tasks.md | 16 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/task-board/task-board-adding-user-and-tasks.md | 35 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/task-board/task-board-design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-design-time.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-board/task-board-drag-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-drag-drop.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-board/task-board-getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-getting-started.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-board/task-board-properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-properties-methods-events.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-board/task-board-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-structure.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-board/task-board-tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-board/task-board-tooltips.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-dialog/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-dialog/overview.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-dialog/task-dialog-element-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-dialog/task-dialog-element-types.md | 47 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/task-dialog/task-dialog-element-types.md | 60 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/task-dialog/task-dialog-element-types.md | 73 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/task-dialog/task-dialog-element-types.md | 86 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/task-dialog/task-dialog-element-types.md | 99 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/task-dialog/task-dialog-element-types.md | 106 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-dialog/task-dialog-icons.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-dialog/task-dialog-icons.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-dialog/task-dialog-localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-dialog/task-dialog-localization.md | 108 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/task-dialog/task-dialog-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/task-dialog/task-dialog-structure.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/taskbar-button/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/taskbar-button/design-time.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/taskbar-button/features/thumbnail-buttons.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/taskbar-button/features/thumbnail-buttons.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/taskbar-button/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/taskbar-button/overview.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/taskbar-button/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/taskbar-button/properties-methods-events.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/taskbar-button/properties-methods-events.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/taskbar-button/properties-methods-events.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/taskbar-button/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/taskbar-button/structure.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/taskbar-button/taskbar-manager.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/taskbar-button/taskbar-manager.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/toast-notification/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/toast-notification/design-time.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/toast-notification/notification-templates.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/toast-notification/notification-templates.md | 279 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/toast-notification/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/toast-notification/overview.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/toast-notification/register.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/toast-notification/register.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/progressbar/control-element-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/progressbar/control-element-structure.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/progressbar/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/progressbar/customizing-appearance/accessing-and-customizing-elements.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/progressbar/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/progressbar/customizing-appearance/themes.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/progressbar/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/progressbar/overview.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/progressbar/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/progressbar/properties-methods-events.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/progressbar/properties-methods-events.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/progressbar/properties-methods-events.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/rating/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/rating/design-time.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/rating/properties-and-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/rating/properties-and-events.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/rating/properties-and-events.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/rating/properties-and-events.md | 155 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/rating/rating.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/rating/rating.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/rating/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/rating/structure.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/scrollbar/control-element-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/scrollbar/control-element-structure.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/scrollbar/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/scrollbar/customizing-appearance/accessing-and-customizing-elements.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/scrollbar/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/scrollbar/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/scrollbar/programming-radscrollbars.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/scrollbar/programming-radscrollbars.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/scrollbar/programming-radscrollbars.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/scrollbar/programming-radscrollbars.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/stepprogressbar/customizing-appearance/custom-indicator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/stepprogressbar/customizing-appearance/custom-indicator.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/stepprogressbar/customizing-appearance/customize-step-item.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/stepprogressbar/customizing-appearance/customize-step-item.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/stepprogressbar/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/stepprogressbar/design-time.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/stepprogressbar/features/tooltip.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/stepprogressbar/features/tooltip.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/stepprogressbar/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/stepprogressbar/overview.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/stepprogressbar/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/stepprogressbar/structure.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/control-element-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/control-element-structure.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/customizing-appearance/accessing-and-customizing-elements.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/customizing-appearance/customization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/customizing-appearance/customization.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/customizing-appearance/themes.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/design-time.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/modes.md | 74 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/properties-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/properties-events.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/trackbar/properties-events.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/trackbar/trackbar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/trackbar/trackbar.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/trackbar/trackbar.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/customizing-appearance/accessing-and-customizing-elements.md | 97 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/design-time.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/indicator-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/indicator-elements.md | 93 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/properties-methods-events.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/waitingbar/properties-methods-events.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/track-and-status-controls/waitingbar/properties-methods-events.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/structure.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/waiting-styles.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/waiting-styles.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/track-and-status-controls/waitingbar/waitingbar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/track-and-status-controls/waitingbar/waitingbar.md | 51 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/colorizers.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/colorizers.md | 111 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/customizing-appearance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/customizing-appearance.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/data-binding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/data-binding.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/design-time.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/features/grouping.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/features/grouping.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/features/legend.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/features/legend.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/features/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/features/tooltips.md | 81 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/layout-strategies.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/layout-strategies.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/overview.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/properties-methods-events.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/structure.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treemap/unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treemap/unbound-mode.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/breadcrumb.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/breadcrumb.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/context-menus/custom-context-menus.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/context-menus/custom-context-menus.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/context-menus/default-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/context-menus/default-context-menu.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/context-menus/modifying-the-default-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/context-menus/modifying-the-default-context-menu.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/treeview/context-menus/modifying-the-default-context-menu.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/binding-to-database-data.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/binding-to-database-data.md | 67 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/binding-to-object-relational-data.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/binding-to-object-relational-data.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/binding-to-self-referencing-data.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/binding-to-self-referencing-data.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/binding-to-xml-data.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/binding-to-xml-data.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/databinding-checkboxes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/databinding-checkboxes.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/deserialize-to-xml.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/deserialize-to-xml.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/load-on-demand-with-crud-operations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/load-on-demand-with-crud-operations.md | 77 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/load-on-demand.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/load-on-demand.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/overview.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/performance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/performance.md | 18 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/data-binding/togglestateconverter.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/data-binding/togglestateconverter.md | 13 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | controls/treeview/data-binding/togglestateconverter.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/design-time/property-builder.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/design-time/property-builder.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/design-time/smart-tag.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/drag-and-drop/cancel-a-drag-and-drop-operation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/drag-and-drop/cancel-a-drag-and-drop-operation.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/drag-and-drop/drag-and-drop-in-bound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/drag-and-drop/drag-and-drop-in-bound-mode.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/drag-and-drop/enabling-drag-and-drop.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/drag-and-drop/enabling-drag-and-drop.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/drag-and-drop/modify-the-dragdropservice-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/drag-and-drop/modify-the-dragdropservice-behavior.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/drag-and-drop/treeviewdragdropservice.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/drag-and-drop/treeviewdragdropservice.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/editing/custom-editors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/editing/custom-editors.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/editing/editing-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/editing/editing-nodes.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/export-data/spread-export.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/export-data/spread-export.md | 59 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/treeview/export-data/spread-export.md | 150 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/treeview/how-to/assign-radscreentip-to-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/how-to/assign-radscreentip-to-nodes.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/how-to/keep-radtreeview-states-on-reset.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/how-to/keep-radtreeview-states-on-reset.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/localization/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/localization/localization.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/localization/right-to-left-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/localization/right-to-left-support.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/properties-methods-events.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/treeview/properties-methods-events.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/treeview/properties-methods-events.md | 106 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/structure.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/treeview/structure.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/styling-and-appearance/editing-themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/styling-and-appearance/editing-themes.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/styling-and-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/styling-and-appearance/themes.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/styling-and-appearance/tree-lines-and-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/styling-and-appearance/tree-lines-and-rows.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/touch-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/touch-support.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/treeview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/treeview.md | 97 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/ui-automation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/ui-automation.md | 47 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/treeview/ui-automation.md | 79 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/treeview/usability/keyboard-navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/usability/keyboard-navigation.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/usability/kinetic-scrolling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/usability/kinetic-scrolling.md | 18 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/adding-and-removing-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/adding-and-removing-nodes.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/bring-a-node-into-view.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/bring-a-node-into-view.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/custom-filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/custom-filtering.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/custom-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/custom-nodes.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/custom-sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/custom-sorting.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/events.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/filtering-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/filtering-nodes.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/finding-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/finding-nodes.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/formatting-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/formatting-nodes.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/reordering-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/reordering-nodes.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/scrolling-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/scrolling-nodes.md | 34 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/treeview/working-with-nodes/scrolling-nodes.md | 85 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/treeview/working-with-nodes/scrolling-nodes.md | 105 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `controls/treeview/working-with-nodes/selecting-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/selecting-nodes.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/sorting-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/sorting-nodes.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/treenode-text-value.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/treenode-text-value.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/treeview/working-with-nodes/using-checkboxes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/treeview/working-with-nodes/using-checkboxes.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/validation-provider/customizing-error-indication.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/validation-provider/customizing-error-indication.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/validation-provider/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/validation-provider/design-time.md | 110 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/validation-provider/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/validation-provider/overview.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/validation-provider/supported-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/validation-provider/supported-controls.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/validation-provider/validation-rules.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/validation-provider/validation-rules.md | 121 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/customizing-appearance/accessing-and-customizing-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/customizing-appearance/accessing-and-customizing-elements.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/customizing-appearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/customizing-appearance/themes.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/default-layouts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/default-layouts.md | 18 | Heading Structure | Heading level jumps to H3, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/virtual-keyboard/default-layouts.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/virtual-keyboard/default-layouts.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/logical-keyboard-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/logical-keyboard-layout.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/overview.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/properties-methods-events.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtual-keyboard/properties-methods-events.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtual-keyboard/properties-methods-events.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtual-keyboard/properties-methods-events.md | 63 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/structure.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtual-keyboard/virtual-keyboard-form.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtual-keyboard/virtual-keyboard-form.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtual-keyboard/virtual-keyboard-form.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/customizing-apearance/themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/customizing-apearance/themes.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/design-time/smart-tag.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/design-time/smart-tag.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/editing-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/editing-behavior.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/filtering.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/keyboard-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/keyboard-support.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/resizing-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/resizing-columns.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/resizing-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/resizing-rows.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/scrolling-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/scrolling-support.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/end-user-capabilities/sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/end-user-capabilities/sorting.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/busy-indicators.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/busy-indicators.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/context-menu/context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/context-menu/context-menu.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/context-menu/custom-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/context-menu/custom-context-menu.md | 20 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/virtualgrid/features/context-menu/custom-context-menu.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtualgrid/features/context-menu/custom-context-menu.md | 40 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/virtualgrid/features/context-menu/custom-context-menu.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/context-menu/modifying-the-default-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/context-menu/modifying-the-default-context-menu.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtualgrid/features/context-menu/modifying-the-default-context-menu.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/copy-paste-cut.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/copy-paste-cut.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/editing/api.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/editing/api.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/editing/changing-default-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/editing/changing-default-editor.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/editing/changing-editors-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/editing/changing-editors-properties.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/editing/events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/editing/events.md | 16 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/virtualgrid/features/editing/events.md | 20 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/virtualgrid/features/editing/events.md | 23 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | controls/virtualgrid/features/editing/events.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/filtering/filtering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/filtering/filtering.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/filtering/setting-filters-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/filtering/setting-filters-programmatically.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtualgrid/features/filtering/setting-filters-programmatically.md | 36 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/virtualgrid/features/filtering/setting-filters-programmatically.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtualgrid/features/filtering/setting-filters-programmatically.md | 50 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | controls/virtualgrid/features/filtering/setting-filters-programmatically.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/paging/paging-overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/paging/paging-overview.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/paging/paging-panel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/paging/paging-panel.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/save-and-load-layout/advanced.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/save-and-load-layout/advanced.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/save-and-load-layout/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/save-and-load-layout/overview.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/scrolling.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/scrolling.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/selection/multi-select.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/selection/multi-select.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/selection/selecting-progrmmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/selection/selecting-progrmmatically.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/selection/selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/selection/selection.md | 62 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/features/sorting/setting-sorting-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/features/sorting/setting-sorting-programmatically.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/fundamentals/element-hierarchy.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/fundamentals/element-hierarchy.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/fundamentals/key-features.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/fundamentals/key-features.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/fundamentals/row-types.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/fundamentals/row-types.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/fundamentals/ui-virtualization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/fundamentals/ui-virtualization.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/how-to/summary-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/how-to/summary-rows.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/localization/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/localization/localization.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/localization/right-to-left-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/localization/right-to-left-support.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/overview.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/cells/creating-custom-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/cells/creating-custom-cells.md | 85 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/cells/formatting-data-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/cells/formatting-data-cells.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/cells/formatting-system-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/cells/formatting-system-cells.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/cells/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/cells/tooltips.md | 17 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtualgrid/visual-elements/cells/tooltips.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | controls/virtualgrid/visual-elements/cells/tooltips.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/columns/pining-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/columns/pining-columns.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/columns/resizing-columns-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/columns/resizing-columns-programmatically.md | 99 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/rows/alternating-row-colors.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/rows/alternating-row-colors.md | 24 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/rows/formatting-data-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/rows/formatting-data-rows.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/rows/formatting-system-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/rows/formatting-system-rows.md | 34 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/rows/pinned-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/rows/pinned-rows.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/rows/resizing-rows-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/rows/resizing-rows-programmatically.md | 83 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/visual-elements/rows/system-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/visual-elements/rows/system-rows.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/working-with-data/handle-add-delete-update-of-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/working-with-data/handle-add-delete-update-of-rows.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/virtualgrid/working-with-data/virtualgrid-populating-with-data.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/virtualgrid/working-with-data/virtualgrid-populating-with-data.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/design-time.md | 61 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/localization.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/modes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/modes.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/pages.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/pages.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/properties-methods-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/properties-methods-events.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/right-to-left-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/right-to-left-support.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `controls/wizard/structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | controls/wizard/structure.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `getting-started/first-steps.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | getting-started/first-steps.md | 29 | Code Block Accessibility | Multiple fenced code blocks do not identify their language. | Add an appropriate language identifier to each code fence. |
| High | getting-started/first-steps.md | 35 | Code Block Accessibility | Multiple fenced code blocks do not identify their language. | Add an appropriate language identifier to each code fence. |

### `installation-and-upgrades/updating-assemblies-in-a-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | installation-and-upgrades/updating-assemblies-in-a-project.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `knowledge-base/access-editor-in-spreadsheet.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/access-editor-in-spreadsheet.md | 149 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/add-background-image-to-plot-area-in-chartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/add-background-image-to-plot-area-in-chartview.md | 160 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/allow-end-users-to-add-items-to-multicolumncombobox-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/allow-end-users-to-add-items-to-multicolumncombobox-editor.md | 217 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/apply-glyphs-at-design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/apply-glyphs-at-design-time.md | 37 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/attach-telerik-source-code-to-your-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/attach-telerik-source-code-to-your-project.md | 102 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/auto-fit-richtexteditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/auto-fit-richtexteditor.md | 95 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/autocomplete-items-with-checkbox-in-checkeddropdownlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/autocomplete-items-with-checkbox-in-checkeddropdownlist.md | 202 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/autocompletelist-with-dynamic-datasource.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/autocompletelist-with-dynamic-datasource.md | 360 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/bing-map-not-loading.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/bing-map-not-loading.md | 71 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/build-custom-assemblies-for-net-core.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/build-custom-assemblies-for-net-core.md | 96 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/button-text-shadow.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/button-text-shadow.md | 12 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/callout-for-stepprogresbar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/callout-for-stepprogresbar.md | 73 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/cascading-comboboxes-in-property-grid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/cascading-comboboxes-in-property-grid.md | 215 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/cascading-comboboxes-in-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/cascading-comboboxes-in-radgridview.md | 340 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/change-checkbox-size.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/change-checkbox-size.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/change-checkbox-size.md | 63 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/changing-the-text-color-of-a-disabled-radtextbox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/changing-the-text-color-of-a-disabled-radtextbox.md | 144 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/chartview-3d-bar-chart.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/chartview-3d-bar-chart.md | 33 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/chartview-moving-line.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/chartview-moving-line.md | 126 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/chartview-summary-labels-stacked-bars.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/chartview-summary-labels-stacked-bars.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/chartview-summary-labels-stacked-bars.md | 454 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/chat-preserve-user-text-message-history.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/chat-preserve-user-text-message-history.md | 28 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/check-all-functionality-in-group-rows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/check-all-functionality-in-group-rows.md | 260 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/check-all-functionality-in-listview-groups.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/check-all-functionality-in-listview-groups.md | 32 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/checked-dropdownlist-add-tokens.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/checked-dropdownlist-add-tokens.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/checked-dropdownlist-add-tokens.md | 77 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/checked-dropdownlist-contextmenu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/checked-dropdownlist-contextmenu.md | 94 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/checked-multicolumncombobox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/checked-multicolumncombobox.md | 237 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/circular-progressbar.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/circular-progressbar.md | 224 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/clickable-screentips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/clickable-screentips.md | 127 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/clickonce-application-is-broken.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/clickonce-application-is-broken.md | 66 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/close-application-after-closing-the-last-tabbedform.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/close-application-after-closing-the-last-tabbedform.md | 169 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/conditional-intelliprompts-in-syntaxeditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/conditional-intelliprompts-in-syntaxeditor.md | 139 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/convert-checkboxcolumn-to-toggleswitchcolumn.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/convert-checkboxcolumn-to-toggleswitchcolumn.md | 184 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/copy-image-in-grid-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/copy-image-in-grid-cells.md | 160 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/create-business-cards-with-cardview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/create-business-cards-with-cardview.md | 589 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/create-custom-items-with-conditional-elements-in-radlistcontrol.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/create-custom-items-with-conditional-elements-in-radlistcontrol.md | 240 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/create-map-image-silently.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/create-map-image-silently.md | 376 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/create-pop-up-user-control-for-row-editing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/create-pop-up-user-control-for-row-editing.md | 34 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/custom-buttons-in-imageeditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-buttons-in-imageeditor.md | 114 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-grid-cells-with-stacked-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-grid-cells-with-stacked-elements.md | 206 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-grid-data-row-element.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-grid-data-row-element.md | 201 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-gridview-cells-conditional-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-gridview-cells-conditional-elements.md | 245 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-gridview-cells-with-input-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-gridview-cells-with-input-elements.md | 363 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-gridview-cells-with-several-elements.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-gridview-cells-with-several-elements.md | 236 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-header-cell-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-header-cell-in-gridview.md | 278 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-items-in-checkeddropdownlist-autocomplete-popup.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-items-in-checkeddropdownlist-autocomplete-popup.md | 265 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/custom-resizing-behavior-in-radscheduler.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/custom-resizing-behavior-in-radscheduler.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/custom-resizing-behavior-in-radscheduler.md | 138 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/customize-a-theme.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/customize-a-theme.md | 77 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/customize-highlight-style-for-found-results-in-syntaxeditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/customize-highlight-style-for-found-results-in-syntaxeditor.md | 75 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/customize-rating-column.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/customize-rating-column.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/customize-richtexteditor-context-menu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/customize-richtexteditor-context-menu.md | 104 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/customize-the-color-for-svg-images.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/customize-the-color-for-svg-images.md | 116 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/dashboard-demo.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/dashboard-demo.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/dashboard-demo.md | 34 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/dataentry-auto-size.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/dataentry-auto-size.md | 180 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/dataentry-customize-editor-controls-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/dataentry-customize-editor-controls-layout.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/dataentry-nullable-fields.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/dataentry-nullable-fields.md | 197 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/dataentry-properties-order.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/dataentry-properties-order.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/dataentry-properties-order.md | 274 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/deal-with-slow-webcam-preview-on-start.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/deal-with-slow-webcam-preview-on-start.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/deal-with-slow-webcam-preview-on-start.md | 123 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/designer-not-loading.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/designer-not-loading.md | 40 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/detect-mouse-input-for-a-word-in-syntax-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/detect-mouse-input-for-a-word-in-syntax-editor.md | 185 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/diagram-custom-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/diagram-custom-items.md | 101 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/diagram-restricting-drag-direction.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/diagram-restricting-drag-direction.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/diagram-restricting-drag-direction.md | 200 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/display-and-edit-html-text-in-grid-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/display-and-edit-html-text-in-grid-cells.md | 233 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/display-images-in-gridview-cells-from-url.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/display-images-in-gridview-cells-from-url.md | 140 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/display-text-for-invalid-values-in-grid-combobox-column.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/display-text-for-invalid-values-in-grid-combobox-column.md | 189 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md | 115 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/double-buffered-table-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/double-buffered-table-layout.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/drag-and-drop-from-ganttview-to-scheduler.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/drag-and-drop-from-ganttview-to-scheduler.md | 231 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/drag-and-drop-functionality-from-radgridview-to-radtreeview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/drag-and-drop-functionality-from-radgridview-to-radtreeview.md | 351 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/drag-file-names-from-grid-drop-to-widows-explorer001.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/drag-file-names-from-grid-drop-to-widows-explorer001.md | 82 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/drag-node-from-ms-treeview-drop-to-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/drag-node-from-ms-treeview-drop-to-radgridview.md | 187 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/draw-rectangles-over-pdf-document.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/draw-rectangles-over-pdf-document.md | 27 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/drop-down-list-embedded-label.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/drop-down-list-embedded-label.md | 61 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/dropdownlist-style-indicating-focus.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/dropdownlist-style-indicating-focus.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/dropdownlist-style-indicating-focus.md | 115 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/edit-multi-page-tiff-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/edit-multi-page-tiff-image.md | 175 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/embed-richtexteditor-in-grid-cells.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/embed-richtexteditor-in-grid-cells.md | 498 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/export-each-grid-group-in-a-single-pdf-page.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/export-each-grid-group-in-a-single-pdf-page.md | 118 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/extract-words-added-to-dictionary.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/extract-words-added-to-dictionary.md | 107 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/filter-by-checkbox-in-virtualgrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/filter-by-checkbox-in-virtualgrid.md | 382 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/filter-commandcolumn-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/filter-commandcolumn-in-gridview.md | 346 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/filter-grid-by-custom-type.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/filter-grid-by-custom-type.md | 494 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/filter-gridviewcomboboxcolumn-by-display-member.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/filter-gridviewcomboboxcolumn-by-display-member.md | 108 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/filter-on-enter-virtualgrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/filter-on-enter-virtualgrid.md | 75 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/filtering-indicators-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/filtering-indicators-in-gridview.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/fit-to-width-pdf-and-locate-clicked-position.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/fit-to-width-pdf-and-locate-clicked-position.md | 99 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/flagenumeditor-in-radpropertygrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/flagenumeditor-in-radpropertygrid.md | 156 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/format-chat-time-separator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/format-chat-time-separator.md | 61 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/free-text-in-combobox-column.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/free-text-in-combobox-column.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/freeze-pane-in-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/freeze-pane-in-radgridview.md | 281 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/ganttview-custom-input-behavior.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/ganttview-custom-input-behavior.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/ganttview-custom-input-behavior.md | 362 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/ganttview-zoom-to-date-range.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/ganttview-zoom-to-date-range.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/ganttview-zoom-to-date-range.md | 79 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/get-all-filtered-rows-in-gridview-with-paging.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/get-all-filtered-rows-in-gridview-with-paging.md | 59 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/get-clicked-image-coordinates.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/get-clicked-image-coordinates.md | 85 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/grid-cells-in-sorted-columns-jumps-to-a-new-position-after-editing-its-value.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/grid-cells-in-sorted-columns-jumps-to-a-new-position-after-editing-its-value.md | 38 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/grid-filter-row-in-multicolumncobobox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/grid-filter-row-in-multicolumncobobox.md | 264 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/grid-format-group-key.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/grid-format-group-key.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/grid-hierarchy-with-multiple-tabs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/grid-hierarchy-with-multiple-tabs.md | 410 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/grid-searching-in-formated-decimal-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/grid-searching-in-formated-decimal-columns.md | 467 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-applying-formatting-cellelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-applying-formatting-cellelement.md | 100 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-auto-size-rows-to-fill.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-auto-size-rows-to-fill.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/gridview-cells-rows-formatting-priority.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-cells-rows-formatting-priority.md | 44 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-comboboxcolumn-charactercasing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-comboboxcolumn-charactercasing.md | 54 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-databinding-tutorial-sql-server.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-databinding-tutorial-sql-server.md | 74 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-datetimecolumn-unix-format.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-datetimecolumn-unix-format.md | 198 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-deferred-search-on-tab.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-deferred-search-on-tab.md | 90 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-drag-cell-and-copy.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-drag-cell-and-copy.md | 236 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-drag-drop-bound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-drag-drop-bound-mode.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/gridview-drag-drop-bound-mode.md | 273 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-filter-command-column.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-filter-command-column.md | 188 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-improve-down-arrow-key-performance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-improve-down-arrow-key-performance.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | knowledge-base/gridview-improve-down-arrow-key-performance.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | knowledge-base/gridview-improve-down-arrow-key-performance.md | 109 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-keyboard-navigation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-keyboard-navigation.md | 139 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-pasted-event.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-pasted-event.md | 196 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-permanenteditor-in-filter-cell.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-permanenteditor-in-filter-cell.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/gridview-permanenteditor-in-filter-cell.md | 398 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-print-header-on-first-page.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-print-header-on-first-page.md | 174 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-save-layout-with-custom-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-save-layout-with-custom-columns.md | 75 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-save-load-layout-with-custom-summary-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-save-load-layout-with-custom-summary-items.md | 32 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/gridview-with-visible-summary-cells-in-a-collapsed-group.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/gridview-with-visible-summary-cells-in-a-collapsed-group.md | 26 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/group-rows-with-summary-values.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/group-rows-with-summary-values.md | 541 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/hdpi-tips-and-tricks.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/hdpi-tips-and-tricks.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/host-blazor-in-winforms.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/host-blazor-in-winforms.md | 332 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/how-to-change-gauges-value-with-the-mouse-keyboard.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/how-to-change-gauges-value-with-the-mouse-keyboard.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/how-to-change-gauges-value-with-the-mouse-keyboard.md | 174 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/how-to-check-incorrect-words-in-radtextbox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/how-to-check-incorrect-words-in-radtextbox.md | 70 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/how-to-play-video-files.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/how-to-play-video-files.md | 34 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | knowledge-base/how-to-play-video-files.md | 44 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | knowledge-base/how-to-play-video-files.md | 68 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | knowledge-base/how-to-play-video-files.md | 70 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/how-to-plot-error-bars-on-scatter-plot.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/how-to-plot-error-bars-on-scatter-plot.md | 446 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/how-to-upgrade-a-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/how-to-upgrade-a-project.md | 80 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/improve-dock-performance-when-loading-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/improve-dock-performance-when-loading-layout.md | 49 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/improve-filedialogs-performance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/improve-filedialogs-performance.md | 108 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/improve-gridview-sorting.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/improve-gridview-sorting.md | 54 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/indicate-errors-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/indicate-errors-in-gridview.md | 312 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/indicate-special-days-in-radganttview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/indicate-special-days-in-radganttview.md | 405 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/indicate-textboxeditor-in-grid-filter-cell.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/indicate-textboxeditor-in-grid-filter-cell.md | 196 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/indicate-the-editor-type-in-radgridview-columns.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/indicate-the-editor-type-in-radgridview-columns.md | 221 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/insert-glyphs-easily.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/insert-glyphs-easily.md | 39 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/invalid-formatetc-structure-when-copying-data-from-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/invalid-formatetc-structure-when-copying-data-from-radgridview.md | 124 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/kb-installation-cannot-load-licensing-assembly.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/kb-installation-cannot-load-licensing-assembly.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/kb-installation-missing-license-vs-2019.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/kb-installation-missing-license-vs-2019.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/kb-installation-missing-licensing-assembly.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/kb-installation-missing-licensing-assembly.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/keep-states-on-reset.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/keep-states-on-reset.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/make-your-telerik-winforms-enabled-applications-start-instantly.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/make-your-telerik-winforms-enabled-applications-start-instantly.md | 185 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/map-clicked-pin-vs-cluster.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/map-clicked-pin-vs-cluster.md | 166 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/map-lasso-selection.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/map-lasso-selection.md | 285 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/map-pin-with-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/map-pin-with-text.md | 179 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/map-point-with-radius.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/map-point-with-radius.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/map-point-with-radius.md | 199 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/masked-edit-box-play-sound.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/masked-edit-box-play-sound.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/masked-edit-box-play-sound.md | 94 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/measure-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/measure-text.md | 34 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/missing-new-rows-in-filtered-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/missing-new-rows-in-filtered-gridview.md | 30 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/mixing-bestfit-and-fill-mode-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/mixing-bestfit-and-fill-mode-in-gridview.md | 119 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/modify-themes-programmatically.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/modify-themes-programmatically.md | 141 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/move-current-row-with-arrow-keys-in-edit-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/move-current-row-with-arrow-keys-in-edit-mode.md | 90 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/move-listview-items-between-groups-in-unbound-mode.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/move-listview-items-between-groups-in-unbound-mode.md | 233 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/multiple-display-members-in-dropdownlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/multiple-display-members-in-dropdownlist.md | 140 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/multiple-highlight-rules.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/multiple-highlight-rules.md | 247 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/negative-area-chart.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/negative-area-chart.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/netsdk1141-error.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/netsdk1141-error.md | 68 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/notification-badge-for-nodes-in-treeview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/notification-badge-for-nodes-in-treeview.md | 217 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/notification-button.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/notification-button.md | 185 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/open-drop-down-editor-in-radgridview-with-a-single-click.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/open-drop-down-editor-in-radgridview-with-a-single-click.md | 58 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/outlook-like-multiple-categories-scheduler-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/outlook-like-multiple-categories-scheduler-appointments.md | 39 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/pan-and-zoom-image-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/pan-and-zoom-image-control.md | 30 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/path-indicators-in-syntax-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/path-indicators-in-syntax-editor.md | 152 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/pdfviewer-silent-print.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/pdfviewer-silent-print.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/pdfviewer-silent-print.md | 101 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/performance-boots-with-virtual-radmulticolumncombobox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/performance-boots-with-virtual-radmulticolumncombobox.md | 33 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | knowledge-base/performance-boots-with-virtual-radmulticolumncombobox.md | 266 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/pivotgrid-changing-default-aggregate-function.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/pivotgrid-changing-default-aggregate-function.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/pivotgrid-changing-default-aggregate-function.md | 121 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/popup-editor-dynamic-dropdown-size.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/popup-editor-dynamic-dropdown-size.md | 108 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/print-document-to-a-specific-printer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/print-document-to-a-specific-printer.md | 98 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/propertygrid-bestfit-options.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/propertygrid-bestfit-options.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/propertygrid-dropdown-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/propertygrid-dropdown-editor.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/propertygrid-dropdown-editor.md | 194 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/radchartview-restrict-zoom-interval.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/radchartview-restrict-zoom-interval.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/radchartview-restrict-zoom-interval.md | 184 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/radmap-export-to-an-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/radmap-export-to-an-image.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/radmap-pins-with-an-image.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/radmap-pins-with-an-image.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/radmap-pins-with-an-image.md | 333 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/radscheduler-with-multiple-resources.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/radscheduler-with-multiple-resources.md | 32 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/radspellchecker-initial-delay.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/radspellchecker-initial-delay.md | 38 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/resource-columns-in-radscheduler.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/resource-columns-in-radscheduler.md | 335 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/restore-row-values-when-row-validation-fails.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/restore-row-values-when-row-validation-fails.md | 197 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/richtext-ribbon-ui-custom-save.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/richtext-ribbon-ui-custom-save.md | 90 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/richtexteditor-adjust-height.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/richtexteditor-adjust-height.md | 89 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/rotate-chart-annotation-label.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/rotate-chart-annotation-label.md | 499 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/rotate-labels-for-barseries.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/rotate-labels-for-barseries.md | 319 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/rounded-border.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/rounded-border.md | 166 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/row-autosizing-while-editing.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/row-autosizing-while-editing.md | 242 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/row-details-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/row-details-in-gridview.md | 30 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/rte-highligh-search-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/rte-highligh-search-text.md | 104 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/save-custom-backgrounds-in-scheduler-when-exporting-to-ical.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/save-custom-backgrounds-in-scheduler-when-exporting-to-ical.md | 603 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/save-document-in-syntax-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/save-document-in-syntax-editor.md | 94 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-copy-paste-custom-fields.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-copy-paste-custom-fields.md | 140 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-custom-time-scale.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-custom-time-scale.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/scheduler-custom-time-scale.md | 119 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-databinding-tutorial.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-databinding-tutorial.md | 323 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-delete-appointments.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-delete-appointments.md | 41 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-minutely-recurrence-pattern.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-minutely-recurrence-pattern.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/scheduler-minutely-recurrence-pattern.md | 224 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-month-view-comparer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-month-view-comparer.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/scheduler-month-view-comparer.md | 107 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-month-week-scroll.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-month-week-scroll.md | 88 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-multiple-resource-in-edit-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-multiple-resource-in-edit-dialog.md | 661 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-update-header-text-monthview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-update-header-text-monthview.md | 98 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scheduler-update-timeline-header-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scheduler-update-timeline-header-text.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/scheduler-update-timeline-header-text.md | 135 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scientific-notation-leading-zeros-spineditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scientific-notation-leading-zeros-spineditor.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/screentip-above-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/screentip-above-controls.md | 81 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/scroll-target-grid-while-dragging-a-row.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/scroll-target-grid-while-dragging-a-row.md | 520 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/search-box.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/search-box.md | 181 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/select-clicked-word-in-syntax-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/select-clicked-word-in-syntax-editor.md | 64 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/send-receive-messages-between-windows-forms-applications.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/send-receive-messages-between-windows-forms-applications.md | 147 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/server-side-auto-complete-for-raddropdownlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/server-side-auto-complete-for-raddropdownlist.md | 90 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | knowledge-base/server-side-auto-complete-for-raddropdownlist.md | 394 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/server-side-paging-in-virtualgrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/server-side-paging-in-virtualgrid.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/server-side-paging-in-virtualgrid.md | 314 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | knowledge-base/server-side-paging-in-virtualgrid.md | 316 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/set-default-filter-operators-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/set-default-filter-operators-in-gridview.md | 156 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/shadow-effect-for-barseries-in-chartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/shadow-effect-for-barseries-in-chartview.md | 217 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/share-localization-providers-and-dictionaries.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/share-localization-providers-and-dictionaries.md | 48 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/shopping-cart-lsitview-custom-item.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/shopping-cart-lsitview-custom-item.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/shopping-cart-lsitview-custom-item.md | 42 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/show-tooltip-for-grid-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/show-tooltip-for-grid-editor.md | 121 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/show-tooltips-for-clipped-cell-text.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/show-tooltips-for-clipped-cell-text.md | 156 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/show-tooltips-when-cell-text-does-not-fit.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/show-tooltips-when-cell-text-does-not-fit.md | 90 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/silent-documents-printing-in-richtexteditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/silent-documents-printing-in-richtexteditor.md | 114 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/simulate-ekg-line-in-chartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/simulate-ekg-line-in-chartview.md | 157 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/simulate-treelist-load-on-demand.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/simulate-treelist-load-on-demand.md | 35 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/skip-decimal-rounding-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/skip-decimal-rounding-in-gridview.md | 301 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/snapping-per-day-in-radganttview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/snapping-per-day-in-radganttview.md | 16 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/snapping-per-day-in-radganttview.md | 373 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/specify-displayed-enum-values-in-propertygrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/specify-displayed-enum-values-in-propertygrid.md | 296 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/starts-with-search-in-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/starts-with-search-in-radgridview.md | 117 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/svg-image-column-in-gridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/svg-image-column-in-gridview.md | 177 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/syntaxeditor-json-array-folding.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/syntaxeditor-json-array-folding.md | 12 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/tabbedform-keep-show-new-tab-button.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/tabbedform-keep-show-new-tab-button.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/tabbedform-keep-show-new-tab-button.md | 94 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/task-board-edit-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/task-board-edit-dialog.md | 33 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/textboxcontrol-autocomplete-contains.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/textboxcontrol-autocomplete-contains.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/thread-has-exit-with-code.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/thread-has-exit-with-code.md | 33 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/tips-and-tricks-to-optimize-performance-in-chartview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/tips-and-tricks-to-optimize-performance-in-chartview.md | 37 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/toast-notification-in-net-core.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/toast-notification-in-net-core.md | 72 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/toolbox-issues-with-net-core.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/toolbox-issues-with-net-core.md | 44 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/tooltip-on-disabled-element.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/tooltip-on-disabled-element.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/translate-month-names-in-pivotgrid.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/translate-month-names-in-pivotgrid.md | 43 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/tree-view-handle-keypress.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/tree-view-handle-keypress.md | 14 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |

### `knowledge-base/treeview-different-custom-nodes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/treeview-different-custom-nodes.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/treeview-different-custom-nodes.md | 37 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/treeview-dragdrop-dock-syntaxeditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/treeview-dragdrop-dock-syntaxeditor.md | 347 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/treeview-find-node-by-value.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/treeview-find-node-by-value.md | 15 | Table Accessibility | HTML data table has no header cells. | Use appropriate <th> cells for row or column headers and associate them with the data cells. |
| High | knowledge-base/treeview-find-node-by-value.md | 171 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/truck-system-with-custom-items-in-ganttview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/truck-system-with-custom-items-in-ganttview.md | 29 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/tutorial-custom-theme-component.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/tutorial-custom-theme-component.md | 104 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/unblock-resx-files-downloaded-in-source-code.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/unblock-resx-files-downloaded-in-source-code.md | 49 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/underline-text-in-syntax-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/underline-text-in-syntax-editor.md | 187 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/update-splash-screen-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/update-splash-screen-control.md | 195 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/use-a-custom-jpxdecode-filter-with-radpdfviewer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/use-a-custom-jpxdecode-filter-with-radpdfviewer.md | 156 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/use-custom-comparer-to-speed-up-the-sorting-in-radgridview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/use-custom-comparer-to-speed-up-the-sorting-in-radgridview.md | 196 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `knowledge-base/use-popup-editor-as-gridview-editor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/use-popup-editor-as-gridview-editor.md | 242 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/user-defined-values-in-dropdownlist.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/user-defined-values-in-dropdownlist.md | 139 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/user-defined-values-in-multicolumncombobox.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/user-defined-values-in-multicolumncombobox.md | 207 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/vsb-layout-problems.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/vsb-layout-problems.md | 31 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/wfac010-warning-remove-high-dpi-settings.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/wfac010-warning-remove-high-dpi-settings.md | 53 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/working-hours-in-ganttview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/working-hours-in-ganttview.md | 659 | Heading Structure | KB content contains an authored H1, contrary to the repository heading convention. | Remove the redundant H1 or convert it to the appropriate H2/H3 level without disrupting the hierarchy. |

### `knowledge-base/wrapping-a-net-user-control-as-an-activex.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | knowledge-base/wrapping-a-net-user-control-as-an-activex.md | 141 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/adding-a-custom-theme-as-a-file.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/adding-a-custom-theme-as-a-file.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/adding-a-custom-theme-as-a-resource.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/adding-a-custom-theme-as-a-resource.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/creating-a-theme-component.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/creating-a-theme-component.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/theme-tutorials/customizing-material-theme.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/theme-tutorials/customizing-material-theme.md | 88 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/themes-style.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/themes-style.md | 165 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/touch-themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/touch-themes.md | 53 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/using-a-default-theme-for-the-entire-application.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/using-a-default-theme-for-the-entire-application.md | 68 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `styling-and-appearance/using-custom-themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | styling-and-appearance/using-custom-themes.md | 127 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/animations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/animations.md | 33 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/animations.md | 75 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/animations.md | 114 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/animations.md | 165 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/baseprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/baseprimitive.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/choosing-an-ancestor-class.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/choosing-an-ancestor-class.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/class-hierarchy-overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/class-hierarchy-overview.md | 36 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/layoutpanel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/layoutpanel.md | 17 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/radcomponent-radcomponentelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/radcomponent-radcomponentelement.md | 17 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/radcontrol.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/radcontrol.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/radelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/radelement.md | 137 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/raditem.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/raditem.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/radobject.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/radobject.md | 429 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/radproperty.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/radproperty.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/radpropertymetadata.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/radpropertymetadata.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/class-hierarchy/visualelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/class-hierarchy/visualelement.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/custom-fonts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/custom-fonts.md | 82 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/dependency-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/dependency-properties.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/elements/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/elements/overview.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/elements/radradiobuttonelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/elements/radradiobuttonelement.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/elements/radtrackbarelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/elements/radtrackbarelement.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/events/clr-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/events/clr-events.md | 48 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/events/routed-events.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/events/routed-events.md | 20 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/export-renderers/pdfexportrenderer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/export-renderers/pdfexportrenderer.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/export-renderers/spreadexportrenderer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/export-renderers/spreadexportrenderer.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md | 22 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md | 73 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md | 124 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/focus-border-and-ripple-animations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/focus-border-and-ripple-animations.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/getting-started/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/getting-started/getting-started.md | 46 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/getting-started/getting-started.md | 172 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/getting-started/getting-started.md | 273 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/glyphs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/glyphs.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | telerik-presentation-framework/glyphs.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | telerik-presentation-framework/glyphs.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | telerik-presentation-framework/glyphs.md | 149 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/handling-user-input.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/handling-user-input.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/inherit-themes-from-radcontrols-derivatives.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/inherit-themes-from-radcontrols-derivatives.md | 91 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/custom-layouts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/custom-layouts.md | 98 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/element-offset-calculations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/element-offset-calculations.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/layout-activation.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/layout-activation.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/layout-logic.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/layout-logic.md | 89 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/layout-overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/layout-overview.md | 43 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/layout-structure.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/layout-structure.md | 100 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/predefined-layout-panels/boxlayout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/predefined-layout-panels/boxlayout.md | 176 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/predefined-layout-panels/docklayout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/predefined-layout-panels/docklayout.md | 209 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/predefined-layout-panels/gridlayout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/predefined-layout-panels/gridlayout.md | 139 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/predefined-layout-panels/imageandtextlayoutpanel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/predefined-layout-panels/imageandtextlayoutpanel.md | 288 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/predefined-layout-panels/stacklayoutpanel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/predefined-layout-panels/stacklayoutpanel.md | 84 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/predefined-layout-panels/wraplayoutpanel.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/predefined-layout-panels/wraplayoutpanel.md | 80 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/radcontrol-testing-considerations.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/radcontrol-testing-considerations.md | 17 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/sample-arrange-stage-scenarios.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/sample-arrange-stage-scenarios.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/setting-metadata-to-influence-layout.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/setting-metadata-to-influence-layout.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/layout/sizing-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/layout/sizing-properties.md | 70 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/markup-dialog/localization.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/markup-dialog/localization.md | 172 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/markup-dialog/radmarkupdialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/markup-dialog/radmarkupdialog.md | 136 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/microsoft-active-accessibility-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/microsoft-active-accessibility-support.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/mouse-effects.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/mouse-effects.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/override-theme-settings-at-run-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/override-theme-settings-at-run-time.md | 147 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/overview/building-tpf-based-controls.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/overview/building-tpf-based-controls.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/overview/introducing-the-telerik-presentation-framework.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/overview/introducing-the-telerik-presentation-framework.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/overview/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/overview/overview.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/popupmanager.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/popupmanager.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/arrowprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/arrowprimitive.md | 76 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/borderprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/borderprimitive.md | 23 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/primitives/borderprimitive.md | 70 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/primitives/borderprimitive.md | 127 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | telerik-presentation-framework/primitives/borderprimitive.md | 182 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/checkprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/checkprimitive.md | 74 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/fillprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/fillprimitive.md | 129 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/focusprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/focusprimitive.md | 64 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/gripprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/gripprimitive.md | 74 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/imageprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/imageprimitive.md | 103 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/imageshape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/imageshape.md | 73 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/lightvisualelement.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/lightvisualelement.md | 257 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/lineprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/lineprimitive.md | 104 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/overflowprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/overflowprimitive.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/progressbarprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/progressbarprimitive.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/radioprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/radioprimitive.md | 17 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/textprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/textprimitive.md | 78 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/primitives/trackbarprimitive.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/primitives/trackbarprimitive.md | 65 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/end-user-functionality/print-preview-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/end-user-functionality/print-preview-dialog.md | 87 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/end-user-functionality/print-settings-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/end-user-functionality/print-settings-dialog.md | 30 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/end-user-functionality/watermark-dialog.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/end-user-functionality/watermark-dialog.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/how-to/customize-radprintdocument.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/how-to/customize-radprintdocument.md | 23 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | telerik-presentation-framework/printing-support/how-to/customize-radprintdocument.md | 168 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/localize-print-dialogs.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/localize-print-dialogs.md | 453 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/radprintdocument/design-time.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/radprintdocument/design-time.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/radprintdocument/header-and-footer.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/radprintdocument/header-and-footer.md | 133 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/radprintdocument/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/radprintdocument/overview.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/printing-support/radprintdocument/watermark.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/printing-support/radprintdocument/watermark.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/section-508-compliance.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/section-508-compliance.md | 34 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | telerik-presentation-framework/section-508-compliance.md | 48 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |
| High | telerik-presentation-framework/section-508-compliance.md | 53 | Link Text Clarity | Multiple links use non-descriptive anchor text that is unclear out of context. | Replace the anchor with text that identifies the destination or action. |

### `telerik-presentation-framework/shadows.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shadows.md | 57 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/chamfered-rect-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/chamfered-rect-shape.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/circle-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/circle-shape.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/custom-shapes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/custom-shapes.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/diamond-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/diamond-shape.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/donut-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/donut-shape.md | 42 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/elipse-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/elipse-shape.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/heart-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/heart-shape.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/media-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/media-shape.md | 39 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/office-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/office-shape.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/qa-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/qa-shape.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/round-rect-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/round-rect-shape.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/star-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/star-shape.md | 45 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/tab-vs-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/tab-vs-shape.md | 46 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/shapes/trackbar-thumb-shape.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/shapes/trackbar-thumb-shape.md | 72 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/text-rendering.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/text-rendering.md | 31 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/tooltips-and-screentips/radtooltip.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/tooltips-and-screentips/radtooltip.md | 165 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/tooltips-and-screentips/screen-tips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/tooltips-and-screentips/screen-tips.md | 170 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/tooltips-and-screentips/tooltips.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/tooltips-and-screentips/tooltips.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/touch-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/touch-support.md | 208 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `telerik-presentation-framework/vector-images-support.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | telerik-presentation-framework/vector-images-support.md | 215 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `testing/test-complete/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | testing/test-complete/overview.md | 22 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/controlspy/adding-the-control-spy-to-your-application.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/controlspy/adding-the-control-spy-to-your-application.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/controlspy/controlspy.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/controlspy/controlspy.md | 27 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/controlspy/inspecting-properties.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/controlspy/inspecting-properties.md | 33 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/shapeeditor/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/shapeeditor/getting-started.md | 54 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/shapeeditor/shape-editor-user-interface.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/shapeeditor/shape-editor-user-interface.md | 37 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | tools/shapeeditor/shape-editor-user-interface.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | tools/shapeeditor/shape-editor-user-interface.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/shapeeditor/shapeeditor.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/shapeeditor/shapeeditor.md | 19 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/shapeeditor/using-the-custom-shape-editor/adding-and-removing-points.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/shapeeditor/using-the-custom-shape-editor/adding-and-removing-points.md | 23 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/shapeeditor/using-the-custom-shape-editor/moving-and-locking-points.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/shapeeditor/using-the-custom-shape-editor/moving-and-locking-points.md | 25 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/shapeeditor/using-the-custom-shape-editor/using-bezier-curves.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/shapeeditor/using-the-custom-shape-editor/using-bezier-curves.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/theme-manager/adding-radthememanager-to-a-form.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/theme-manager/adding-radthememanager-to-a-form.md | 35 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/theme-manager/applying-a-theme-to-a-control.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/theme-manager/applying-a-theme-to-a-control.md | 21 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/theme-manager/editing-themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/theme-manager/editing-themes.md | 56 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/theme-manager/load-themes-from-a-resource.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/theme-manager/load-themes-from-a-resource.md | 41 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/theme-manager/load-themes-from-an-external-file.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/theme-manager/load-themes-from-an-external-file.md | 44 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/architecture.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/architecture.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/concepts.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/concepts.md | 52 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/getting-started.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/getting-started.md | 126 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/overview.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/overview.md | 29 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |
| High | tools/visual-style-builder/overview.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/starting-vsb.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/starting-vsb.md | 26 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/applying-font-repository-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/applying-font-repository-items.md | 60 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/color-blending.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/color-blending.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/crystal-themes-blending.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/crystal-themes-blending.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/fluent-themes-blending.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/fluent-themes-blending.md | 55 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/loading-predefined-themes.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/loading-predefined-themes.md | 40 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/loading-themes-created-with-the-old-vsb.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/loading-themes-created-with-the-old-vsb.md | 38 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/material-themes-blending.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/material-themes-blending.md | 50 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/office2019-themes-blending.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/office2019-themes-blending.md | 79 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/property-precedence-rules.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/property-precedence-rules.md | 66 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/saving-and-loading-theme-files.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/saving-and-loading-theme-files.md | 204 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/visualstudio2022-themes-blending.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/visualstudio2022-themes-blending.md | 47 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items.md | 106 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/install-nuget-keys.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/install-nuget-keys.md | 112 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/visual-studio-extensions/configure-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-extensions/configure-project.md | 49 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/visual-studio-extensions/convert-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-extensions/convert-project.md | 59 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/visual-studio-extensions/create-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-extensions/create-project.md | 58 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/visual-studio-extensions/default-theme-vs-extensions.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-extensions/default-theme-vs-extensions.md | 28 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/visual-studio-extensions/toolbox-configurator.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-extensions/toolbox-configurator.md | 32 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

### `visual-studio-integration/visual-studio-extensions/upgrade-project.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-extensions/upgrade-project.md | 17 | Heading Structure | Heading level jumps to H3, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |
| High | visual-studio-integration/visual-studio-extensions/upgrade-project.md | 80 | Heading Structure | Heading level jumps to H4, skipping one or more levels. | Use the next sequential heading level and adjust descendants to preserve the outline. |

### `visual-studio-integration/visual-studio-templates.md`

| Severity | Article | Line | Dimension | Issue | Recommended Fix |
|---|---|---:|---|---|---|
| High | visual-studio-integration/visual-studio-templates.md | 86 | Heading Structure | The standard article has more than one authored H1. | Keep the primary H1 and demote this heading to the level appropriate for its section. |

## Human Review Required

The image purpose cannot be determined from source, so no severity is assigned.

| Article | Line | Dimension | Review case | Recommended action |
|---|---:|---|---|---|
| telerik-presentation-framework/html-like-text-formatting.md | 59 | Alternative Text | Image markup has no alt text; the source does not establish whether the image is informative or decorative. | Review the image purpose. Add concise equivalent alt text for informative images or an empty alt value for decorative images. |
| telerik-presentation-framework/html-like-text-formatting.md | 147 | Alternative Text | Image markup has no alt text; the source does not establish whether the image is informative or decorative. | Review the image purpose. Add concise equivalent alt text for informative images or an empty alt value for decorative images. |
| telerik-presentation-framework/html-like-text-formatting.md | 159 | Alternative Text | Image markup has no alt text; the source does not establish whether the image is informative or decorative. | Review the image purpose. Add concise equivalent alt text for informative images or an empty alt value for decorative images. |

