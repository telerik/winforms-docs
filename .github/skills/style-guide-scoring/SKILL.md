---
name: style-guide-scoring
description: "Scores a single markdown article against the Progress DevTools Style Guide. Use when reviewing documentation quality, evaluating articles for style compliance, or running the docs-scoring agent. Returns a structured JSON block with per-dimension scores (1-5), rationale, and violations."
argument-hint: "Path to the markdown article to score, e.g. C:\\docs\\articles\\overview.md"
---

# Style Guide Scoring

You are an expert technical documentation reviewer. Evaluate the provided markdown article against the **Progress DevTools Style Guide** and produce a structured JSON score.

## Source

Use the scoring rules defined in this skill as the default source of truth. The full style guide is maintained in the Telerik organization's [tech-docs-style-guide repository](https://github.com/telerik/tech-docs-style-guide) for optional deeper review. Do not require a local folder or clone.

When the prompt explicitly requires the full guide, fetch only the specific source files needed for the requested check from that repository's default branch (currently `master`) using the GitHub API, `gh`, or web tools. The filenames cited in this skill, such as `metadata.md` and `titles-and-headings.md`, are relative to the repository root. For example, read `metadata.md` at https://github.com/telerik/tech-docs-style-guide/blob/master/metadata.md. Do not scan the whole repository.

If remote access fails or a required file is missing, report the limitation explicitly. Do not silently fall back to a local folder or claim to have reviewed source files that were not retrieved. Scores based only on this skill's embedded rules must be identified as such when the requested deeper review could not be completed.

## Additional Guide Coverage

Apply the following cross-cutting rules under the closest existing scoring dimension. Do not add extra JSON dimensions unless the prompt explicitly asks for them.

Only apply artifact-specific checks when the article actually contains that artifact or scenario. For example, do not penalize an article for missing image-caption rules when it has no images.

* Numbers (`numbers.md`): Spell out integers from zero to nine unless the text refers to a product name, version number, or a space-constrained element such as a table. Use digits for 10 and above. Use period-separated decimals (`10.6`). Use an en dash for ranges (`1&ndash;15`) with no spaces. Do not begin sentences, titles, headings, or captions with numerals.
* Vocabulary and terminology (`vocabulary.md`, `brandnames.md`, `click-tap-select.md`, `personal-pronouns.md`): Prefer `checkbox`; use `click X` and `tap X`; use `hover over` as the verb and `hover` or `hovering` as the noun or adjective; prefer `unavailable` over `disabled` or `grayed out` for irrelevant UI state; use `earlier` and `later` for versions; use `starting with` instead of `since` or `as of` for version introductions; preserve official company, product, and third-party spelling; prefer gender-neutral pronouns or rewrite to avoid unnecessary gendering.
* Programming language display names: In prose, headings, and code-block labels (tab headers, bold introductions), always write **C#** and **VB.NET**. Do not use alternative forms such as "csharp", "CSharp", "C Sharp", "vb", "VB", "Visual Basic", or "VB.Net". The fenced-code-block language tag must also follow this rule: use ` ```C# ` and ` ```VB.NET ` instead of ` ```csharp ` or ` ```vb `.
* Links and cross-references (`cross-references.md`): Use descriptive anchor text that explains the destination or purpose. Vary repeated anchor text when citing the same resource often. Paraphrase internal documentation titles instead of quoting them exactly. Cite exact external resource titles and authors. When HTML syntax is available, prefer opening external links in a new tab.
* Images, tables, and captions (`screenshots.md`, `tables-figures-code.md`): Every image requires descriptive alt text and a meaningful sentence or exact `>caption` block immediately before it. Image captions use sentence case, never standalone bold text or headings; this overrides other caption styling for images. Table/code captions may remain bold, descriptive, in sentence case, and before the element. Do not leave table cells blank; use `N/A`, `Not applicable`, or `None` when needed. Flag screenshots that expose sensitive data or visibly ignore default/light UI guidance.

---

## Scoring Dimensions

Score each dimension from **1 (poor) to 5 (excellent)**. Provide a numeric score, a short rationale (≤ 2 sentences), and a list of specific violations found (empty array if none). At the end, compute an **overall score** as the weighted average (see weights below).

When a rule from the "Additional Guide Coverage" section applies, score it under the closest existing dimension instead of inventing a new output field.

