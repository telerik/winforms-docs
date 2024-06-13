---
title: How to add footer area to TaskCardElement
description: This article demonstrates how to add footer area to RadTaskBoard card.
type: how-to
page_title: Insert footer area in the TaskCardElement
slug: howto-add-footer-taskcardelement
position: 0
tags: taskboard, taskcardelement, footer
ticketid: 1540861
res_type: kb
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2021.3.914|RadTaskBoard for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

This article demonstrates how we can add a footer area to RadTaskBoard RadTaskCardElement.

![TaskCardElement Foorter Area](images/howto-add-footer-taskcardelement_1.png)

## Solution 

First we will need to create a custom class which derives from RadTaskCardElement. In the custom class we can override the CreateChildElements() method in which we can create our footer area. Then we need to measure and arrange the custom area in the MeasureOverride() and ArrangeOverride() methods.

````C#

	public class MyTaskCardElement : RadTaskCardElement
	{
		RadButtonElement button;
		StackLayoutElement footerArea;

		public MyTaskCardElement() : base()
		{
			footerArea.BackColor = Color.LightBlue;
			footerArea.DrawFill = true;
			footerArea.ElementSpacing = 5;
			footerArea.FitInAvailableSize = true;
			footerArea.Margin = new Padding(5, 0, 0, 0);
			button.ButtonFillElement.BackColor = Color.Bisque;
			button.ForeColor = Color.Blue;
			button.Margin = new Padding(5, 0, 0, 0);
		}
		protected override void CreateChildElements()
		{
			base.CreateChildElements();
			button = new RadButtonElement() { Text = "Footer Button" };
			footerArea = new StackLayoutElement();          
			footerArea.Children.Add(new TextBlockElement() {Text= "Footer Text" });
			footerArea.Children.Add(button);
			this.Children.Add(footerArea);
		}

		protected override SizeF MeasureOverride(SizeF availableSize)
		{
			var size = base.MeasureOverride(availableSize);
			footerArea.Measure(new SizeF(availableSize.Width, float.PositiveInfinity));
			return new SizeF(size.Width, size.Height + footerArea.DesiredSize.Height);
		}
		protected override SizeF ArrangeOverride(SizeF finalSize)
		{
			var size = base.ArrangeOverride(finalSize);
			footerArea.Arrange(new RectangleF(0, size.Height - footerArea.DesiredSize.Height, footerArea.DesiredSize.Width, footerArea.DesiredSize.Height));
			return finalSize;
		}
	}      
	
````
````VB.NET

	Public Class MyTaskCardElement
		Inherits RadTaskCardElement

		Private button As RadButtonElement
		Private footerArea As StackLayoutElement

		Public Sub New()
			MyBase.New()
			footerArea.BackColor = Color.LightBlue
			footerArea.DrawFill = True
			footerArea.ElementSpacing = 5
			footerArea.FitInAvailableSize = True
			footerArea.Margin = New Padding(5, 0, 0, 0)
			button.ButtonFillElement.BackColor = Color.Bisque
			button.ForeColor = Color.Blue
			button.Margin = New Padding(5, 0, 0, 0)
		End Sub

		Protected Overrides Sub CreateChildElements()
			MyBase.CreateChildElements()
			button = New RadButtonElement() With {
				.Text = "Footer Button"
			}
			footerArea = New StackLayoutElement()
			footerArea.Children.Add(New TextBlockElement() With {
				.Text = "Footer Text"
			})
			footerArea.Children.Add(button)
			Me.Children.Add(footerArea)
		End Sub

		Protected Overrides Function MeasureOverride(ByVal availableSize As SizeF) As SizeF
			Dim size = MyBase.MeasureOverride(availableSize)
			footerArea.Measure(New SizeF(availableSize.Width, Single.PositiveInfinity))
			Return New SizeF(size.Width, size.Height + footerArea.DesiredSize.Height)
		End Function

		Protected Overrides Function ArrangeOverride(ByVal finalSize As SizeF) As SizeF
			Dim size = MyBase.ArrangeOverride(finalSize)
			footerArea.Arrange(New RectangleF(0, size.Height - footerArea.DesiredSize.Height, footerArea.DesiredSize.Width, footerArea.DesiredSize.Height))
			Return finalSize
		End Function
	End Class

````

The final step is to replace the default RadTaskCardElement with our custom MyTaskCardElement class and populate the RadTaskBoard control. Keep in mind that you will need to subscribe to the TaskCardAdding event of the RadTaskBoard so that any new card which is added will be replaced with the custom one containing a footer.

