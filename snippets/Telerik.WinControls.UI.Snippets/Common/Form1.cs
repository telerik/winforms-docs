using Telerik.WinControls.UI.AIPrompt;

namespace Common
{
	public partial class Form1 : Form
	{
		public Form1()
		{
			InitializeComponent();
		}

		// >> aiprompt-getting-started-promptrequest
		private void RadAIPrompt1_PromptRequest(object sender, Telerik.WinControls.UI.AIPrompt.PromptRequestEventArgs e)
		{
			AIPromptOutputItem responseAIPromptOutputItemModel = new AIPromptOutputItem()
			{
				Title = "Response from your AI model",
				InputText = e.InputText,
				ResponseText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", // Here you can set the string value returned from your AI model
			};

			this.radaiPrompt1.OutputItems.Add(responseAIPromptOutputItemModel);
		}
		// << aiprompt-getting-started-promptrequest
	}
}