Report violations with their locations and proposed corrections without editing during review-only scoring. An affected dimension cannot receive a perfect score, and a weighted score does not waive an unresolved required correction.

## WinForms Repository Precedence

Use the applicable nested skills under
`../telerik-documentation-style-guide/` before the generic checks below.
The [metadata skill](../telerik-documentation-style-guide/style-metadata-links/SKILL.md)
protects all existing frontmatter unless edits to named fields are authorized,
uses `page_title`, permits short navigation titles, and preserves historical
slash-separated slugs and redirects. A standard H1 need not repeat the sidebar
title verbatim. Existing `previous_url` values need not start with `/`.
Use 120-150 characters for new or authorized descriptions; report existing
defects without changing protected fields. The local link rules permit exact
article titles, repeated accurate anchors, and renderer-controlled new tabs.
Apply these overrides to both scores and violation lists. Preserve the existing
`C#` and `VB.NET` language-display and fence-label rule.

### 1. Metadata & Front Matter — weight 15 %

Source: `metadata.md`

| Check | Pass condition |
|---|---|
| YAML front matter present | Article starts with `---` block |
| `title` field | Present and non-empty |
| `page_title` | Present; concise and descriptive, following neighboring WinForms pages |
| `description` | Present; **120–150 characters**; report defects without editing protected metadata |
| `slug` | Present, unique, and stable; historical slash-separated WinForms identifiers are valid |
| Meta title quality | Front-loads the article topic/context; uses clear dash-separated parts when needed; includes component or product context when applicable |
| Meta description quality | Accurate, specific, and non-templated; 120–150 characters; avoids filler and generic phrases |
| Redirect metadata when applicable | `previous_url` is present when the article clearly represents moved, renamed, or redirected content |

### 2. Titles and Headings — weight 15 %

Source: `titles-and-headings.md`

Apply the article-type and hierarchy guidance in the [structure skill](../telerik-documentation-style-guide/style-structure/SKILL.md). Recommend one H1 when a standard article lacks it; demote additional H1s according to hierarchy. Remove or convert KB H1s, never add one. These repository rules take precedence over conflicting external heading guidance.

| Check | Pass condition |
|---|---|
| Standard-article H1 count | Exactly one H1 in a standard article; flag missing and multiple H1s |
| KB H1 prohibition | No H1 in any KB article; never add one and flag existing H1s for removal or conversion |
| Title case | Nouns, verbs, adjectives, adverbs, pronouns, subordinating conjunctions capitalized; coordinating conjunctions (`and`, `but`, `or`), articles (`a`, `an`, `the`), prepositions (`at`, `on`, `in`, …) lowercased unless first/last word |
| Heading hierarchy | No skipped levels (e.g., H2 directly to H4) |
| Parallel same-level headings | All siblings share the same grammatical form |
| Subheading coverage | At least two subheadings per heading section (when content warrants) |
| No trailing punctuation in headings | Headings do not end with `.`, `!`, or `?`, except FAQ questions, which require a question mark |
| Drop unnecessary articles | Articles are omitted where meaning stays clear |
| No metaphors or API member names in conceptual headings | Headings describe the user goal; avoid metaphors and object types, methods, or events outside API-reference contexts |
| Useful bridge text before subheadings | Content between a heading and its first subheading adds context instead of filler |
| Avoid repeated parent wording in TOC-visible subheadings | Subheadings do not redundantly repeat the parent heading wording when the table of contents already provides that context |
| Quote capitalization preserved | Quoted material keeps its original capitalization |
| `-ing` forms used intentionally | `-ing` headings are acceptable for procedural/how-to topics, not as vague conceptual labels |
| **No mixed verb forms across headings (high priority)** | All action headings in the article must use the same verb form — either gerund (`-ing`) or imperative/infinitive — consistently. Mixing forms such as "Installing the Package" alongside "Configure the Feed" in the same article is a violation. Choose one form and apply it to every action heading. |

### 3. Tone and Voice — weight 15 %

Source: `tone-and-voice.md`, `cheat-sheet.md`, `using-simple-non-ambiguous-language.md`, `personal-pronouns.md`

