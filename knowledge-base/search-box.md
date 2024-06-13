---
title: Search box
description: Search box. Check it now!
type: how-to
page_title: Search box
slug: search-box
tags: common
res_type: kb
---

|Date Posted|Product|Author|
|----|----|----|
|April 07, 2016|UI for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|

## Problem

Telerik UI for WinForms suite does not offer **RadSearchBox** out of the box. However, it can be easily achieved by using a **RadTextBox** with a **RadButtonElement** inside it.  
 
![search-box001](images/search-box001.png)

## Solution

We will create a derivative of **RadTextBox** and after the text box element is initialized, we should add a **RadButtonElement** with the appropriate image in the hosted text box container. When the button element is clicked, the custom defined **Search** event will be triggered. This is the appropriate place to perform the custom search logic that you need. You can find below a complete code snippet:

````C#
public Form1()
{
    InitializeComponent();
    SearchTextBox searchBox = new SearchTextBox();
    searchBox.Size = new System.Drawing.Size(200, 20);
    searchBox.Location = new Point(10, 200);
    searchBox.Search += searchBox_Search;
    this.Controls.Add(searchBox);
}
private void searchBox_Search(object sender, SearchTextBox.SearchBoxEventArgs e)
{
    RadMessageBox.Show("Search >> " + e.SearchText);
}
public class SearchTextBox : RadTextBox
{
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadTextBox).FullName;
        }
    }
    protected override void OnLoad(Size desiredSize)
    {
        base.OnLoad(desiredSize);
        searchButton.ButtonFillElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed;
        searchButton.ShowBorder = false;
    }
    RadButtonElement searchButton = new RadButtonElement();
    protected override void InitializeTextElement()
    {
        base.InitializeTextElement();
        this.TextBoxElement.TextBoxItem.NullText = "Enter search criteria";
        searchButton.Click += new EventHandler(button_Click);
        searchButton.Margin = new Padding(0, 0, 0, 0);
        searchButton.Text = string.Empty;
        searchButton.Image = Properties.Resources.SearchIcon;
        StackLayoutElement stackPanel = new StackLayoutElement();
        stackPanel.Orientation = Orientation.Horizontal;
        stackPanel.Margin = new Padding(1, 0, 1, 0);
        stackPanel.Children.Add(searchButton);
        RadTextBoxItem tbItem = this.TextBoxElement.TextBoxItem;
        this.TextBoxElement.Children.Remove(tbItem);
        DockLayoutPanel dockPanel = new DockLayoutPanel();
        dockPanel.Children.Add(stackPanel);
        dockPanel.Children.Add(tbItem);
        DockLayoutPanel.SetDock(tbItem, Telerik.WinControls.Layouts.Dock.Left);
        DockLayoutPanel.SetDock(stackPanel, Telerik.WinControls.Layouts.Dock.Right);
        this.TextBoxElement.Children.Add(dockPanel);
    }
    public class SearchBoxEventArgs : EventArgs
    {
        private string searchText;
        public string SearchText
        {
            get
            {
                return searchText;
            }
            set
            {
                searchText = value;
            }
        }
    }
    public event EventHandler<SearchBoxEventArgs> Search;
    private void button_Click(object sender, EventArgs e)
    {
        SearchBoxEventArgs newEvent = new SearchBoxEventArgs();
        newEvent.SearchText = this.Text;
        SearchEventRaiser(newEvent);
    }
    private void SearchEventRaiser(SearchBoxEventArgs e)
    {
        if (Search != null)
            Search(this, e);
    }
}

````
````VB.NET
Public Sub New()
    InitializeComponent()
    Dim searchBox As New SearchTextBox()
    searchBox.Size = New System.Drawing.Size(200, 20)
    searchBox.Location = New Point(10, 200)
    AddHandler searchBox.Search, AddressOf searchBox_Search
    Me.Controls.Add(searchBox)
End Sub
Private Sub searchBox_Search(sender As Object, e As SearchTextBox.SearchBoxEventArgs)
    RadMessageBox.Show("Search >> " & e.SearchText)
End Sub
Public Class SearchTextBox
Inherits RadTextBox
    Public Overrides Property ThemeClassName As String
        Get
            Return GetType(RadTextBox).FullName
        End Get
        Set(value As String)
            MyBase.ThemeClassName = value
        End Set
    End Property
    Protected Overrides Sub OnLoad(desiredSize As Size)
        MyBase.OnLoad(desiredSize)
        searchButton.ButtonFillElement.Visibility = Telerik.WinControls.ElementVisibility.Collapsed
        searchButton.ShowBorder = False
    End Sub
    Private searchButton As RadButtonElement
    Protected Overrides Sub InitializeTextElement()
        MyBase.InitializeTextElement()
        searchButton = New RadButtonElement()
        Me.TextBoxElement.TextBoxItem.NullText = "Enter search criteria"
        AddHandler searchButton.Click, AddressOf button_Click
        searchButton.Margin = New Padding(0, 0, 0, 0)
        searchButton.Text = String.Empty
        searchButton.Image = My.Resources.SearchIcon
        Dim stackPanel As New StackLayoutElement()
        stackPanel.Orientation = Orientation.Horizontal
        stackPanel.Margin = New Padding(1, 0, 1, 0)
        stackPanel.Children.Add(searchButton)
        Dim tbItem As RadTextBoxItem = Me.TextBoxElement.TextBoxItem
        Me.TextBoxElement.Children.Remove(tbItem)
        Dim dockPanel As New DockLayoutPanel()
        dockPanel.Children.Add(stackPanel)
        dockPanel.Children.Add(tbItem)
        DockLayoutPanel.SetDock(tbItem, Telerik.WinControls.Layouts.Dock.Left)
        DockLayoutPanel.SetDock(stackPanel, Telerik.WinControls.Layouts.Dock.Right)
        Me.TextBoxElement.Children.Add(dockPanel)
    End Sub
    Public Class SearchBoxEventArgs
    Inherits EventArgs
        Private m_searchText As String
        Public Property SearchText() As String
            Get
                Return m_searchText
            End Get
            Set(value As String)
                m_searchText = value
            End Set
        End Property
    End Class
    Public Event Search As EventHandler(Of SearchBoxEventArgs)
    Private Sub button_Click(sender As Object, e As EventArgs)
        Dim newEvent As New SearchBoxEventArgs()
        newEvent.SearchText = Me.Text
        SearchEventRaiser(newEvent)
    End Sub
    Private Sub SearchEventRaiser(e As SearchBoxEventArgs)
        RaiseEvent Search(Me, e)
    End Sub
End Class

````

>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/Genral_All_Controls/RadSearchBox).