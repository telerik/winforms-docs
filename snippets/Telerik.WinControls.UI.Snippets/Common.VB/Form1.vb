Imports Telerik.WinControls.UI.AIPrompt

Public Class Form1

	'// >> aiprompt-getting-started-promptrequest-vb
	Private Sub RadAIPrompt1_PromptRequest(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.AIPrompt.PromptRequestEventArgs)
		Dim responseAIPromptOutputItemModel As AIPrompt OutputItem = New AIPromptOutputItem() With {
			.Title = "Response from your AI model",
			.InputText = e.InputText,
			.ResponseText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
		}
		Me.RadaiPrompt1.OutputItems.Add(responseAIPromptOutputItemModel)
	End Sub
	'// << aiprompt-getting-started-promptrequest-vb

End Class