| Check | Violation signal |
|---|---|
| No "simply", "it's easy", "it's that simple" | Any occurrence |
| No "let's" (except getting-started guides) | Any occurrence outside getting-started context |
| No "please note", "at this time" | Any occurrence |
| No exclamation marks | Any `!` outside code blocks |
| No gendered pronouns | Occurrences of "he/him/his/she/her/hers" used generically |
| No jokes, pop-culture references, metaphors | Subjective; flag obvious cases |
| No Latin abbreviations (e.g., i.e.) | `e.g.` or `i.e.` outside code blocks |
| Friendly but professional register | Subjective; flag overly colloquial or overly formal passages |
| No culture-specific references | Region-specific holidays, monetary units, phone/address formats, or similar local assumptions appear without necessity |
| No slang, sarcasm, idioms, or emoticons | Any obvious occurrence |
| Avoid vague subjective qualifiers | Terms such as "good", "best", or "worst" appear without objective support |
| Inclusive pronoun usage | Prefer gender-neutral pronouns or sentence rewrites when pronouns are needed |

### 4. Grammar and Language — weight 15 %

Source: `basic-rules-and-guidelines.md`, `using-simple-non-ambiguous-language.md`, `contractions.md`, `numbers.md`, `vocabulary.md`

| Check | Pass condition |
|---|---|
| American English spelling | No British-English variants (`behaviour`, `colour`, `organise`, `licence`, `centre`, `cancelled`) |
| Active voice preference | Passive constructions (`was sent`, `is created`, etc.) kept to a minimum |
| Sentence length | Sentences ≤ 25 words as a rule of thumb |
| Paragraph length | 2–4 sentences, ≤ 6 lines |
| No ambiguous contractions | Only safe contractions (`aren't`, `can't`, `don't`, `doesn't`, `haven't`, `didn't`, `shouldn't`, `couldn't`) used; disallowed forms (`you'll`, `it's` for "it has", `that's`, `there's`, `who's`, etc.) absent |
| Imperative mood | Direct instructions use imperative mood, not gerund or passive |
| Present simple preference | Uses present simple where possible; future, past, and perfect tenses appear only when needed for clarity |
| Precise modality | Uses imperative, `must`, `need to`, or `have to` for obligation; avoids ambiguous `should`, `could`, and `would` where `can`, `will`, or direct instruction is clearer |
| Avoid existential filler | Rephrases `there is` and `there are` when a stronger subject and verb are available |
| Minimize gerunds in body text | Avoids unnecessary `-ing` forms, dangling `-ing` phrases, and `-ing` adjectives that obscure meaning |
| Precise parts of speech | Uses nouns as nouns and verbs as verbs; avoids ambiguous conversions such as turning nouns into verbs |
| Number style | Spells out zero through nine unless version/product/table context applies; uses digits for 10+; uses period-separated decimals; does not start sentences/headings/captions with numerals |

### 5. Formatting Conventions — weight 15 %

Source: `element-formatting.md`, `tables-figures-code.md`, `screenshots.md`

Use the [formatting skill](../telerik-documentation-style-guide/style-formatting/SKILL.md) for image-introduction examples and remediation. Replace image-only headings or bold labels with a meaningful sentence or exact `>caption` block immediately before the image; preserve sufficient introductions and genuine section headings.

| Check | Pass condition |
|---|---|
| UI elements in bold | Button names, menu items, tabs, dialog boxes wrapped in `**…**` |
| Code elements in backticks | Class names, properties, events, methods, file names wrapped in `` `…` `` |
| No bold for general emphasis | `**…**` not used for emphasis unrelated to UI element names |
| Keyboard keys and shortcuts | Rendered in monospace with Initial Caps; combinations use `+` without spaces |
| System resources in monospace | File paths, extensions, data types, tags, values, error messages, database names, and user input are wrapped in backticks |
| Command-line formatting | Command references use monospace; command examples distinguish verbatim parts from variable placeholders where practical |
| Commands not used as verbs | Avoids phrasing such as `` `cd` to the folder `` |
| UI navigation paths | Menu or toolbar sequences use bold UI labels separated by `>` with spaces |
| Image introductions and alt text | Every image has meaningful alt text and a meaningful sentence or exact `>caption` block immediately before it; preserve sufficient introductions |
| No heading or bold image labels | No image-only heading, standalone bold introduction, or redundant heading/caption pair; replace such labels with a sentence or caption during authorized fixes |
| Non-image captions when present | Table/code captions are bold, descriptive, sentence case, and placed before the element; this does not apply to images |

