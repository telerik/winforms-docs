# Repository Documentation Accessibility Assessment

**Status: Provisional** — the inventory and scoring rules were applied to every eligible Markdown file, but the automated source-only heuristic has not received a human review pass. Image-purpose uncertainties are explicitly flagged below and per article.

This assessment analyzes Markdown source only. It does not evaluate rendered site behavior, product functionality, UI components, code correctness, image pixels, or WCAG conformance. Scores are a baseline from repeatable source checks, not a certification.

## Average Scores

- Total Markdown files inventoried: **3,122**
- Total articles scored: **3,095**
- Total articles excluded: **27**
- Overall documentation accessibility score: **4.4 / 5.0**

| Dimension | Average score | Weight |
|---|---:|---:|
| Heading Structure | 3.3 / 5.0 | 20% |
| Alternative Text | 5.0 / 5.0 | 20% |
| Link Text Clarity | 4.8 / 5.0 | 15% |
| Plain Language | 3.8 / 5.0 | 15% |
| Table Accessibility | 4.9 / 5.0 | 10% |
| Formatting Independence | 5.0 / 5.0 | 10% |
| Callout Structure | 5.0 / 5.0 | 5% |
| Code Block Accessibility | 4.9 / 5.0 | 5% |

The overall repository score is the arithmetic mean of the per-article weighted scores. Each article score is the weighted mean of its eight dimension scores; displayed averages are rounded to one decimal place.

## Methodology

Each eligible article was checked against the eight requested dimensions in its Markdown source. Each dimension receives an integer score from 1 to 5; content types absent from an article receive 5. Article scores use the specified weights, and the repository score is the mean of unrounded article weighted scores. The report displays scores to one decimal place. A score of 5 means no issue was detected (or the content type is absent); scores decrease with detected frequency and impact. Empty image alt text is treated as an explicit decorative marker; missing alt attributes with uncertain purpose are listed for human review.

| Dimension | Source-level checks |
|---|---|
| Heading Structure | H1 count, skipped levels, generic labels, and missing headings. |
| Alternative Text | Markdown and HTML image alt attributes; uncertain image purpose is flagged for human review. |
| Link Text Clarity | Generic anchor labels and bare URLs. |
| Plain Language | Prose sentence length and a limited passive-voice pattern check. |
| Table Accessibility | Markdown table separators, HTML table header cells, and empty Markdown cells. |
| Formatting Independence | Color references and visual-only emphasis patterns. |
| Callout Structure | Recognized callout syntax and informal note/warning patterns. |
| Code Block Accessibility | Fenced-block language identifiers and nearby explanatory prose. |

Severity follows the issue criteria in the request; ambiguous image purpose is flagged for human review rather than assigned a severity. The automated checks are provisional: they do not semantically interpret every Markdown construct, and a human review has not validated the classifications.

## Scope and Exclusions

**Inclusion:** 3,095 Markdown articles were scored. The scored count equals the included count; no eligible article failed to parse or score.

**Exclusion:** 27 Markdown files were omitted. Reasons are mutually exclusive in the inventory:

- excluded directory: **4**
- frontmatter marks article unpublished: **22**
- generated API reference content: **1**

The configured `docs-builder.yml` pattern `**/README.md` matches the root `README.md`; it is also marked `publish: false` and is counted once under frontmatter-unpublished. `.git`, `.github`, `node_modules`, `_site`, `bin`, and `obj` are excluded directories. Generated API reference content under `_assetsApi` is excluded. Audit outputs are excluded from future runs.

## Summary

- **Overall state:** baseline score **4.4 / 5.0** across 3,095 scored articles. Scores are source-based indicators, not a conformance claim.
- **Strongest dimensions:** Alternative Text, Formatting Independence, Callout Structure (5.0/5.0).
- **Weakest dimension:** Heading Structure (3.3/5.0).
- **Critical issues:** 51 articles contain at least one Critical finding.
- **High issues:** 1,560 articles contain at least one High finding.
- **Human review required:** 3 image instances have no alt text and source context does not establish whether they are informative or decorative. They are not assigned severity.

**Recurring Medium/Low patterns:**

- Passive constructions: **1,306** articles have a Medium or Low finding.
- Long sentences: **1,040** articles have a Medium or Low finding.
- Heading-level skips: **791** articles have a Medium or Low finding.
- Missing H1 headings: **371** articles have a Medium or Low finding.
- Non-descriptive links or bare URLs: **289** articles have a Medium or Low finding.
- Code block language or introduction: **171** articles have a Medium or Low finding.
- Generic section headings: **66** articles have a Medium or Low finding.
- Color-dependent cues: **9** articles have a Medium or Low finding.
- Empty table cells: **6** articles have a Medium or Low finding.
- Inconsistent callout syntax: **6** articles have a Medium or Low finding.
- Formatting-only emphasis: **1** article has a Medium or Low finding.

**Limitations:** parsing is syntactic and does not resolve include/snippet content, understand all Markdown extensions or template expansions, verify link destinations, evaluate whether alt text is equivalent to image content, or reliably judge jargon, heading meaning, callout severity, table purpose, and code placeholders. These checks can over- or under-report issues. Human review is needed before remediation priorities are finalized.

## Critical Issues

