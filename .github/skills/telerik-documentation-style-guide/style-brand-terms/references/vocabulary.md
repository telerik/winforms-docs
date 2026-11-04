# Telerik UI for WinForms Vocabulary Reference

Use this reference with the [brand and terminology skill](../SKILL.md).
Preserve exact API names, package IDs, designer names, UI labels, diagnostics,
and historical URL identifiers even when they differ from prose conventions.

## Compound Words and UI Names

| Standard form | Avoid in prose |
|---|---|
| checkbox | check box, check-box |
| dropdown | drop down, drop-down as a noun or adjective |
| dialog box | dialogue, dialog window |
| context menu | right-click menu |
| filename | file name |
| namespace | name space |
| toolbar | tool bar |
| tooltip | tool tip |
| scrollbar | scroll bar |
| workspace | work space |
| email | e-mail |
| website, webpage | web site, web page |
| plugin | plug in as a noun |
| login | log in as a noun |
| setup | set up as a noun |
| backend, frontend | back end, front end as adjectives |
| online, offline | on-line, off-line |

Use "set up" and "log in" as verbs. Preserve `DataSet`, `CheckBox`, and other
exact .NET types. Use panel, pane, tab, text box, and progress bar accurately;
do not rename an actual control to satisfy a generic vocabulary preference.

## Technical Terms

| Term | Required distinction |
|---|---|
| WinForms | Common short name for Windows Forms; product name is Telerik UI for WinForms |
| Windows Forms | Microsoft desktop UI framework; not a Telerik product |
| .NET Framework | Distinct from modern .NET; verify supported targets for the release |
| .NET | Preserve the leading dot and capital NET |
| C#, VB.NET | Required display names and fenced-code labels for paired application examples |
| NuGet | Package manager; not a Telerik product name |
| Visual Studio | IDE; distinguish the form designer from runtime behavior |
| API, URL, XML, JSON, HTML, SQL, PDF | Use uppercase in prose, but preserve code identifiers |
| Telerik Presentation Framework (TPF) | Telerik element framework; its elements are not all Windows Forms controls |

## Controls and Libraries

Use exact product control names, including their `Rad` prefix:

| Control or library | Scope |
|---|---|
| `RadGridView` | Tabular data, rows, columns, templates, editing, and virtualization |
| `RadListView` | List items and supported views; do not substitute another product's collection APIs |
| `RadTreeView` | Hierarchical nodes and the control's documented binding APIs |
| `RadScheduler` | Appointments and scheduling UI, not background-job infrastructure |
| `RadDropDownList`, `RadDropDownButton` | Different selection and button controls |
| `RadRichTextEditor` | Rich document editing UI |
| `RadPdfViewer` | PDF viewing UI |
| PdfProcessing | Document Processing library, not the viewer control |
| `RadForm`, `RadRibbonForm` | Telerik form types; preserve the actual sample's base class |

Confirm types, namespaces, assemblies, package IDs, and availability against
the target release. Never infer a class from its display name.

## WinForms Architecture and Feature Boundaries

| Area | Describe precisely |
|---|---|
| Setup | Supported Windows and .NET/.NET Framework target, installation method, references, and license activation |
| Form lifecycle | Constructor, designer fields, `InitializeComponent()`, load events, and disposal |
| Data binding | `DataSource`, `DataMember`, `BindingSource`, model properties, and notifications supported by the control |
| Updates | `BindingList<T>` and `INotifyPropertyChanged` have different responsibilities; verify collection and item updates separately |
| UI threading | Access controls on their owning UI thread; verify the framework-appropriate invocation API and object lifetime |
| Element hierarchy | A `RadElement` is not a `System.Windows.Forms.Control`; prefer documented typed access over fragile child indexes |
| Events | Exact event name, signature, event arguments, cancellation semantics, and subscription lifetime |
| Themes | `ThemeName`, documented theme assemblies/components, and element customization; avoid inventing theme names |
| Designer | Toolbox, Properties window, generated files, serialized settings, and design-time/runtime differences |
| Deployment | Application target framework, x86/x64/Any CPU, native dependencies, licensing, and installation context |
| Accessibility | Accessible names, supported automation, keyboard paths, focus, Narrator, contrast, and high-DPI/scaling evidence |

Do not replace working WinForms APIs with similarly named APIs from another UI
suite. Windows Forms has a real `BindingContext` type, but it does not mean
the page/viewmodel context used by other frameworks.

## Interaction Verbs

Use **click** (not "click on") for buttons and links, **double-click** for two
rapid clicks, **right-click** for a secondary-button action, **press** for keys,
**select** for menus and options, **clear** for checkboxes, **enter/type** for
text, and **drag** for supported pointer movement.

Use **select** when a workflow is independent of the input method. Document
touch gestures only when the particular WinForms control and configuration
support them; do not assume mobile gestures or desktop touch parity.

## Versions and Accessibility Language

Prefer "earlier/later version" and "starting with version" over
"older/newer/lower/higher" and ambiguous "since/as of". Keep exact release,
assembly, SDK, target-framework, and Windows build values.

Prefer "unavailable" or "dimmed" to visual-only "grayed out". Use "disabled"
when it is the precise state, and preserve the `Enabled` API and diagnostic
wording. Do not replace meaningful state names with vague euphemisms.

## Troubleshooting Vocabulary

Separate confirmed causes from hypotheses. Distinguish:

- Missing references or licensing from a designer loading failure.
- An empty `DataSource` from unsupported notifications or incorrect binding.
- A theme not loaded from a local property overriding the appearance.
- A virtualized element being reused from the underlying data changing.
- Cross-thread access from a disposed control or asynchronous lifetime issue.
- A high-DPI issue from an application scaling setting or Windows display setting.
- Inspection from compilation, execution, accessibility testing, and deployment.

Use sanitized diagnostics and minimal samples. Do not request license-key
contents, feed credentials, tokens, full customer databases, or private logs.
