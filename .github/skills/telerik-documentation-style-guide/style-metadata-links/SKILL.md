---
name: style-metadata-links
description: "Use when writing or reviewing Telerik UI for WinForms metadata, control taxonomy, navigation, slug cross-references, external links, SEO descriptions, or desktop sample pages. Covers title, page_title, description, slash-separated slugs, components, tags, position, redirects, and KB metadata. Triggers include 'fix metadata', 'add frontmatter', 'check links', 'improve SEO', and 'review descriptions'."
---

# Metadata, Cross-References, and Links

The [build configuration](../../../../docs-builder.yml) identifies Telerik UI
for WinForms, the documentation path `/products/winforms/documentation`, and
the local `snippets` source root. The
[API configuration](../../../../docs-builder-api.yml) uses
`/products/winforms/documentation/api`.

## Preserve Existing Frontmatter

The [contribution guidance](../../../../README.md) asks contributors not to
edit existing article frontmatter. During routine editorial optimization,
preserve **all existing metadata**, including `description`, and report defects.
An explicit request to edit metadata authorizes only the named fields.
Permission to edit a description does not authorize changes to URLs, taxonomy,
redirects, or navigation. New articles need valid metadata matching neighbors.

Do not silently remove duplicate keys, add fields, normalize slugs, or change
descriptions solely to improve a score when metadata editing is not authorized.
Report the issue and the proposed correction instead.

## YAML Frontmatter

Use one top-of-file YAML block delimited by `---`, with each key present once.
The following rules apply to new articles and authorized metadata corrections:

| Field | Purpose and convention |
|---|---|
| `title` | Navigation label in title case; may be short, such as Getting Started |
| `page_title` | SEO title; follow neighbors, such as Getting Started - WinForms GridView Control; do not invent `meta_title` |
| `description` | Unique, complete plain-text sentence of 120-150 characters with natural topic keywords |
| `slug` | Unique stable identifier; preserve existing values exactly, including `winforms/gridview/getting-started` |
| `components` | Existing YAML array of taxonomy IDs, for example `["gridview"]` |
| `tags` | Follow neighboring comma-separated tags; do not mechanically normalize existing values |
| `position` | Navigation order; preserve existing value |
| `previous_url` | Historical redirect value or list; preserve exact values and format |
| `published`, `publish` | Existing publication controls; preserve their meaning and spelling |
| `type` | Existing KB classification, normally `how-to` or `troubleshooting` |
| `res_type` | `kb` for KB articles |
| `ticketid` | Follow repository policy; never invent IDs or expose private support content |

Standard articles have one authored H1 that covers the same topic as `title`;
the text need not match the short navigation label. KB articles use the
metadata-generated title and have **no source H1**.

This new-article metadata example uses the repository's naming and path style.
Choose a unique slug rather than copying an existing page's identifier:

```yaml
---
title: Accessing Elements
page_title: Accessing Elements - WinForms GridView Control
description: "Learn how to access RadGridView elements in Telerik UI for WinForms through typed properties instead of relying on child collection indexes."
components: ["gridview"]
slug: winforms/gridview/accessing-elements-example
tags: gridview, elements
position: 1
---
```

### Descriptions

Count the actual scalar value, not quotes or the YAML key. For new or
authorized descriptions, use 120-150 characters, a complete sentence, and
natural primary keywords. Do not pad sentences or promise search-result
placement. Search engines may rewrite or truncate snippets.

Quote YAML-sensitive punctuation and escape embedded quotes. Do not place
HTML, Markdown, code fences, or trademark symbols in SEO metadata; C# and
.NET are valid topic terms. Preserve exact product and control names.

## Cross-References

Use the site renderer's slug syntax in published articles:

```markdown
See the [RadGridView setup guide]({%slug winforms/gridview/getting-started%}).
See [accessing RadGridView elements]({%slug gridview-accessing-elements%}).
```

Slash-separated WinForms slugs and historical flat KB slugs are both valid.
Do not enforce a hyphen-only or fixed-length rule on existing identifiers.
Resolve each target to an actual article and verify fragments against real
headings or explicit anchors. Scan for duplicate slugs when adding or changing
one, and preserve intentional redirects.

Relative paths are appropriate for images and links between these skill files.
Do not replace article slug links with relative Markdown paths.

### Anchor Text and Placement

- Use descriptive, self-contained anchor text, not "click here", "this article",
  or "link".
- Fit the text to the sentence. Exact article titles are acceptable, especially
  in navigation and See Also lists; forced paraphrasing is not required.
- Use consistent control names. Repeated accurate anchor text is not a defect.
- Place links near the relevant claim and related resources in See Also.
- Do not put links in headings or crowd multiple links into one sentence.

### External Links and Navigation

Prefer HTTPS and the appropriate WinForms product, API, or Microsoft Windows
Forms documentation for the target version. Use Document Processing links only
for the relevant library scenario. Do not substitute another suite's APIs.

The current documentation base is
`https://www.telerik.com/products/winforms/documentation`; legacy
`docs.telerik.com/devtools/winforms` links also appear in the repository.
Do not mechanically rewrite working legacy links during an unrelated edit.

Verify relevance and availability, and disclose destinations that could not be
checked. Let the renderer control new-tab behavior; do not add `target="_blank"`
as an SEO requirement.

For new control pages, inspect neighboring article metadata and the folder
configuration in `docs-builder.yml`. Do not assume frontmatter alone places a
page correctly in navigation.

## Demo and Sample Articles

Describe the actual WinForms desktop example and source, not a mobile sample
browser. Identify the control, sample location, required Telerik/framework
versions, Windows environment, references, licensing prerequisites, and steps
to run it. Do not invent a sample-app navigation path.

Use a unique description, a concrete introduction, links to feature
documentation, and working examples. A screenshot or browser preview does not
prove that a desktop sample compiles, runs, scales correctly, or is accessible.

## Quick Checklist

- [ ] Existing metadata preserved unless the requested fields are authorized
- [ ] New/authorized frontmatter parses with unique keys and required fields
- [ ] Title, H1 or generated KB title, and page_title cover the same topic
- [ ] New/authorized descriptions are unique, complete, plain text, and 120-150 characters
- [ ] Stable slash-separated and flat slugs, redirects, and navigation remain intact
- [ ] Control taxonomy, tags, publication fields, and KB type/res_type match local conventions
- [ ] Slug links, fragments, and assets resolve to the intended WinForms content
- [ ] Descriptive anchor text; no forced paraphrasing, variation, or new tabs
- [ ] External URLs checked or limitations disclosed
- [ ] Sample and deployment claims identify the tested Windows/framework context
