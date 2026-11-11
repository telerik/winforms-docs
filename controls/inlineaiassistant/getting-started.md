---
title: Getting Started
page_title: WinForms Inline AI Assistant - Installation and Getting Started
description: Set up Telerik UI for WinForms RadInlineAIAssistant, attach it to a text box, add commands, handle PromptRequest, and supply complete or streamed responses.
components: ["inlineaiassistant"]
slug: inlineaiassistant-getting-started
tags: winforms,inlineaiassistant,radinlineaiassistant,getting-started,installation,prompt,commands,streaming,cancellation
published: True
position: 3
---

# Getting Started with WinForms Inline AI Assistant

The Telerik UI for WinForms `RadInlineAIAssistant` component adds a prompt popup to a text-editing control. This article creates a working text-box example, adds a predefined command, and handles `PromptRequest` to display a response.

The component does not connect to an AI service automatically. The example uses a local uppercase conversion to demonstrate the request lifecycle without credentials or network access.

## Adding Telerik Assemblies Using NuGet

Install the `Telerik.UI.for.WinForms.AllControls` package in your Windows Forms application. The [package target framework version may vary]({%slug winforms-available-nugets%}). Use a Telerik UI for WinForms version that includes `RadInlineAIAssistant`.

For installation instructions, see [Install Using NuGet Packages]({%slug winforms/nuget%}).

>tip Configure your [Telerik license key]({%slug license-key%}) before building the application.

## Adding Assembly References Manually

If you do not use NuGet, reference these assemblies:

* `Telerik.WinControls`
* `Telerik.WinControls.UI`
* `TelerikCommon`

The assemblies are available through the supported [installation approaches]({%slug winforms/installation-deployment-and-distribution/installing-on-your-computer%}). Additional host controls, such as `RadRichTextEditor`, require their own assembly references.

## Attaching the Assistant to a Text Box

1. Create a text control and a `RadInlineAIAssistant` instance. Add the assistant to a component container so it is disposed with the form. Do not add it to the form's `Controls` collection.
2. Call `AttachTo` with a `TextBox`, `RichTextBox`, `RadTextBox`, or `RadTextBoxControl`. The assistant creates the corresponding interaction provider.
3. Optionally add predefined prompts to `Commands`.
4. Handle `PromptRequest` and supply a response with the event data's `SetResponse` method.
5. Open the assistant by calling `Show` while the host is visible. This example wires `Ctrl+Space` in the host's `KeyDown` event; the shortcut is application code, not a component default.

The following standalone form can be opened from your application's startup code. It does not require designer-created controls.

```C#
using System;
using System.ComponentModel;
using System.Drawing;
using System.Threading.Tasks;
using System.Windows.Forms;
using Telerik.WinControls.UI;

public class InlineAssistantForm : Form
{
	private readonly IContainer components = new Container();
	private readonly TextBox editor;
	private readonly RadInlineAIAssistant assistant;

	public InlineAssistantForm()
	{
		this.Text = "Inline AI Assistant";
		this.ClientSize = new Size(800, 500);
		this.editor = new TextBox
		{
			Multiline = true,
			Dock = DockStyle.Fill,
			Text = "Select this text and press Ctrl+Space."
		};
		this.Controls.Add(this.editor);

		this.assistant = new RadInlineAIAssistant(this.components);
		this.assistant.NullText = "Enter a prompt...";
		this.assistant.AttachTo(this.editor);
		this.assistant.Commands.Add(new InlineAIAssistantCommand
		{
			Text = "Uppercase",
			Prompt = "Convert the selected text to uppercase."
		});
		this.assistant.PromptRequest += this.OnPromptRequest;
		this.editor.KeyDown += this.OnEditorKeyDown;
	}

	private void OnEditorKeyDown(object sender, KeyEventArgs e)
	{
		if (e.Control && e.KeyCode == Keys.Space)
		{
			e.SuppressKeyPress = true;
			this.assistant.Show();
		}
	}

	private async void OnPromptRequest(
		object sender, InlineAIAssistantPromptRequestEventArgs e)
	{
		string text = string.IsNullOrEmpty(e.SelectedText)
			? e.FullText : e.SelectedText;

		try
		{
			await Task.Delay(300, e.CancellationToken);
			e.SetResponse(text.ToUpperInvariant());
		}
		catch (OperationCanceledException) when (e.CancellationToken.IsCancellationRequested)
		{
			return;
		}
		catch (Exception error)
		{
			e.FailResponse(error);
		}
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing)
		{
			this.components.Dispose();
		}

		base.Dispose(disposing);
	}
}
```

