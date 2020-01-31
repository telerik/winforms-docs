---
title: Highlight Filtering Results in RadListView
description: This article demonstrates how to highlight results when filtering in RadListView. 
type: how-to
page_title: Highlight Filtering Results in RadListView
slug: highlight-filtering-results-in-radlistview
position: 0
tags: listview, filtering, highlight
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.1.113|RadListView for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|
 
## Description

This tutorial demonstrates how to highlight text results when filtering in **RadListView**. 
 
![highlight-filtering-results-in-radlistview.png 001](images/highlight-filtering-results-in-radlistview001.png)

## Solution 

The desired text highlight effect can be achieved by setting the **TextParams** **highlightRanges** and **highlightColor** properties just before the paint cycle of **SimpleListViewVisualItem**. 

* First, we need to create a custom **SimpleListViewVisualItem** by subscribing to the **VisualItemCreating** event of **RadListView**. 

* The custom **SimpleListViewVisualItem** has three main highlight related properties: **HighlightText**, **HighlightTextColor**, **HighlightCompareOptions**.

* We need to override the **CreateTextParams** method and there we can add our **hightlightRanges** and set the **highlightColor**. The **GetSearchHighlightRanges** method is responsible for creating the **highlightRanges** and considers the **HightlightText** and **HighlightCompareOptions**.

* Last, but not least we need to update the **HighlightText** when the text of a text box is changed by handling the **TextChanged** event and force the **RadListView** to repaint.

A full code snippet is illustrated below:
 

````C#

public RadForm1()
{
    InitializeComponent();

    radListView1.EnableFiltering = true;
    this.radListView1.VisualItemCreating += this.RadListView1_VisualItemCreating;
    this.radTextBoxControl1.TextChanged += this.radTextBoxControl1_TextChanged;
}

private void RadListView1_VisualItemCreating(object sender, ListViewVisualItemCreatingEventArgs e)
{
    e.VisualItem = new HighlightListViewVisualItem();
}

string value;
private void radTextBoxControl1_TextChanged(object sender, EventArgs e)
{
    this.radListView1.FilterDescriptors.Clear();

    HighlightListViewVisualItem.HighlightText = this.radTextBoxControl1.Text;
    this.radListView1.Refresh();

    value = (sender as RadTextBoxControl).Text;

    if (value != null)
    {
        FilterDescriptor valueFilter = new FilterDescriptor(this.radListView1.DisplayMember, FilterOperator.Contains, value);
        this.radListView1.FilterDescriptors.Add(valueFilter);
    }
}

public class HighlightListViewVisualItem : SimpleListViewVisualItem
{
    public static string HighlightText { get; set; }

    public static Color HighlightTextColor { get; set; }

    public static CompareOptions HighlightCompareOptions { get; set; }

    static HighlightListViewVisualItem()
    {
        HighlightText = string.Empty;
        HighlightTextColor = Color.FromArgb(128, Color.Aqua);
        HighlightCompareOptions = CompareOptions.OrdinalIgnoreCase;
    }
    protected override TextParams CreateTextParams()
    {
        TextParams textParams = base.CreateTextParams();
        if (!string.IsNullOrEmpty(HighlightListViewVisualItem.HighlightText))
        {
            List<CharacterRange> ranges = this.GetSearchHighlightRanges();
            if (ranges.Count > 0)
            {
                textParams.highlightRanges = ranges.ToArray();
                textParams.highlightColor = HighlightListViewVisualItem.HighlightTextColor;
            }
        }
        return textParams;
    }

    private List<CharacterRange> GetSearchHighlightRanges()
    {
        List<CharacterRange> ranges = new List<CharacterRange>();
        string criteria = HighlightListViewVisualItem.HighlightText;

        int index = -1;
        CompareOptions options = HighlightListViewVisualItem.HighlightCompareOptions;
        string text = this.Text;
        do
        {
            if (index + 1 >= text.Length)
            {
                break;
            }

            index = System.Threading.Thread.CurrentThread.CurrentUICulture.CompareInfo.IndexOf(text, criteria, index + 1, options);

            if (index >= 0)
            {
                if ((options & CompareOptions.IgnoreSymbols) == CompareOptions.IgnoreSymbols)
                {
                    int rangeLength = 0;
                    int criteriaLength = criteria.Length;
                    int currentIndex = index;

                    while (criteriaLength > 0 && currentIndex < text.Length)
                    {
                        if (Char.IsLetterOrDigit(text[currentIndex]))
                        {
                            criteriaLength--;
                        }

                        rangeLength++;
                        currentIndex++;
                    }

                    ranges.Add(new CharacterRange(index, rangeLength));
                }
                else
                {
                    ranges.Add(new CharacterRange(index, criteria.Length));
                }
            }
        }
        while (index >= 0 && ranges.Count < 32);

        return ranges;
    }

    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(SimpleListViewVisualItem);
        }
    }
}

        
````
````VB.NET