````C#

	public partial class RadForm1 : Telerik.WinControls.UI.RadForm
	{
		RadTaskBoard radTaskBoard1;
		public RadForm1()
		{
			InitializeComponent(); new RadControlSpyForm().Show();
			radTaskBoard1 = new RadTaskBoard();
			UserInfo user1 = new UserInfo();
			user1.FirstName = "Anne";
			user1.LastName = "Dodsworth";

			UserInfo user2 = new UserInfo();
			user2.FirstName = "Andrew";
			user2.LastName = "Fuller";
			MyTaskCardElement card = new MyTaskCardElement();
			RadTaskBoardColumnElement c1 = new RadTaskBoardColumnElement();
			c1.Title = "Backlog";
			c1.Subtitle = "Internal Issues";
			RadTaskBoardColumnElement c2 = new RadTaskBoardColumnElement();
			c2.Title = "In Development";
			c2.Subtitle = "Prioritized Issues";
			c2.IsCollapsed = true;
			this.radTaskBoard1.Columns.Add(c1);
			this.radTaskBoard1.Columns.Add(c2);
			card.TitleText = "ListView improvements";
			card.DescriptionText = "Research phase";
			card.AccentSettings.Color = Color.Red;

			card.Users.Add(user1);
			card.Users.Add(user2);
			RadTaskCardTagElement tagWF = new RadTaskCardTagElement();
			tagWF.Text = "win-forms";
			RadTaskCardTagElement tagWPF = new RadTaskCardTagElement();
			tagWPF.Text = "wpf";
			card.TagElements.Add(tagWF);
			card.TagElements.Add(tagWPF);
			card.SubTasks.Add(new SubTask(card));
			card.SubTasks.Add(new SubTask(card));
			card.SubTasks.Add(new SubTask(card));
			SubTask x = new SubTask(card);
			x.Completed = true;
			card.SubTasks.Add(x);
			c1.TaskCardCollection.Add(card);
			foreach (RadTaskBoardColumnElement col in this.radTaskBoard1.Columns)
			{
				col.TaskCardAdding += col_TaskCardAdding;
			}
			this.Controls.Add(radTaskBoard1);
		}

		private void col_TaskCardAdding(RadTaskBoardColumnElement.TaskCardAddingEventArgs args)
		{
			MyTaskCardElement newCard = new MyTaskCardElement();
			args.TaskCard = newCard;
		}
	}

````
````VB.NET

	Partial Public Class RadForm1
		Inherits Telerik.WinControls.UI.RadForm

		Private radTaskBoard1 As RadTaskBoard

		Public Sub New()
			InitializeComponent()
			radTaskBoard1 = New RadTaskBoard()
			Dim user1 As UserInfo = New UserInfo()
			user1.FirstName = "Anne"
			user1.LastName = "Dodsworth"
			Dim user2 As UserInfo = New UserInfo()
			user2.FirstName = "Andrew"
			user2.LastName = "Fuller"
			Dim card As MyTaskCardElement = New MyTaskCardElement()
			Dim c1 As RadTaskBoardColumnElement = New RadTaskBoardColumnElement()
			c1.Title = "Backlog"
			c1.Subtitle = "Internal Issues"
			Dim c2 As RadTaskBoardColumnElement = New RadTaskBoardColumnElement()
			c2.Title = "In Development"
			c2.Subtitle = "Prioritized Issues"
			c2.IsCollapsed = True
			Me.radTaskBoard1.Columns.Add(c1)
			Me.radTaskBoard1.Columns.Add(c2)
			card.TitleText = "ListView improvements"
			card.DescriptionText = "Research phase"
			card.AccentSettings.Color = Color.Red
			card.Users.Add(user1)
			card.Users.Add(user2)
			Dim tagWF As RadTaskCardTagElement = New RadTaskCardTagElement()
			tagWF.Text = "win-forms"
			Dim tagWPF As RadTaskCardTagElement = New RadTaskCardTagElement()
			tagWPF.Text = "wpf"
			card.TagElements.Add(tagWF)
			card.TagElements.Add(tagWPF)
			card.SubTasks.Add(New SubTask(card))
			card.SubTasks.Add(New SubTask(card))
			card.SubTasks.Add(New SubTask(card))
			Dim x As SubTask = New SubTask(card)
			x.Completed = True
			card.SubTasks.Add(x)
			c1.TaskCardCollection.Add(card)

			For Each col As RadTaskBoardColumnElement In Me.radTaskBoard1.Columns
				AddHandler col.TaskCardAdding, AddressOf col_TaskCardAdding
			Next

			Me.Controls.Add(radTaskBoard1)
		End Sub

		Private Sub col_TaskCardAdding(ByVal args As RadTaskBoardColumnElement.TaskCardAddingEventArgs)
			Dim newCard As MyTaskCardElement = New MyTaskCardElement()
			args.TaskCard = newCard
		End Sub
	End Class

````