### 6. Lists — weight 10 %

Source: `lists.md`

| Check | Pass condition |
|---|---|
| Introductory sentence ends with colon | Every list is preceded by a sentence ending in `:` |
| Items start with uppercase | First letter of each bullet/number capitalized |
| Parallel structure | All items share the same grammatical form within a list |
| Period consistency | Either all items end with `.` or none do (when at least one is a full sentence, all must end with `.`) |
| Max nesting | No more than three levels of nesting |
| No single-item lists | Avoid one-item lists unless justified |
| Correct list type | Numbered lists describe sequences; bulleted lists describe equal-priority items |
| No leading articles | Items avoid unnecessary opening articles such as "A" or "The" when they weaken scanability |
| Repeated content factored into intro | Shared prefixes are moved into the introductory sentence instead of repeated in each item |
| Action/context ordering | Steps state the action first, or begin with the needed context/condition when that improves clarity |
| Definition list separator | Definition lists use `&mdash;` with no surrounding spaces; do not use a literal em dash character, a hyphen, or spaced dash forms; large definition lists may be better as tables |
| Clarifications separated cleanly | Extra explanation appears in a second paragraph or aligned follow-up text, not as a run-on list item |

### 7. Punctuation — weight 10 %

Source: `punctuation.md`

| Check | Pass condition |
|---|---|
| No space before punctuation | No ` .`, ` ,`, ` ?`, ` !`, ` :`, ` ;` |
| Single space after punctuation | Only one space after `.`, `,`, `;`, `:`, `?`, `!` |
| No space inside brackets | `( text )` is wrong; `(text)` is correct |
| Hyphens/dashes not surrounded by spaces | `word - word` is wrong; `word&mdash;word` or `word-word` is correct |
| No punctuation at end of headings | Headings do not end with `.`, `!`, `?` |
| Bracket spacing and punctuation | Uses correct spaces before `(` and after `)`; punctuation placement inside/outside brackets matches sentence structure |
| Serial comma in series | Uses the Oxford comma in series of three or more when needed for clarity |
| "For example" and "that is" punctuation | Uses commas correctly around these phrases |
| Range punctuation | Uses an en dash for numeric ranges; avoids hyphens and em dashes |

### 8. Structure and Completeness — weight 5 %

Source: `basic-rules-and-guidelines.md`, `cross-references.md`, `tables-figures-code.md`, `screenshots.md`

| Check | Pass condition |
|---|---|
| Introductory paragraph | Article begins with 1–2 sentences describing the subject and its context |
| See Also / Next Steps section | Article ends with a navigational section (optional but recommended) |
| Short articles | No excessive scrolling required; single topic per article |
| Topic introduction via subheadings | Each substantial new aspect is introduced with a subheading for readability and orientation; headings must not serve solely as image introductions |
| Feature-focused scope | Prefers one feature/topic per article instead of mixing unrelated features |
| Descriptive cross-references | Links explain the destination or purpose clearly; external references identify the resource precisely |
| Media and table completeness when present | Every image has an approved introduction immediately before it; tables have lead-ins when needed, cells are not blank, and screenshots avoid sensitive/confidential data |

---

## Output Format

Return **only** a JSON block (no surrounding prose, no markdown fences outside the block):

```json
{
  "file": "<relative or absolute path to the article>",
  "overall_score": "<weighted average, 1 decimal place>",
  "dimensions": {
    "metadata": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "titles_and_headings": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "tone_and_voice": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "grammar_and_language": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "formatting_conventions": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "lists": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "punctuation": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    },
    "structure_and_completeness": {
      "score": "<1-5>",
      "rationale": "<≤ 2 sentences>",
      "violations": ["<violation 1>", "..."]
    }
  }
}
```

**Weights for overall_score computation:**

| Dimension | Weight |
|---|---|
| metadata | 0.15 |
| titles_and_headings | 0.15 |
| tone_and_voice | 0.15 |
| grammar_and_language | 0.15 |
| formatting_conventions | 0.15 |
| lists | 0.10 |
| punctuation | 0.10 |
| structure_and_completeness | 0.05 |

`overall_score = sum(score_i × weight_i)` — round to one decimal place.

Do not output anything other than the JSON block.