Public Sub New()
    InitializeComponent()
    RadListView1.EnableFiltering = True
    AddHandler Me.RadTextBoxControl1.TextChanged, AddressOf Me.radTextBoxControl1_TextChanged
    AddHandler Me.RadListView1.VisualItemCreating, AddressOf Me.RadListView1_VisualItemCreating
End Sub

Private Sub RadListView1_VisualItemCreating(ByVal sender As Object, ByVal e As ListViewVisualItemCreatingEventArgs)
    e.VisualItem = New HighlightListViewVisualItem()
End Sub

Private value As String
Private Sub radTextBoxControl1_TextChanged(ByVal sender As Object, ByVal e As EventArgs)
    Me.RadListView1.FilterDescriptors.Clear()
    HighlightListViewVisualItem.HighlightText = Me.RadTextBoxControl1.Text
    Me.RadListView1.Refresh()
    value = (TryCast(sender, RadTextBoxControl)).Text

    If value IsNot Nothing Then
        Dim valueFilter As FilterDescriptor = New FilterDescriptor(Me.RadListView1.DisplayMember, FilterOperator.Contains, value)
        Me.RadListView1.FilterDescriptors.Add(valueFilter)
    End If
End Sub

Public Class HighlightListViewVisualItem
    Inherits SimpleListViewVisualItem

    Public Shared Property HighlightText As String
    Public Shared Property HighlightTextColor As Color
    Public Shared Property HighlightCompareOptions As CompareOptions

    Shared Sub New()
        HighlightText = String.Empty
        HighlightTextColor = Color.FromArgb(128, Color.Aqua)
        HighlightCompareOptions = CompareOptions.OrdinalIgnoreCase
    End Sub

    Protected Overrides Function CreateTextParams() As TextParams
        Dim textParams As TextParams = MyBase.CreateTextParams()

        If Not String.IsNullOrEmpty(HighlightListViewVisualItem.HighlightText) Then
            Dim ranges As List(Of CharacterRange) = Me.GetSearchHighlightRanges()

            If ranges.Count > 0 Then
                textParams.highlightRanges = ranges.ToArray()
                textParams.highlightColor = HighlightListViewVisualItem.HighlightTextColor
            End If
        End If

        Return textParams
    End Function

    Private Function GetSearchHighlightRanges() As List(Of CharacterRange)
        Dim ranges As List(Of CharacterRange) = New List(Of CharacterRange)()
        Dim criteria As String = HighlightListViewVisualItem.HighlightText
        Dim index As Integer = -1
        Dim options As CompareOptions = HighlightListViewVisualItem.HighlightCompareOptions
        Dim text As String = Me.Text

        Do

            If index + 1 >= text.Length Then
                Exit Do
            End If

            index = System.Threading.Thread.CurrentThread.CurrentUICulture.CompareInfo.IndexOf(text, criteria, index + 1, options)

            If index >= 0 Then

                If (options And CompareOptions.IgnoreSymbols) = CompareOptions.IgnoreSymbols Then
                    Dim rangeLength As Integer = 0
                    Dim criteriaLength As Integer = criteria.Length
                    Dim currentIndex As Integer = index

                    While criteriaLength > 0 AndAlso currentIndex < text.Length

                        If Char.IsLetterOrDigit(text(currentIndex)) Then
                            criteriaLength -= 1
                        End If

                        rangeLength += 1
                        currentIndex += 1
                    End While

                    ranges.Add(New CharacterRange(index, rangeLength))
                Else
                    ranges.Add(New CharacterRange(index, criteria.Length))
                End If
            End If
        Loop While index >= 0 AndAlso ranges.Count < 32

        Return ranges
    End Function

    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(SimpleListViewVisualItem)
        End Get
    End Property
End Class
  

````