```VB.NET
Imports System
Imports System.ComponentModel
Imports System.Drawing
Imports System.Threading.Tasks
Imports System.Windows.Forms
Imports Telerik.WinControls.UI

Public Class InlineAssistantForm
	Inherits Form

	Private ReadOnly components As IContainer = New Container()
	Private ReadOnly editor As TextBox
	Private ReadOnly assistant As RadInlineAIAssistant

	Public Sub New()
		Me.Text = "Inline AI Assistant"
		Me.ClientSize = New Size(800, 500)
		Me.editor = New TextBox With {
			.Multiline = True,
			.Dock = DockStyle.Fill,
			.Text = "Select this text and press Ctrl+Space."
		}
		Me.Controls.Add(Me.editor)

		Me.assistant = New RadInlineAIAssistant(Me.components)
		Me.assistant.NullText = "Enter a prompt..."
		Me.assistant.AttachTo(Me.editor)
		Me.assistant.Commands.Add(New InlineAIAssistantCommand With {
			.Text = "Uppercase",
			.Prompt = "Convert the selected text to uppercase."
		})
		AddHandler Me.assistant.PromptRequest, AddressOf Me.OnPromptRequest
		AddHandler Me.editor.KeyDown, AddressOf Me.OnEditorKeyDown
	End Sub

	Private Sub OnEditorKeyDown(sender As Object, e As KeyEventArgs)
		If e.Control AndAlso e.KeyCode = Keys.Space Then
			e.SuppressKeyPress = True
			Me.assistant.Show()
		End If
	End Sub

	Private Async Sub OnPromptRequest(
		sender As Object, e As InlineAIAssistantPromptRequestEventArgs)

		Dim text As String = If(String.IsNullOrEmpty(e.SelectedText),
								e.FullText, e.SelectedText)
		Try
			Await Task.Delay(300, e.CancellationToken)
			e.SetResponse(text.ToUpperInvariant())
		Catch canceled As OperationCanceledException When e.CancellationToken.IsCancellationRequested
			Return
		Catch requestError As Exception
			e.FailResponse(requestError)
		End Try
	End Sub

	Protected Overrides Sub Dispose(disposing As Boolean)
		If disposing Then
			Me.components.Dispose()
		End If

		MyBase.Dispose(disposing)
	End Sub
End Class
```

Run the form, select text, and press `Ctrl+Space`. Choose **Uppercase** from the commands dropdown, or enter a prompt and select **Send**. This sample always converts the selected text, or the full text when there is no selection, to uppercase. It does not interpret the prompt.

When the response appears, select **Replace** to replace the selection, **Insert** to insert the response, or **Discard** to clear it and continue prompting. The built-in text-box provider inserts after the selection without deleting the selected text. **Replace** requires a selection, and both editing actions require an editable host.

## Connecting an AI Service

Replace the delay and uppercase conversion in `OnPromptRequest` with an asynchronous call to your service. Use these members of `InlineAIAssistantPromptRequestEventArgs`:

| Member | Usage |
| --- | --- |
| `Prompt` | The submitted prompt, including prompts supplied by commands. |
| `SelectedText` | The selected text captured when the request starts. |
| `FullText` | The full host text, retrieved on first access. Read it on the UI thread before passing it to background work. |
| `Command` | The selected command, or `null` for a typed prompt. |
| `CancellationToken` | Pass this token to your service call so it can stop when the user cancels or closes the assistant. |
| `SetResponse(response)` | Displays the complete response and ends processing. |
| `FailResponse(error)` | Ends processing and displays the localized generic error message. |

Send only the context required for the operation, and keep service credentials out of client-side sample code. Catch exceptions inside an asynchronous event handler, as in the example.

For streaming, call `e.AppendResponse(chunk)` for each chunk and `e.CompleteResponse()` after the last chunk. These calls belong inside the request handler or a callback that retains that request's event data. For example, the following replaces the `SetResponse` call with two sample chunks:

```C#
e.AppendResponse("First part of the response. ");
e.AppendResponse("Remaining response text.");
e.CompleteResponse();
```

```VB.NET
e.AppendResponse("First part of the response. ")
e.AppendResponse("Remaining response text.")
e.CompleteResponse()
```

Prefer the event data's response methods for asynchronous work. They retain the request identity and ignore late updates after that request is completed, failed, canceled, or replaced by another request. The **First Look** demo follows this pattern when appending response tokens.

## Using the Rich Text Editor

For an existing `RadRichTextEditor` named `radRichTextEditor1`, assign the assistant to the editor's `InlineAIAssistant` property instead of calling `AttachTo` directly. This attaches the component and creates the editor's provider if no custom provider is assigned.

```C#
this.radRichTextEditor1.InlineAIAssistant = this.assistant;
```

```VB.NET
Me.radRichTextEditor1.InlineAIAssistant = Me.assistant
```

The editor adds an AI button to its compact selection mini toolbar. Its `IsInlineAIAssistantEnabled` property controls these entry points and defaults to `true`. You can also call `Show` from an application button, as the **First Look** demo does. The editor does not dispose the assistant; retain the container-based lifetime management shown above.

## See Also

* [Overview]({%slug inlineaiassistant-overview%})
* [Design Time]({%slug inlineaiassistant-design-time%})
* [Properties, Methods, and Events]({%slug inlineaiassistant-properties%})
* [Configuring Interaction Providers]({%slug inlineaiassistant-configuring-interaction-providers%})
* [Configuring Commands]({%slug inlineaiassistant-configuring-commands%})
* [Handling Responses]({%slug inlineaiassistant-handling-responses%})