| Article | Line | Dimension | Issue | Recommended Fix |
|---|---:|---|---|---|
| `controls/dock/mdi-mode/automatic-mdi-form-handling.md` | 13 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `controls/editors/timepicker/free-form-date-time-parsing.md` | 13 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `controls/gridview/common-properties.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/table-styles-gallery.md` | 13 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `controls/spreadsheet/features/spreadprocessing-features.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `controls/syntax-editor/features/taggers/word-taggers.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/add-check-all-in-the-header-cell-for-a-gridviewcheckboxcolumn.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/add-check-all-in-the-header-cell-for-a-gridviewcheckboxcolumn.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/add-close-buttons-in-tab-elements-into-raddocking-s-documentpanes.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/add-splashscreen-to-your-application.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/adding-a-control-to-the-gac-(global-assembly-cache)-for-winforms.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/adding-a-winforms-control-to-a-ribbon-bar.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/adding-custom-elements-inside-a-cell-when-it-is-in-edit-mode.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/animate-the-expanding-page.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/animate-the-expanding-page.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/app-becomes-dpi-aware.md` | 13 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/binding-to-a-result-of-query.md` | 13 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/change-the-height-of-radtextbox.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/changing-the-size-of-the-thumb-of-radscrollbar.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/check-only-one-checkbox-in-gridviewcheckboxcolumn.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/create-pop-up-user-control-for-row-editing.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/create-standalone-radexpressioneditor-form.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/creating-a-dropdownbutton-splitbutton-which-shows-the-selected-item-s-text.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/creating-a-radradiobuttoncellelement.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/creating-and-managing-docking-windows-dynamically.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/customizing-radmessagebox-with-custom-theme.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/filtering-indicators-in-gridview.md` | 14 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/free-text-in-combobox-column.md` | 15 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/full-control-over-the-layout-of-the-docking-manager-in-design-time.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/gridview-loading-images-asynchronously.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/highlighting-tree-node-text-on-edit.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/how-to-migrate-to-new-two-columns-menu.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/how-to-use-inking-in-a-winforms-application.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/implementing-a-chrome-window.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/indicating-progress-in-applications-that-have-their-primary-ui-thread-busy.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/iterating-through-radgridview-rows.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/load-theme-components-in-a-separate-thread.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/master-detail-in-two-grids.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/node-drag-and-drop-between-radtreeview-and-radgridview.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/node-drag-and-drop-between-radtreeview-and-radgridview.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/panels-and-transparency-resizing.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/printing-radgridview-via-telerik-reporting.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/radmap-export-to-an-image.md` | 15 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/radpageview---create-multiline-strip-element-with-radcommandbar.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/rotate-charts-in-radrotator-or-radcarousel.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/scientific-notation-leading-zeros-spineditor.md` | 14 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/spellcheck-as-you-type-with-radrichtextbox.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/use-custom-filtering-to-search-in-radmulticolumncombobox.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/use-custom-filtering-to-search-in-radmulticolumncombobox.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/use-gauge-element-inside-other-controls.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/use-gridcomboboxcolumn-with-custom-values.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/using-radcontrols-for-winforms-inside-a-winforms-validation-process.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/windows-10-like-navigation-bar-with-radpageview.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `knowledge-base/windows-10-like-navigation-bar-with-radpageview.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |
| `knowledge-base/wrapping-a-net-user-control-as-an-activex.md` | 12 | Heading Structure | The article has no Markdown heading structure for section navigation. | Add one descriptive H1 and organize sections with sequential heading levels. |
| `styling-and-appearance/themeviewer.md` | 12 | Link Text Clarity | All detected links use non-descriptive anchor text. | Rewrite each link so its purpose or destination is clear out of context. |

## High Issues

| Article | Line | Dimension | Issue | Recommended Fix |
|---|---:|---|---|---|
| `ai-tools/mcp-server/converter/getting-started.md` | 87 | Code Block Accessibility | 2 fenced code blocks do not declare a language. | Add an appropriate language identifier to every fenced code block. |
| `ai-tools/mcp-server/converter/tools.md` | 276 | Code Block Accessibility | 2 fenced code blocks do not declare a language. | Add an appropriate language identifier to every fenced code block. |
| `ai-tools/mcp-server/overview.md` | 15 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `analytics/analytics-support.md` | 61 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/barcodeview/barcode-reader.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/barcodeview/barcode-types/2d-barcodes/datamatrix/settings.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/barcodeview/overview.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/barcodeview/properties-methods-events.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/button/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/button/design-time.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/button/properties-methods-event.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/checkbox/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/checkbox/desing-time.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/checkbox/properties-methods-events.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/dropdownbutton/design-time.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/dropdownbutton/properties-methods-events.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/radiobutton/properties-methods-events.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/repeatbutton/design-time.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/repeatbutton/properties-methods-events.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/splitbutton/design-time.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/splitbutton/properties-methods-events.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/togglebutton/customizing-appearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/togglebutton/design-time.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/togglebutton/properties-methods-events.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/toggleswitch/customizing-appearance/themes.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/toggleswitch/design-time.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/toggleswitch/properties-methods-and-events.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/buttons/toggleswitch/toggleswitch.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/calculationbehavior.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/custom-functions.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/design-time.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/features.md` | 103 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/overview.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/properties-methods-events.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calculator/structure.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calendar/calendar-structure.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/calendar/customizing-appearance/formatting-items.md` | 30 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/calendar/properties-and-events.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/callout/design-time.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/callout/getting-started.md` | 88 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/callout/key-features.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/callout/properties-methods-events.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/callout/shapes.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/callout/structure.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/cardview/custom-items.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/cardview/customizing-appearance/formatting-items.md` | 39 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/cardview/design-time.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/cardview/editors/overview.md` | 54 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/cardview/editors/overview.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/cardview/editors/switching-editors.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/carousel.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/customizing-appearance/customizing-appearance.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/data-binding.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/design-time/adding-carousel-items.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/design-time/setting-bezier-path-design-time.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/design-time/setting-ellipse-path-design-time.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/getting-started.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/structure.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/touch-support.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/using-radcarousel/carousel-items.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/carousel/using-radcarousel/carousel-path.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chart/understanding-radchart-elements/rad-chart-basics.md` | 12 | Link Text Clarity | 11 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/chartview/axes/axis-alignment.md` | 39 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/axes/axis-alignment.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/categorical.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/datetime.md` | 75 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/axes/datetime.md` | 85 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/inverse-axis.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/linear.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/logarithmic.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/multiple-axes.md` | 53 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/axes/multiple-axes.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/plot-mode.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/polar.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/radial.md` | 54 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/axes/radial.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/axes/scale-breaks.md` | 52 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/axes/scale-breaks.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/context-menu/modifying-the-default-context-menu.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/customization/custom-labels-text.md` | 40 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/customization/custom-labels-text.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/customization/custom-rendering.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/customization/formatting-series-labels.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/customization/formatting-trackball-labels.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/customization/palettes.md` | 81 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/design-time/property-builder.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/design-time/smart-tag.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/annotations/annotations.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/annotations/free-figure-annotation.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/annotations/grid-line.md` | 60 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/features/annotations/grid-line.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/annotations/marked-zone.md` | 117 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/annotations/plot-band.md` | 62 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/features/annotations/plot-band.md` | 109 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/chart-grid.md` | 91 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/drill-down.md` | 93 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/export.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/lasso-selection.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/lasso-zoom.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/legend.md` | 36 | Heading Structure | 6 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/features/legend.md` | 157 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/scroll-and-zoom.md` | 74 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/selection.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/smart-labels.md` | 60 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/features/smart-labels.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/title.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/tooltip.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/features/trackball.md` | 97 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/null-values-support-.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/overview.md` | 200 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/populating-with-data/binding-to-bindinglist.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/populating-with-data/binding-to-datatable.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/populating-with-data/populating-with-data.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/printing-support/printing.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/radchartview-vs-radchart.md` | 94 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/range-selector-integration.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/area.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/bar.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/bezier.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/bubble.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/donut.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/fastline.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/funnel.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/hlc.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/indicators/custom-indicators.md` | 81 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/series-types/indicators/custom-indicators.md` | 115 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/indicators/indicators.md` | 30 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/series-types/indicators/indicators.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/indicators/supported-indicators.md` | 95 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/line.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/ohlc-and-candlestick.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/pie.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/polar.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/radar.md` | 61 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/series-types/radar.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/range-and-rangebar.md` | 39 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/series-types/range-and-rangebar.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/scatter.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/scatterarea.md` | 41 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chartview/series-types/scatterarea.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/scatterline.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/series-types.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/stepline.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chartview/series-types/watterfall.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/chat-items/cards.md` | 43 | Heading Structure | 5 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chat/chat-items/cards.md` | 111 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/chat-items/overlays.md` | 47 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chat/chat-items/overlays.md` | 87 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/chat-items/suggested-actions.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/customizing-appearance/accessing-and-customizing-elements.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/customizing-appearance/custom-overlays.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/customizing-appearance/themes.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/features/file-upload.md` | 51 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chat/features/multi-line-editor.md` | 69 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chat/features/replies.md` | 48 | Heading Structure | 6 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/chat/features/toolbar.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/integration/azure-chat-bot.md` | 157 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/overview.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/properties-methods-events.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/chat/structure.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/checkedlistbox/checkedlistbox.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/checkedlistbox/design-time.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/checkedlistbox/structure.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/clock/clock.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/clock/design-time.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/clock/properties.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/clock/structure.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/commandbar/design-time.md` | 112 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/commandbar/properties-methods-events.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/commandbar/touch-support.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/control-element-structure-.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/customizing-appearance/customizing-appearance.md` | 43 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dataentry/customizing-appearance/customizing-appearance.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/customizing-appearance/themes.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/dataentry.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/design-time.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/how-to/change-auto-generated-editor.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/how-to/handle-unsupported-values.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/programmatically-arrange-items-.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/properties-events-and-attributes.md` | 152 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dataentry/properties-events-and-attributes.md` | 181 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dataentry/validation.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/customizing-appearance/custom-display-names.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/customizing-appearance/formatting-nodes.md` | 42 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/datafilter/customizing-appearance/formatting-nodes.md` | 80 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/datafilter-dialog.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/design-time.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/editing/custom-editors.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/editing/default-editors.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/editing/events.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/end-user-functionality.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/localization/localization.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/localization/right-to-left.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/overview.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/properties-methods-events.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/structure.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/working-with-descriptor-items/data-binding.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/working-with-descriptor-items/descriptor-items.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datafilter/working-with-descriptor-items/unbound-mode.md` | 16 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/change-the-editor-to-a-bound-raddropdownlist.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/customize-layout-mode.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/customizing-appearance/customizing-appearance.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/design-time.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/localization.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/overview.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/properties-events-and-attributes.md` | 70 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/save-load-layout.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/structure.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/datalayout/validation.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/desktopalert/customizing-appearance/themes.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/desktopalert/overview.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/desktopalert/properties-methods-events.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/desktopalert/structure.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/background-grid.md` | 87 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/custom-shapes.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/design-time.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/diagram-factory.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/diagram-items/connections/connections.md` | 167 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/diagram-items/containershapes.md` | 135 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/diagram-items/shapes.md` | 155 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/diagram.md` | 93 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/drag-and-drop/drag-and-drop-from-another-control.md` | 44 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/diagram/drag-and-drop/drag-and-drop-from-another-control.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/drag-and-drop/ole-drag-and-drop.md` | 35 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/diagram/drag-and-drop/ole-drag-and-drop.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/features/export.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/features/save-and-load-layout.md` | 33 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/diagram/features/touch-support.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/information-adorner.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/populating-with-data.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/ribbonui.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/settings-pane.md` | 123 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/structure.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/diagram/toolbox.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/arranging-dockwindows.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/auto-hiding-windows.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/docking-assistant.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/dockingguidestemplate.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/document-manager.md` | 33 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dock/architecture-and-features/document-manager.md` | 91 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/floating-windows.md` | 95 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/keyboard-and-mouse-support.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/understanding-raddock.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/using-the-commandmanager.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/using-the-contextmenuservice.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/architecture-and-features/using-the-dragdropservice.md` | 37 | Heading Structure | 5 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dock/architecture-and-features/using-the-dragdropservice.md` | 101 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/customizing-appearance/themes.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/design-time/layout-builder.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/design-time/smart-tag.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/docking-usercontrols-and-forms/docking-a-usercontrol-with-custom-event.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/docking-usercontrols-and-forms/docking-singleton-forms.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/docking-usercontrols-and-forms/get-a-hostwindow-by-its-content.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/docking-usercontrols-and-forms/getting-started.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/loading-and-saving-layouts/loading-and-saving-layouts.md` | 40 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dock/loading-and-saving-layouts/loading-and-saving-layouts.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/loading-and-saving-layouts/tutorial-saving-and-loading-layout-and-content.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/localization/localization.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/localization/right-to-left-support.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/mdi-mode/automatic-mdi-form-handling.md` | 52 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dock/object-model/accessing-dockwindows.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/alloweddockstates.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/creating-a-raddock-at-runtime.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md` | 30 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dock/object-model/creating-toolwindow-and-documentwindow-at-runtime.md` | 75 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/customizing-floating-windows.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/customizing-tabstrip-items.md` | 93 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/example-building-an-advanced-layout-at-runtime.md` | 123 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/removing-toolwindow-and-documentwindow-at-runtime.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/tabs-and-captions.md` | 90 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/toolwindow-and-documentwindow-properties-and-methods.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dock/object-model/tracking-the-activewindow.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/checkeddropdownlist.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/control-element-structure.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/customization.md` | 45 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/customizing-appearance/theming.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/design-time.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/adding-items-programmatically.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/data-binding.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/populating-with-data/design-time.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/checkeddropdownlist/properties-and-events.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/animation-effects.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/formatting-items.md` | 37 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/design-time.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdown-resizing.md` | 90 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md` | 49 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/dropdownstyle.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/auto-complete.md` | 88 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/scrolling.md` | 46 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/selection.md` | 47 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/features/sorting.md` | 47 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/item-sizing.md` | 40 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/adding-items-programmatically.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/data-binding.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/populating-with-data/design-time.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/properties-methods-events.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist/structure.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/customizing-appearance/themes.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/properties-methods-events.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/fontdropdownlist/structure.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance).md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/data-representation.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/design-time.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/drag-and-drop/listcontroldragdropservice.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/filtering.md` | 44 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/features/selection.md` | 34 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/listcontrol.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/adding-items-programmatically.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/databinding.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/populating-with-data/design-time.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/properties-methods-events.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/structure.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/visual-data-representation.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/auto-complete.md` | 93 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/autocompletebox.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/caret-positioning-and-selection.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/creating-custom-blocks.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/customizing-appearance/customizing-fill-and-border.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/customizing-appearance/formatting-blocks.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/customizing-appearance/themes.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/design-time.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/element-structure-and-document-object-model.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/properties-events-methods.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/autocompletebox/text-editing.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/browseeditor/customizing-appearance/accessing-and-customizing-elements.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/browseeditor/customizing-appearance/themes.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/browseeditor/design-time/smart-tag.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/browseeditor/properties-event.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/design-time.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/item-types.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/populating-with-items/adding-items-programmatically.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/populating-with-items/design-time.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/properties-events.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/buttontextbox/structure.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/calculatordropdown/customizing-appearance/themes.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/calculatordropdown/design-time/smart-tag.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/colorbox/colorbox.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/colorbox/customizing-appearance/customizing-appearance.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/colorbox/customizing-appearance/themes.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/colorbox/design-time.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/colorbox/properies-and-events.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/colorbox/structure.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/MaskDateTimeProvider.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/customizing-appearance/customize-radcalendar-programmatically.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/customizing-appearance/customizing-appearance.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/customizing-appearance/themes.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/design-time.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/free-form-date-time-parsing.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/how-to/set-null-or-empty-value.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/how-to/tweak-increment-step.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/internationalization/cultureinfo-and-regioninfo-basics.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/internationalization/date-formats.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/internationalization/internationalization.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/navigation-modes.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/overview.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/providers.md` | 137 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/datetimepicker/structure.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/customizing-appearance/accessing-and-customizing-elements.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/customizing-appearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/design-time.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/features.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/overview.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/populating-with-data/adding-items-programmatically.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/populating-with-data/data-binding.md` | 129 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/domainupdown/populating-with-data/design-time.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/maskededitbox/customizing-appearance/accessing-and-customizing-elements.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/maskededitbox/customizing-appearance/themes.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/maskededitbox/design-time/smart-tag.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/maskededitbox/null-values-support.md` | 16 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/maskededitbox/properties-methods-events.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/popupeditor/customize-elements.md` | 35 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/editors/popupeditor/customize-elements.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/popupeditor/design-time.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/popupeditor/handling-popup-keyboard-input.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/popupeditor/popupcontainer.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/popupeditor/properties-events-and-methods.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/spineditor/customizing-appearance/customizing-appearance.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/spineditor/customizing-appearance/themes.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/spineditor/design-time.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/spineditor/null-value-support.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/spineditor/spineditor.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/spineditor/structure.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textbox/adding-buttons-to-radtextbox.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textbox/control-element-structure.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textbox/customizing-appearance/customizing-appearance.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textbox/customizing-appearance/themes.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textbox/design-time.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textbox/programming-radtextbox.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/autocomplete.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/caret-positioning-and-selection.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/creating-custom-blocks.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/customizing-appearance/customizing-appearance.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/customizing-appearance/formatting-blocks.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/customizing-appearance/themes.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/design-time.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/element-structure-and-document-object-model.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/keyboard-support.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/localization.md` | 88 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/properties.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/radtextboxcontrol-vs-radtextbox.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/textboxcontrol/text-editing.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timeonlypicker/structure.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/customizing-appearance/customizing-programatically.md` | 106 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/customizing-appearance/themes.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/design-time.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/getting-started.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/localization.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/structure-properties-and-events.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/structure.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timepicker/timepicker.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timespanpicker/customizing-appearance/customizing-appearance.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timespanpicker/customizing-appearance/themes.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timespanpicker/design-time.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timespanpicker/properties-methods-events.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/editors/timespanpicker/structure.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/dialog-controls/explorer-control.md` | 87 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/dialog-controls/explorer-control.md` | 170 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 38 | Heading Structure | 7 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/dialog-controls/radopenfiledialog.md` | 120 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/dialog-controls/radopenfolderdialog.md` | 37 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/dialog-controls/radopenfolderdialog.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/dialog-controls/radsavefiledialog.md` | 38 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/dialog-controls/radsavefiledialog.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/events.md` | 119 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/features/common.md` | 48 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/features/common.md` | 158 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/features/custom-places.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/features/drag-and-drop/overview.md` | 34 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/features/environment-variables.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/features/error-handling.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/features/favorites-and-libraries.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/features/filtering.md` | 64 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/file-dialogs/how-to/improve-load-performance.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/localization.md` | 306 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/overview.md` | 76 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/file-dialogs/structure.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/filter-view-changing-default-editors.md` | 92 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/filter-view-design-time.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/filter-view-getting-started.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/filter-view-localization.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/filter-view-properties-methods-events.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/filter-view-structure.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/filter-view/unbound_mode.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/colordialog/colordialog.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/colordialog/properties-methods-events.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/colordialog/structure.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/form/accessing-radform-elements.md` | 41 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/forms-and-dialogs/form/form.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/form/properties-methods-events.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/form/structure.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/form/themes.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/form/using-the-formimageborderprimitive.md` | 102 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/messagebox/getting-started.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/messagebox/messagebox.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/messagebox/properties-methods-events.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/messagebox/structure.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/radtitlebar/properties-events.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/radtitlebar/structure.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/ribbonform/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/ribbonform/properties-methods-events.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/ribbonform/ribbonform.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/ribbonform/structure.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/shapedform/overview.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/statusstrip/statusstrip.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/statusstrip/structure.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/statusstrip/themes.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/tabbedform/customizing-appearance/customizing-appearance.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/tabbedform/customizing-appearance/themes.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/tabbedform/features/context-menu.md` | 18 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/tabbedform/features/drag-and-drop.md` | 63 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/forms-and-dialogs/tabbedform/features/pinned-tabs.md` | 45 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/forms-and-dialogs/tabbedform/getting-started.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/tabbedform/overview.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/tabbedform/properties-methods-events.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/toolbarform/design-time.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/toolbarform/overview.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/forms-and-dialogs/toolbarform/properties-methods-events.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/context-menu/data-item-context-menu.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/context-menu/default-context-menu.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/context-menu/modifying-context-menu.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/custom-items/data-cells.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/custom-items/data-items.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/custom-items/task-elements.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/design-time/adding-columns.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/design-time/adding-items.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/design-time/adding-links.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/design-time/smart-tag.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/drag-and-drop/ganttviewdragdropservice.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/editing/creating-custom-editor.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/editing/customizing-editor.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/editing/editing-graphical-view.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/editing/editing-text-view.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/formatting/custom-painting.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/formatting/graphicalview-item-formatting.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/formatting/graphicalview-link-item-formatting.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/formatting/textview-item-formatting.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/formatting/thmes.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/formatting/timeline-item-formatting.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/ganttview-selection.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/input-behavior.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/integration.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/printing-support/printing-support.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/properties-events-metohods.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/structure/item-types.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/structure/structure.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/timeline/custom-timeline.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/timeline/timeline-views.md` | 91 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/today-indicator.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/tooltip.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/usability/keyboard-navigation.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/usability/mouse-navigation.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/working-with-data/adding-new-items.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/working-with-data/binding-to-database.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/working-with-data/data-binding-basics.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/working-with-data/importing-xml-from-ms-project.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/working-with-data/link-type-converter.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ganttview/working-with-data/populating-with-data-programmatically.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/bulletgraph/bulletgraph.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/bulletgraph/design-time/smart-tag.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/bulletgraph/getting-started.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/bulletgraph/properties.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/bulletgraph/save-and-load-layout.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/design-time/design-time.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/elements/working-with-bars.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/elements/working-with-labels.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/elements/working-with-line.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/elements/working-with-needle-indicator.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/elements/working-with-ticks.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/properties-and-events.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/lineargauge/save-and-load-layout.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/design-time/design-time.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/getting-started.md` | 74 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gauges/radialgauge/getting-started.md` | 91 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/properties-and-events.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/radialgauge.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/save-and-load-layout.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/understanding-gauge-elements/working-with-arcs.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/understanding-gauge-elements/working-with-labels.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/understanding-gauge-elements/working-with-needles.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/understanding-gauge-elements/working-with-single-label.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gauges/radialgauge/understanding-gauge-elements/working-with-ticks.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/design-time-support/property-builder.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/design-time-support/smart-tag.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/developer-focused-examples.md` | 12 | Link Text Clarity | 6 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/gridview/end-user-capabilities/grouping.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/context-menus/conditional-custom-context-menus.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/context-menus/custom-context-menus.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/copy-paste-cut.md` | 108 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/drag-and-drop/radgridviewdragdropservice.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/drag-and-drop/rows-reordering-in-master-detail-hierarchy.md` | 504 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/drag-and-drop/rows-reordering-in-self-reference-hierarchy.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/editing/editors/api.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/editing/editors/how-to/allow-end-users-to-add-items-to-dropdownlisteditor.md` | 76 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/editing/editors/how-to/change-the-active-editor-depending-on-the-cell-value-type.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md` | 30 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/editing/insert-update-delete-records/delete-using-controls-api.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/editing/insert-update-delete-records/validation.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/exporting-data/export-to-csv.md` | 82 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/exporting-data/export-to-excel-via-excelml-format.md` | 119 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/exporting-data/export-to-pdf.md` | 342 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/exporting-data/export-to-pdf.md` | 363 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/exporting-data/html-export.md` | 145 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/exporting-data/html-export.md` | 157 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/exporting-data/spreadstream-export.md` | 115 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/exporting-data/spreadstream-export.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/exporting-data/troubleshooting.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/filtering/setting-filters-programmatically-(composite-descriptors).md` | 36 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/grouping/basic-grouping.md` | 47 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/grouping/basic-grouping.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/custom-grouping.md` | 159 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/events.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/formatting-group-header-row.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/group-aggregates.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/groups-collection.md` | 45 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/grouping/groups-collection.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/setting-groups-programmatically.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/sorting-group-rows.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/grouping/using-grouping-expressions.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/paging/overview.md` | 124 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/paging/paging-panel.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/printing-support/events-and-customization.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/printing-support/printing-hierarchical-grid.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/printing-support/printing-support.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/save-and-load-layout/advanced.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/save-and-load-layout/load-layout-buttons-in-the-property-grid.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/save-and-load-layout/save-and-load-layout.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/scrolling/events.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/scrolling/scrolling-programmatically.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/selection/basic-selection.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/selection/multiple-selection.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/selection/selecting-rows-and-cells-programmatically.md` | 95 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/sorting/basic-sorting.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/sorting/events.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/sorting/setting-sorting-programmatically.md` | 43 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/features/sorting/setting-sorting-programmatically.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/sorting/sorting-expressions.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/features/virtual-mode.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/binding-the-grid.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/columns.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/creating-hierarchical-grids.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/editing.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/element-hierarchy.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/key-features.md` | 96 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/key-features.md` | 13 | Link Text Clarity | 15 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/gridview/fundamentals/keyboard-support.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/logical-vs.-visual-grid-structure.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/overview-of-radgridview-structure.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/rows.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/ui-virtualization.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/fundamentals/ui-virtualization.md` | 13 | Link Text Clarity | 3 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/gridview/hierarchical-grid/binding-to-hierarchical-data-programmatically.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/hierarchical-grid/binding-to-hierarchical-data.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/hierarchical-grid/how-to/accessing-child-templates.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/hierarchical-grid/how-to/applying-formatting-only-to-cells-in-a-child-template.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/hierarchical-grid/how-to/expanding-all-rows.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/hierarchical-grid/how-to/iterating-the-child-rows-collection-of-a-chosen-parent-row-in-hierarchy-radgridview.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/localization/right-to-left-support.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/overview.md` | 14 | Link Text Clarity | 21 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/gridview/populating-with-data/bind-to-xml.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/bindable-types.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-a-collection-of-interfaces.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-array-and-arraylist.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-bindinglist.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-datareader.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-generic-lists.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-observablecollection.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/binding-to-sub-objects.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/reflecting-custom-object-changes-in-rgv.md` | 132 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/tips-when-binding-to-custom-collections.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/tutorial-binding-to-datatable-or-dataset.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/unbound-mode.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/populating-with-data/updating-the-database-with-ado.net.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/structure.md` | 12 | Link Text Clarity | 3 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/gridview/styling-and-appearance/alternating-row-color.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/styling-and-appearance/four-ways-to-customize-radgridview-appearance.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/styling-and-appearance/html-like-text-formatting.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/styling-and-appearance/images.md` | 38 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/styling-and-appearance/images.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/styling-and-appearance/themes.md` | 96 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/view-definitions/column-groups-view.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/view-definitions/overview.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/view-definitions/table-view.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/accessing-and-setting-the-currentcell.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/accessing-cells.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/cell-types.md` | 136 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/creating-custom-cells.md` | 95 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/formating-examples/child-tabs.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/formating-examples/command-cell.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/formating-examples/group-rows.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/formating-examples/style-property.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/formatting-cells.md` | 44 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/cells/formatting-cells.md` | 94 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/gridviewcellinfo.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/iterating-cells.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/painting-and-drawing-in-cells.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/cells/tooltips.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md` | 30 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/accessing-and-iterating-through-columns.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/calculated-column-expressions.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewbrowsecolumn.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewcalculatorcolumn.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewcheckboxcolumn.md` | 74 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewcolorcolumn.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewcomboboxcolumn.md` | 78 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/column-types/gridviewcommandcolumn.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewdateonlycolumn.md` | 92 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewdatetimecolumn.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewdecimalcolumn.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewhyperlinkcolumn.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewimagecolumn.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewmaskboxcolumn.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewmulticomboboxcolumn.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewratingcolumn.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewtextboxcolumn.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewtimeonlycolumn.md` | 119 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/column-types/gridviewtimespancolumn.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/columns.md` | 80 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/converting-data-types.md` | 36 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/converting-data-types.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/data-formatting.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/generating-columns.md` | 44 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/generating-columns.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/gridviewcolumn.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/gridviewdatacolumn.md` | 76 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md` | 32 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/pinning-and-unpinning-columns.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/reordering-columns.md` | 31 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/reordering-columns.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/resizing-columns-programatically.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/columns/working-with-columnchooser.md` | 93 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/columns/working-with-columnchooser.md` | 125 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/adding-and-inserting-rows.md` | 91 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/gridview/visual-elements/rows/conditional-formatting-rows.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/creating-custom-rows.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/drag-and-drop.md` | 116 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/formatting-rows.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/gridviewrowinfo.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/iterating-rows.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/new-row.md` | 136 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/painting-rows.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/pinned-rows.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/removing-rows.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/reordering-system-rows.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/resizing-rows.md` | 124 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/row-behaviors.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/rows-vs-childrows.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/search-row.md` | 94 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/selected-rows-and-current-row.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/summary-rows.md` | 165 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/gridview/visual-elements/rows/tag-property.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/heatmap/populating-with-data/unbound-mode.md` | 38 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/heatmap/selection.md` | 45 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/image-editor/features/adustments.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/canvas-resize.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/crop.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/drawing.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/effects.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/flip.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/history.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/rotate.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/round-corners.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/features/zoom.md` | 18 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/localization.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/overview.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/properties-and-events.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/image-editor/structure.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/customize-layout-mode.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/customizing-appearance.md` | 35 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/layoutcontrol/customizing-appearance.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/design-time.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/drag-and-drop/layoutcontroldragdropservice.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/items.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/layoutcontrol.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/load-layout.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/localization.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/layoutcontrol/properties-events-and-methods.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/custom-items.md` | 52 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/customizing-appearance/accessing-and-customizing-elements.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/customizing-appearance/formatting-items.md` | 46 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/customizing-appearance/formatting-items.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/customizing-appearance/themes.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md` | 34 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/drag-and-drop/detaillistviewdragdropservice.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md` | 49 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/drag-and-drop/drag-and-drop-from-another-control.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/drag-and-drop/drag-and-drop-in-bound-mode.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md` | 32 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/drag-and-drop/drag-and-drop-using-raddragdropservice.md` | 81 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/drag-and-drop/listviewdragdropservice.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/editors/custom-editors.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/editors/default-editors.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/editors/editors.md` | 60 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/editors/editors.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/export-data/spread-export.md` | 142 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/features/features.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/features/filtering.md` | 54 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/features/filtering.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/features/grouping.md` | 49 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/features/grouping.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/features/item-sizing.md` | 96 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/features/selection.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/features/sorting.md` | 45 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/features/sorting.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/listview.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/populating-with-data/data-binding.md` | 111 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/populating-with-data/unbound-mode.md` | 36 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/listview/populating-with-data/unbound-mode.md` | 82 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/properties-methods-events.md` | 143 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/structure.md` | 16 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/touch-support.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/working-with-design-time/adding-columns.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/working-with-design-time/adding-groups.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/working-with-design-time/adding-items.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/listview/working-with-design-time/overview.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/drag-and-drop/ole-drag-and-drop.md` | 37 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/map/drag-and-drop/ole-drag-and-drop.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/layers/clusterization.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/layers/colorization.md` | 45 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/map/features/layers/colorization.md` | 90 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/layers/overview.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/legend.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/minimap.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/navigation-controls.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/pan-and-zoom.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/features/scale-indicators.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/file-readers/esri-shapefile-reader.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/file-readers/kml-reader.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/how-to/adding-pins-and-drawing-regions.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/map-factory.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/overview.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/properties-methods-events.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/bingrestmapprovider.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/elevation/bounds.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/elevation/elevation.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/elevation/list.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/elevation/polyline.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/elevation/sealevel.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/imagery-sets.md` | 41 | Heading Structure | 8 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/map/providers/bingmaps/imagery-sets.md` | 87 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/route.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/search.md` | 41 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/map/providers/bingmaps/search.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/tiles.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/providers/bingmaps/truck-route.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/structure.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/map/tooltips.md` | 36 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/menus/application-menu/design-time.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/application-menu/properties-methods-events.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/application-menu/structure.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/contextmenu/assign-radcontextmenu-to-telerik-and-non-telerik-controls.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/contextmenu/properties-methods-events.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/design-time/menu-designer.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/design-time/smart-tag.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/getting-started.md` | 151 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/menu-merge/mdi-list.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/menu-merge/menu-merge-in-mdi-applications.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/menu-merge/menu-merge.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/overview.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/structure.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/styling-and-appearance/animation-effects.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/styling-and-appearance/menu-background--and-background-image.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/styling-and-appearance/menu-item-images-.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/styling-and-appearance/menu-orientation.md` | 34 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/menus/menu/styling-and-appearance/menu-orientation.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md` | 51 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/menus/menu/working-with-radmenu-items/adding-and-removing-items.md` | 80 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/working-with-radmenu-items/multi-line-menu-item-text.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md` | 43 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/menus/menu/working-with-radmenu-items/radmenuitem-events.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/menus/menu/working-with-radmenu-items/radmenuitem.md` | 76 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/design-time.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/drop-down-properties.md` | 36 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/multicolumncombobox/features/filtering.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/how-to/multiple-selection.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/populating-with-data/databinding.md` | 81 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/populating-with-data/unbound-mode.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/properties-methods-events.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/structure.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/multicolumncombobox/styling-and-appearance/themes.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/navigationview/display-modes.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/navigationview/overview.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/navigationview/properties-methods-events.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/navigationview/structure.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/navigationview/ui-automation.md` | 80 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/notifyicon/features/balloon-notifications.md` | 48 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/notifyicon/features/popup.md` | 95 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/notifyicon/properties-methods-events.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/notifyicon/structure.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/context-menu.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/design-time.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/options-dialog.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/overview.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/peek-window.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/properties-methods-events.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/structure.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/officenavigationbar/view-modes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/architecture.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/backstageview/customizing-backstage-view.md` | 69 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pageview/backstageview/customizing-backstage-view.md` | 143 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/drag-and-drop/radpageviewdragdropservice.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/explorerbarview/customizing-the-explorerbarview.md` | 55 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pageview/explorerbarview/customizing-the-explorerbarview.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/explorerbarview/overview.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/explorerbarview/using-the-keyboard.md` | 16 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/how-to/add-contextMenu-to-radpageviewpage-tabs.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/how-to/programatically-adding-pages.md` | 34 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pageview/how-to/programatically-adding-pages.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/how-to/subscribing-to-radpageviewpage-events.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/localization/localization.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/localization/right-to-left-support.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/navigation-view/overview.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/outlookview/outlook-element-properties-methods-events.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/outlookview/overview.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/outlookview/using-the-overflow-grip.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/outlookview/using-the-overflow-menu.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/overview.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/peek-window.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/properties-methods-events.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stackview/customizing-the-selection-mode.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stackview/customizing-the-stack-position.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stackview/overview.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stripview/fitting-items.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stripview/getting-started.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stripview/new-item.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stripview/scrolling-and-overflow-(strip-buttons).md` | 80 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/stripview/strip-element-properties.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pageview/upgrading-to-radpageview.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/collapsiblepanel/customizing-appearance/themes.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/collapsiblepanel/design-time.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/collapsiblepanel/getting-started.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/collapsiblepanel/properties-methods-events.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/collapsiblepanel/structure.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/collapsiblepanel/working-with-radcollapsiblepanel.md` | 121 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/groupbox/customizing-appearance/accessing-and-customizing-elements.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/groupbox/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/groupbox/design-time.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/groupbox/header-styling-options.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/groupbox/properties.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/groupbox/structure.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/label/customizing-appearance/themes.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/label/design-time.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/label/html-like-text-formatting.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/label/overview.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/label/properties.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/label/structure.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/customizing-appearance/creating-a-radpanel-with-gradient-background.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/customizing-appearance/creating-a-radpanel-with-rounded-corners.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/customizing-appearance/themes.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/design-time.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/getting-started.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/overview.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/properties.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panels-and-labels/panel/structure.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/custom-tiles.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/customizing-appearance/accessing-and-customizing-elements.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/customizing-appearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/design-time.md` | 97 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/drad-and-drop/drag-and-drop.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/drad-and-drop/tiledragdropservice.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/live-tile-editor.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/overview.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/scrolling.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/structure.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/tiles.md` | 48 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/panorama/tiles.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/panorama/touch-support.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/customize-and-extensibility/customize-pdf-rendering.md` | 87 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/design-time.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/navigation.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/printing-support.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/text/text-position.md` | 87 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/text/text-search.md` | 92 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/text/text-selection.md` | 62 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pdfviewer/features/text/text-selection.md` | 107 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/thumbnails.md` | 33 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pdfviewer/features/thumbnails.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/features/unsupported-features.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/how-to/handle-rendering-events.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/keyboard-and-mouse-support.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/localization.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/overview.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/pdfviewernavigator.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/properties-methods-events.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/structure/logical-structure.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/structure/visual-structure.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/troubleshooting-common-problems.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/ui/context-menu.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/ui/document-modes.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pdfviewer/ui/viewer-modes.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/picturebox/features/context-menu.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/picturebox/features/edit.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/picturebox/features/pan-and-zoom.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/picturebox/features/working-with-panels.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/binding-with-radchartview.md` | 33 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/binding-with-radchartview.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/calculated-fields.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/calculated-items.md` | 43 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/calculated-items.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/context-menu.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/custom-aggregation.md` | 39 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/custom-aggregation.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/custom-group-comparer.md` | 87 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/custom-group-comparer.md` | 263 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/customizing-appearance/formatting-appearance.md` | 39 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/customizing-appearance/formatting-appearance.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/design-time/property-builder.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/design-time/smart-tag.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/dialogs/custom-dialogs.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/dialogs/overview.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/drag-and-drop/pivotfieldlistdragdropservice.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/drag-and-drop/pivotgriddragdropservice.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/drilldown.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/end-user-functionalities.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/expand-behavior.md` | 49 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/expand-behavior.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/exporting-data/export-to-excel-via-excelml-format.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/exporting-data/export-to-pdf.md` | 82 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/exporting-data/export-to-pdf.md` | 104 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/exporting-data/spread-export.md` | 130 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/exporting-data/spread-export.md` | 145 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/filtering/group-filters.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/filtering/report-filters.md` | 42 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/filtering/report-filters.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/layout-settings.md` | 40 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/layout-settings.md` | 75 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/localization/localization.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md` | 53 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/pivot-field-list/customizing-radpivotfieldlist.md` | 104 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/pivot-field-list/overview.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/binding-to-icustomtypeprovider.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/design-time-data-binding.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md` | 81 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/populating-with-data/using-the-adomddataprovider.md` | 92 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/using-the-datasource-property.md` | 35 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/populating-with-data/using-the-datasource-property.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md` | 40 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/populating-with-data/using-the-localsourcedataprovider.md` | 121 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md` | 43 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/populating-with-data/using-the-queryabledataprovider.md` | 117 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md` | 83 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/pivotgrid/populating-with-data/using-the-xmladataprovider.md` | 94 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/printing-support/events-and-customization.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/printing-support/overview.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/printing-support/pivotgridprintstyle.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/save-and-load-layout/overview.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/save-and-load-layout/serialize-adomddataprovider.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/save-and-load-layout/serialize-custom-aggregates.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/save-and-load-layout/serialize-xmladdataprovider.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/sorting.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/pivotgrid/structure.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/attributes.md` | 165 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/custom-items.md` | 76 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/customizing-appearance/customization.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/design-time.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/api.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/customizing-editor-behavior.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/events.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/handling-editors'-events.md` | 36 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/propertygrid/editors/handling-editors'-events.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/overview.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/using-custom-editor.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/editors/validation.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/export-data/spread-export.md` | 142 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/propertygrid/features/custom-grouping.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/features/filtering.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/features/grouping.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/features/help-bar.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/features/kinetic-scrolling.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/features/sorting.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/features/toolbar.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/how-to/custom-keyboard-handling.md` | 54 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/propertygrid/how-to/custom-keyboard-handling.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/item-elements.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/keyboard-navigation.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/localization.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/overview.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/populating-with-data/binding-to-multiple-objects.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/populating-with-data/radpropertystore-adding-custom-properties.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/structure.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/touch-support.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/propertygrid/type-converters.md` | 47 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/propertygrid/type-converters.md` | 115 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/rangeselector/design-time.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/rangeselector/getting-started.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/rangeselector/integration-with-radchartview.md` | 49 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/rangeselector/properties-and-events.md` | 109 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/rangeselector/structure.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ribbonbar/backstage-view/working-with-backstage-view.md` | 60 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/ribbonbar/customizing-appearance/themes.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ribbonbar/design-time.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ribbonbar/designing-radribbonbar/creating-the-start-menu-quick-access-toolbar-and-shortcuts.md` | 169 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/ribbonbar/programming-radribbonbar/adding-and-removing-groups-and-buttons.md` | 41 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups.md` | 45 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/ribbonbar/programming-radribbonbar/customizing-the-application-menu.md` | 47 | Heading Structure | 5 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/ribbonbar/simplified-mode/customizing-simplified-layout.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/ribbonbar/simplified-mode/simplified-mode.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/annotations/manipulating-annotations.md` | 101 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/annotations/overview.md` | 104 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/annotations/overview.md` | 13 | Link Text Clarity | 6 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/richtexteditor/document-elements/break.md` | 37 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/document-elements/break.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/inline-image.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/paragraph.md` | 70 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/raddocument.md` | 94 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/section.md` | 126 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/document-elements/span.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/events.md` | 124 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/clipboard-support.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/comments.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/content-controls/content-controls.md` | 139 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/content-controls/working-with-content-controls.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/custom-fonts.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/document-protection.md` | 123 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/fields-and-document-variables/fields.md` | 109 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/headers-and-footers.md` | 114 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/history.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md` | 70 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/mail-merge/insert-new-line-in-merge-field.md` | 107 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/mentions/mentions-custom-provider.md` | 72 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/mentions/mentions-overview.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/merge-documents/append.md` | 57 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/merge-documents/merge.md` | 39 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/paste-options.md` | 84 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/positioning.md` | 119 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/positioning.md` | 155 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/raddocumenteditor.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/read-only-ranges.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/repeat-table-header-row.md` | 81 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/search.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/section-columns.md` | 122 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/selection.md` | 138 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/features/selection.md` | 183 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/features/watermark.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/getting-started/formatting-api.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/getting-started/layout-modes.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/how-to/drag-and-drop.md` | 33 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/how-to/drag-and-drop.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ime-support.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/import-export/docx/docxformatprovider.md` | 40 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/import-export/html/htmlformatprovider.md` | 50 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/import-export/overview.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/import-export/plain-text/txtformatprovider.md` | 48 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/import-export/rtf/rtfformatprovider.md` | 50 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/import-export/rtf/settings.md` | 37 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/import-export/xaml/xaml-verification.md` | 31 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/import-export/xaml/xamlformatprovider.md` | 38 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/keyboard-support.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/overview.md` | 14 | Link Text Clarity | 24 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/richtexteditor/printing.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/applying-styles.md` | 85 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md` | 46 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/context-menu.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/editing-images.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/how-to/custom-ribbon.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/ribbon-ui.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-for-applying-rich-text-formatting/section-columns.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/ui-virtualization.md` | 17 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/richtexteditor/upgrading-to-radrichtexteditor.md` | 71 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appearance/appointment-styles.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appearance/formatting-appointments.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appearance/formatting-cells.md` | 84 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/appearance/formatting-cells.md` | 95 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md` | 46 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/appearance/modify-size-of-rows-columns-and-resources.md` | 90 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appearance/themes-and-appearance.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog.md` | 82 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/adding-tooltips-to-appointments.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/custom-appointment-element.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/recurrence-rule-walkthrough.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/working-with-appointments.md` | 55 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/appointments-and-dialogs/working-with-appointments.md` | 151 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md` | 68 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/appointments-and-dialogs/working-with-recurring-appointments.md` | 80 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/appointments-and-dialogs/working-with-resources.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/context-menu/customize-the-contextmenu.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/binding-to-access-db(tips-and-tricks).md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/binding-to-business-objects.md` | 46 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/data-binding/binding-to-business-objects.md` | 134 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/binding-to-custom-fields.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/binding-to-entityframework-and-telerik-data-access.md` | 13 | Link Text Clarity | 3 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/scheduler/data-binding/codeless-data-binding.md` | 130 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/data-binding-walkthrough.md` | 120 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/introduction.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/sample-database.md` | 203 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/scheduler-mapping.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md` | 48 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/data-binding/setting-appointment-and-resource-relations.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/using-a-data-provider.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/using-datasource-property.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/working-with-exceptions.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/data-binding/working-with-resources.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/design-time/smart-tag.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/dialogs/editappointmentdialog.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/dialogs/radschedulerdialog.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/drag-and-drop/appointmentdraggingbehavior.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md` | 58 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/drag-and-drop/drag-and-drop-from-another-control.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/drag-and-drop/drag-and-drop-using-raddragdropservice.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/end-user-functionality/adding-appointments.md` | 95 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/end-user-functionality/copy-paste-cut.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/end-user-functionality/editing-appointments-.md` | 56 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/end-user-functionality/editing-appointments-.md` | 112 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/end-user-functionality/print-support.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/end-user-functionality/resizing-moving-and-deleting-appointments.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/end-user-functionality/scheduler-navigation.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/appointment-factory.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/appointment-resizing-behavior.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/appointment-title-formatter.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/input-behavior.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/scheduler-element-provider-.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/scheduler-ruler.md` | 99 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/fundamentals/scheduler-selection.md` | 82 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/holidays.md` | 71 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/how-to/loading-data-for-selected-day-only.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/importing-and-exporting-appointments/export-to-a-custom-file.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/importing-and-exporting-appointments/export-to-icalendar.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/importing-and-exporting-appointments/import-from-icalendar.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/localization/localizing-dialog-strings.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/localization/localizing-scheduler-navigator.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/localization/right-to-left-support.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/localization/translating-strings.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/overview.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/print-support/events-and-customization.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/print-support/print-support-overview.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/print-support/schedulerprintstyles.md` | 84 | Heading Structure | 6 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/print-support/schedulerprintstyles.md` | 189 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/reminders/load-reminders.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/reminders/localizing-reminder-strings.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/reminders/radreminder.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/reminders/radschedulerreminder.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/scheduler-navigator/getting-started.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/scheduler-navigator/navigation-step.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/scheduler-navigator/overview.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/scheduler-navigator/search.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/agenda-view.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/common-visual-properties.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/day-view.md` | 38 | Heading Structure | 15 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/day-view.md` | 245 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/exact-time-rendering.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/grouping-by-resources.md` | 46 | Heading Structure | 5 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/grouping-by-resources.md` | 149 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/month-view.md` | 44 | Heading Structure | 16 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/month-view.md` | 228 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/multiday-view.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/overview-and-structure.md` | 90 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/scheduler-cell-containers.md` | 39 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/scheduler-cell-containers.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/time-zones.md` | 152 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/timeline-view.md` | 42 | Heading Structure | 8 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/timeline-view.md` | 152 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/views-walkthrough.md` | 81 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/week-view.md` | 39 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/week-view.md` | 69 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/work-week-view.md` | 39 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/scheduler/views/work-week-view.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/scheduler/views/working-with-views.md` | 63 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/shortcuts/assigning-global-radshortcuts.md` | 156 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/shortcuts/getting-started-(radbuttons).md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/shortcuts/getting-started-(radmenuitems).md` | 117 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/shortcuts/properties-methods.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/sparkline/features/annotations.md` | 64 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/sparkline/overview.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/sparkline/tooltips.md` | 32 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/speechtotextbutton/getting-started.md` | 77 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/spellchecker/dictionaries.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/spellchecker/overview.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/spellchecker/properties-methods-events.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/spellchecker/spell-check-as-you-type.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/spellchecker/spellchecking-radgridview.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/flyout/overview.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/overlay/customize-appearance.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/overlay/getting-started.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/overlay/how-to/custom-overlay-screen.md` | 160 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/overlay/overview.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/splashscreen/custom-splash.md` | 356 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/splashscreen/getting-started.md` | 150 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/splashscreen/overview.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/splashscreen/properties-methods-events.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splashscreens/splashscreen/structure.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/building-a-layout-of-radsplitcontainers-programmatically.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/building-advanced-layouts.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/customizing-appearance/accessing-and-customizing-elements.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/customizing-appearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/design-time.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/getting-started.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/properties.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/splitter-buttons.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/splitcontainer/structure.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/spreadsheet/events.md` | 127 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/spreadsheet/features/freeze-panes.md` | 59 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/spreadsheet/features/ui-working-with-selection.md` | 115 | Heading Structure | 4 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/spreadsheet/features/ui-working-with-selection.md` | 295 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/spreadsheet/how-to/hide-row-column-headers-and-gridlines.md` | 33 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/features/caret.md` | 34 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/features/find-and-replace.md` | 70 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/syntax-editor/features/fonts.md` | 31 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/features/intelliprompts.md` | 36 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/features/intelliprompts.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/syntax-editor/features/layers.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/syntax-editor/features/margins.md` | 101 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/syntax-editor/features/selection.md` | 36 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/features/selection.md` | 74 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/syntax-editor/features/taggers/custom-taggers.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/syntax-editor/features/zooming.md` | 33 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/getting-started.md` | 66 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/structure.md` | 33 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/syntax-editor/structure.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-adding-task-cards.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-adding-user-and-tasks.md` | 35 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/task-board/task-board-design-time.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-drag-drop.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-getting-started.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-properties-methods-events.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-structure.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-board/task-board-tooltips.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-dialog/overview.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-dialog/task-dialog-element-types.md` | 60 | Heading Structure | 5 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/task-dialog/task-dialog-element-types.md` | 106 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-dialog/task-dialog-icons.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-dialog/task-dialog-localization.md` | 108 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/task-dialog/task-dialog-structure.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/taskbar-button/design-time.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/taskbar-button/features/thumbnail-buttons.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/taskbar-button/overview.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/taskbar-button/properties-methods-events.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/taskbar-button/structure.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/taskbar-button/taskbar-manager.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/toast-notification/design-time.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/toast-notification/notification-templates.md` | 279 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/toast-notification/overview.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/toast-notification/register.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/progressbar/control-element-structure.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/progressbar/customizing-appearance/accessing-and-customizing-elements.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/progressbar/customizing-appearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/progressbar/overview.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/progressbar/properties-methods-events.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/rating/design-time.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/rating/properties-and-events.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/rating/rating.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/rating/structure.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/scrollbar/control-element-structure.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/scrollbar/customizing-appearance/accessing-and-customizing-elements.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/scrollbar/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/scrollbar/programming-radscrollbars.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/stepprogressbar/customizing-appearance/custom-indicator.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/stepprogressbar/customizing-appearance/customize-step-item.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/stepprogressbar/design-time.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/stepprogressbar/features/tooltip.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/stepprogressbar/overview.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/stepprogressbar/structure.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/control-element-structure.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/customizing-appearance/accessing-and-customizing-elements.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/customizing-appearance/customization.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/customizing-appearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/design-time.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/modes.md` | 74 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/properties-events.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/trackbar/trackbar.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/customizing-appearance/accessing-and-customizing-elements.md` | 97 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/design-time.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/indicator-elements.md` | 93 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/properties-methods-events.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/structure.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/waiting-styles.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/track-and-status-controls/waitingbar/waitingbar.md` | 51 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/colorizers.md` | 111 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/customizing-appearance.md` | 82 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/data-binding.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/design-time.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/features/grouping.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/features/legend.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/features/tooltips.md` | 81 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/layout-strategies.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/overview.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/properties-methods-events.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/structure.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treemap/unbound-mode.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/breadcrumb.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/context-menus/custom-context-menus.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/context-menus/default-context-menu.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/context-menus/modifying-the-default-context-menu.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/binding-to-database-data.md` | 67 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/binding-to-object-relational-data.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/binding-to-self-referencing-data.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/binding-to-xml-data.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/databinding-checkboxes.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/deserialize-to-xml.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/load-on-demand-with-crud-operations.md` | 77 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/load-on-demand.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/overview.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/performance.md` | 18 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/togglestateconverter.md` | 82 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/data-binding/togglestateconverter.md` | 13 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `controls/treeview/design-time/property-builder.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/design-time/smart-tag.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/drag-and-drop/cancel-a-drag-and-drop-operation.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/drag-and-drop/drag-and-drop-in-bound-mode.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/drag-and-drop/enabling-drag-and-drop.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/drag-and-drop/modify-the-dragdropservice-behavior.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/drag-and-drop/treeviewdragdropservice.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/editing/custom-editors.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/editing/editing-nodes.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/export-data/spread-export.md` | 150 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/treeview/how-to/assign-radscreentip-to-nodes.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/how-to/keep-radtreeview-states-on-reset.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/localization/localization.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/localization/right-to-left-support.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/properties-methods-events.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/structure.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/styling-and-appearance/editing-themes.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/styling-and-appearance/themes.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/styling-and-appearance/tree-lines-and-rows.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/touch-support.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/treeview.md` | 97 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/ui-automation.md` | 79 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/treeview/usability/keyboard-navigation.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/usability/kinetic-scrolling.md` | 18 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/adding-and-removing-nodes.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/bring-a-node-into-view.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/custom-filtering.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/custom-nodes.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/custom-sorting.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/events.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/filtering-nodes.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/finding-nodes.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/formatting-nodes.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/reordering-nodes.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/scrolling-nodes.md` | 85 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/treeview/working-with-nodes/selecting-nodes.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/sorting-nodes.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/treenode-text-value.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/treeview/working-with-nodes/using-checkboxes.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/validation-provider/customizing-error-indication.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/validation-provider/design-time.md` | 110 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/validation-provider/overview.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/validation-provider/supported-controls.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/validation-provider/validation-rules.md` | 121 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/customizing-appearance/accessing-and-customizing-elements.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/customizing-appearance/themes.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/default-layouts.md` | 50 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/virtual-keyboard/default-layouts.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/logical-keyboard-layout.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/overview.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/properties-methods-events.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/structure.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtual-keyboard/virtual-keyboard-form.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/customizing-apearance/themes.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/design-time/smart-tag.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/editing-behavior.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/filtering.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/keyboard-support.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/resizing-columns.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/resizing-rows.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/scrolling-support.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/end-user-capabilities/sorting.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/busy-indicators.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/context-menu/context-menu.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/context-menu/custom-context-menu.md` | 40 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/virtualgrid/features/context-menu/custom-context-menu.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/context-menu/modifying-the-default-context-menu.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/copy-paste-cut.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/editing/api.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/editing/changing-default-editor.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/editing/changing-editors-properties.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/editing/events.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/editing/events.md` | 12 | Link Text Clarity | 3 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `controls/virtualgrid/features/filtering/filtering.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/filtering/setting-filters-programmatically.md` | 50 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `controls/virtualgrid/features/filtering/setting-filters-programmatically.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/paging/paging-overview.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/paging/paging-panel.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/save-and-load-layout/advanced.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/save-and-load-layout/overview.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/scrolling.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/selection/multi-select.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/selection/selecting-progrmmatically.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/selection/selection.md` | 62 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/features/sorting/setting-sorting-programmatically.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/fundamentals/element-hierarchy.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/fundamentals/key-features.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/fundamentals/row-types.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/fundamentals/ui-virtualization.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/how-to/summary-rows.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/localization/localization.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/localization/right-to-left-support.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/overview.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/cells/creating-custom-cells.md` | 85 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/cells/formatting-data-cells.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/cells/formatting-system-cells.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/cells/tooltips.md` | 17 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/columns/pining-columns.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/columns/resizing-columns-programmatically.md` | 99 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/rows/alternating-row-colors.md` | 24 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/rows/formatting-data-rows.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/rows/formatting-system-rows.md` | 34 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/rows/pinned-rows.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/rows/resizing-rows-programmatically.md` | 83 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/visual-elements/rows/system-rows.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/working-with-data/handle-add-delete-update-of-rows.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/virtualgrid/working-with-data/virtualgrid-populating-with-data.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/design-time.md` | 61 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/localization.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/modes.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/pages.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/properties-methods-events.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/right-to-left-support.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `controls/wizard/structure.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `getting-started/first-steps.md` | 35 | Code Block Accessibility | 2 fenced code blocks do not declare a language. | Add an appropriate language identifier to every fenced code block. |
| `installation-and-upgrades/install-using-nuget.md` | 133 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `installation-and-upgrades/install-using-nuget.md` | 12 | Link Text Clarity | 4 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `installation-and-upgrades/installation.md` | 28 | Code Block Accessibility | 5 fenced code blocks do not declare a language. | Add an appropriate language identifier to every fenced code block. |
| `installation-and-upgrades/telerik-cli.md` | 13 | Link Text Clarity | 3 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `installation-and-upgrades/updating-assemblies-in-a-project.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `integration-with-other-telerik-products/document-processing-libraries.md` | 11 | Link Text Clarity | 6 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `knowledge-base/access-gridview-elements.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/change-checkbox-size.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/chartview-summary-labels-stacked-bars.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/checked-dropdownlist-add-tokens.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/custom-resizing-behavior-in-radscheduler.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/customize-rating-column.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/dashboard-demo.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/dataentry-customize-editor-controls-layout.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/dataentry-properties-order.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/deal-with-slow-webcam-preview-on-start.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/diagram-restricting-drag-direction.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/distinguishing-the-source-control-of-radcontextmenu.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/double-buffered-table-layout.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/dropdownlist-style-indicating-focus.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/filtering-indicators-in-gridview.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/free-text-in-combobox-column.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/ganttview-custom-input-behavior.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/ganttview-zoom-to-date-range.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/grid-format-group-key.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/gridview-auto-size-rows-to-fill.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/gridview-drag-drop-bound-mode.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/gridview-improve-down-arrow-key-performance.md` | 33 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `knowledge-base/gridview-permanenteditor-in-filter-cell.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/hdpi-tips-and-tricks.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/how-to-change-gauges-value-with-the-mouse-keyboard.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/how-to-play-video-files.md` | 13 | Link Text Clarity | 4 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `knowledge-base/kb-installation-cannot-load-licensing-assembly.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/kb-installation-missing-license-vs-2019.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/kb-installation-missing-licensing-assembly.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/keep-states-on-reset.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/map-point-with-radius.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/masked-edit-box-play-sound.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/negative-area-chart.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/pdfviewer-silent-print.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/pivotgrid-changing-default-aggregate-function.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/propertygrid-bestfit-options.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/propertygrid-dropdown-editor.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/radchartview-restrict-zoom-interval.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/radmap-export-to-an-image.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/radmap-pins-with-an-image.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/scheduler-custom-time-scale.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/scheduler-minutely-recurrence-pattern.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/scheduler-month-view-comparer.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/scheduler-update-timeline-header-text.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/scientific-notation-leading-zeros-spineditor.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/server-side-paging-in-virtualgrid.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/shopping-cart-lsitview-custom-item.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/snapping-per-day-in-radganttview.md` | 16 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/tabbedform-keep-show-new-tab-button.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/textboxcontrol-autocomplete-contains.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/tooltip-on-disabled-element.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/tree-view-handle-keypress.md` | 14 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/treeview-different-custom-nodes.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `knowledge-base/treeview-find-node-by-value.md` | 15 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/adding-a-custom-theme-as-a-file.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/adding-a-custom-theme-as-a-resource.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/advanced-topics/adding-custom-redistributable-themes-to-your-application/creating-a-theme-component.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/theme-tutorials/customizing-material-theme.md` | 88 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/themes-style.md` | 165 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/touch-themes.md` | 53 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/using-a-default-theme-for-the-entire-application.md` | 68 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/using-custom-themes.md` | 127 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `styling-and-appearance/using-default-themes.md` | 91 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/animations.md` | 75 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `telerik-presentation-framework/animations.md` | 165 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/baseprimitive.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/choosing-an-ancestor-class.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/class-hierarchy-overview.md` | 36 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/layoutpanel.md` | 17 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/radcomponent-radcomponentelement.md` | 17 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/radcontrol.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/radelement.md` | 137 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/raditem.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/radobject.md` | 429 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/radproperty.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/radpropertymetadata.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/class-hierarchy/visualelement.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/custom-fonts.md` | 82 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/dependency-properties.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/dpi-support.md` | 175 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/dpi-support.md` | 49 | Table Accessibility | 1 HTML table(s) lack header cells. | Mark column or row headers with `<th>` and associate them with data cells. |
| `telerik-presentation-framework/elements/overview.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/elements/radradiobuttonelement.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/elements/radtrackbarelement.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/events/clr-events.md` | 48 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/events/routed-events.md` | 20 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/export-renderers/pdfexportrenderer.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/export-renderers/spreadexportrenderer.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md` | 73 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `telerik-presentation-framework/export-renderers/spreadstreamexportrenderer.md` | 124 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/focus-border-and-ripple-animations.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/getting-started/getting-started.md` | 172 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `telerik-presentation-framework/getting-started/getting-started.md` | 273 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/glyphs.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/handling-user-input.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/inherit-themes-from-radcontrols-derivatives.md` | 91 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/clipping.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/custom-layouts.md` | 98 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/element-offset-calculations.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/layout-activation.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/layout-logic.md` | 89 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/layout-overview.md` | 43 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/layout-structure.md` | 100 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/predefined-layout-panels/boxlayout.md` | 176 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/predefined-layout-panels/docklayout.md` | 209 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/predefined-layout-panels/gridlayout.md` | 139 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/predefined-layout-panels/imageandtextlayoutpanel.md` | 288 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/predefined-layout-panels/stacklayoutpanel.md` | 84 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/predefined-layout-panels/wraplayoutpanel.md` | 80 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/radcontrol-testing-considerations.md` | 17 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/sample-arrange-stage-scenarios.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/setting-metadata-to-influence-layout.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/layout/sizing-properties.md` | 70 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/markup-dialog/localization.md` | 172 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/markup-dialog/radmarkupdialog.md` | 136 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/microsoft-active-accessibility-support.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/mouse-effects.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/override-theme-settings-at-run-time.md` | 147 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/overview/building-tpf-based-controls.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/overview/introducing-the-telerik-presentation-framework.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/overview/overview.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/popupmanager.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/arrowprimitive.md` | 76 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/borderprimitive.md` | 70 | Heading Structure | 3 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `telerik-presentation-framework/primitives/borderprimitive.md` | 182 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/checkprimitive.md` | 74 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/fillprimitive.md` | 129 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/focusprimitive.md` | 64 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/gripprimitive.md` | 74 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/imageprimitive.md` | 103 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/imageshape.md` | 73 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/lightvisualelement.md` | 257 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/lineprimitive.md` | 104 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/overflowprimitive.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/progressbarprimitive.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/radioprimitive.md` | 17 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/textprimitive.md` | 78 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/primitives/trackbarprimitive.md` | 65 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/end-user-functionality/print-preview-dialog.md` | 87 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/end-user-functionality/print-settings-dialog.md` | 30 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/end-user-functionality/watermark-dialog.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/how-to/customize-radprintdocument.md` | 168 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/localize-print-dialogs.md` | 453 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/radprintdocument/design-time.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/radprintdocument/header-and-footer.md` | 133 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/radprintdocument/overview.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/printing-support/radprintdocument/watermark.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/section-508-compliance.md` | 12 | Link Text Clarity | 3 links use vague text or appear as bare URLs. | Use concise link text that names the destination or action. |
| `telerik-presentation-framework/shadows.md` | 57 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/chamfered-rect-shape.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/circle-shape.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/custom-shapes.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/diamond-shape.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/donut-shape.md` | 42 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/elipse-shape.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/heart-shape.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/media-shape.md` | 39 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/office-shape.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/qa-shape.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/round-rect-shape.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/star-shape.md` | 45 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/tab-vs-shape.md` | 46 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/shapes/trackbar-thumb-shape.md` | 72 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/text-rendering.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/tooltips-and-screentips/radtooltip.md` | 165 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/tooltips-and-screentips/screen-tips.md` | 170 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/tooltips-and-screentips/tooltips.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/touch-support.md` | 208 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `telerik-presentation-framework/vector-images-support.md` | 215 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `testing/test-complete/overview.md` | 22 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/controlspy/adding-the-control-spy-to-your-application.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/controlspy/controlspy.md` | 27 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/controlspy/inspecting-properties.md` | 33 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/shapeeditor/getting-started.md` | 54 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/shapeeditor/shape-editor-user-interface.md` | 37 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/shapeeditor/shapeeditor.md` | 19 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/shapeeditor/using-the-custom-shape-editor/adding-and-removing-points.md` | 23 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/shapeeditor/using-the-custom-shape-editor/moving-and-locking-points.md` | 25 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/shapeeditor/using-the-custom-shape-editor/using-bezier-curves.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/theme-manager/adding-radthememanager-to-a-form.md` | 35 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/theme-manager/applying-a-theme-to-a-control.md` | 21 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/theme-manager/editing-themes.md` | 56 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/theme-manager/load-themes-from-a-resource.md` | 41 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/theme-manager/load-themes-from-an-external-file.md` | 44 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/architecture.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/concepts.md` | 52 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/getting-started.md` | 126 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/overview.md` | 29 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/starting-vsb.md` | 26 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/applying-font-repository-items.md` | 60 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/color-blending.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/crystal-themes-blending.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/fluent-themes-blending.md` | 55 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/loading-predefined-themes.md` | 40 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/loading-themes-created-with-the-old-vsb.md` | 38 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/material-themes-blending.md` | 50 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/office2019-themes-blending.md` | 79 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/precedence-example-visibility-property.md` | 31 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/property-precedence-rules.md` | 66 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/saving-and-loading-theme-files.md` | 204 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/visualstudio2022-themes-blending.md` | 47 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `tools/visual-style-builder/working-with-visual-style-builder/working-with-repository-items.md` | 106 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/install-nuget-keys.md` | 112 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/visual-studio-extensions/configure-project.md` | 49 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/visual-studio-extensions/convert-project.md` | 59 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/visual-studio-extensions/create-project.md` | 58 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/visual-studio-extensions/default-theme-vs-extensions.md` | 28 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/visual-studio-extensions/toolbox-configurator.md` | 32 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |
| `visual-studio-integration/visual-studio-extensions/upgrade-project.md` | 80 | Heading Structure | 2 heading-level skips disrupt the outline. | Use sequential levels, such as H2 followed by H3, without skipping levels. |
| `visual-studio-integration/visual-studio-templates.md` | 86 | Heading Structure | The article contains multiple H1 headings. | Keep one H1 for the article title and use H2 or lower for sections. |

## Human Review Required

Image purpose cannot be determined reliably from Markdown source alone. The following cases were flagged without a severity classification; confirm whether each image is informative or decorative, then add an appropriate text alternative or mark decorative imagery with empty alt text.

- `telerik-presentation-framework/html-like-text-formatting.md:59` — Image source `HTML image` has no alt text; source context does not establish whether it is informative or decorative.
- `telerik-presentation-framework/html-like-text-formatting.md:147` — Image source `HTML image` has no alt text; source context does not establish whether it is informative or decorative.
- `telerik-presentation-framework/html-like-text-formatting.md:159` — Image source `HTML image` has no alt text; source context does not establish whether it is informative or decorative.
