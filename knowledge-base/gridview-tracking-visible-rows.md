---
title: Tracking Visible Rows When Scrolling in GridView for UI for WinForms
description: Learn how to identify which rows become visible or invisible as the user scrolls in GridView for UI for WinForms.
type: how-to
page_title: Detecting Visible Rows While Scrolling in GridView for UI for WinForms
meta_title: Detecting Visible Rows While Scrolling in GridView for UI for WinForms
slug: gridview-tracking-visible-rows
tags: gridview, ui-for-winforms, scrolling, visible-rows, vertical-scrollbar, visualrows
res_type: kb
ticketid: 1686303
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.4.1111|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description
In this article we will demonstrate how to track which rows in GridView for UI for WinForms become visible or invisible as the user scrolls vertically. For example, when a user scrolls down, we will get the row number that becomes visible at the bottom and the row number that disappears at the top.

## Solution

To achieve this, use the `Scroll` event of the vertical scrollbar and the `VisualRows` collection of the GridView. This collection contains the rows currently visible in the view. Compare it with a cached collection to determine which rows were added or removed.

Follow these steps:

1. Subscribe to the `Scroll` event of the GridView's vertical scrollbar.
2. Access the `VisualRows` collection to retrieve currently visible rows.
3. Compare the current `VisualRows` collection with a cached version to identify changes.

Here is an example code snippet:

````C#

public partial class Form1 : Form
{
    public Form1()
    {
        InitializeComponent();
        // Subscribe to the Scroll event of the vertical scrollbar.
        this.radGridView1.TableElement.VScrollBar.Scroll += VScrollBar_Scroll;
    }

    private int lastFirstVisibleRowIndex = -1;
	private int lastLastVisibleRowIndex = -1;
	private int previousScrollValue = 0; // Tracks the previous scroll position

	private void VScrollBar_Scroll(object sender, ScrollEventArgs e)
	{
		// Get the current scroll value
		int currentScrollValue = this.radGridView1.TableElement.VScrollBar.Value;

		// Determine the scroll direction
		if (currentScrollValue > previousScrollValue)
		{
			Debug.WriteLine("User is scrolling down.");
			// Call GetVisibleRows to handle visible row changes
			ProcessVisibleRows(true);
		}
		else if (currentScrollValue < previousScrollValue)
		{
			Debug.WriteLine("User is scrolling up.");
			// Call GetVisibleRows to handle visible row changes
			ProcessVisibleRows(false);
		}

		// Update the previous scroll value
		previousScrollValue = currentScrollValue;
	}
	BindingList<GridViewRowInfo> visibleRows = new BindingList<GridViewRowInfo>();
	
	public void ProcessVisibleRows(bool scrollDown)
	{
		int firstVisibleRowIndex = this.radGridView1.TableElement.VisualRows.FirstOrDefault(x => x is GridDataRowElement).RowInfo.Index;
		int lastVisibleRowIndex = this.radGridView1.TableElement.VisualRows.LastOrDefault(x => x is GridDataRowElement).RowInfo.Index;

		if (scrollDown)
		{
			// newly visible row in the view
			var newRowInfoIndex = this.radGridView1.Rows[lastVisibleRowIndex];

			// Notify which row has become visible at the top
			Debug.WriteLine($"Row #{visibleRows.First().Index} has become Invisible.");
			Debug.WriteLine($"Row #{lastVisibleRowIndex} has become visible.");
		}
		else
		{
			// newly visible row in the view
			var newRowInfoIndex = this.radGridView1.Rows[firstVisibleRowIndex];
			Debug.WriteLine($"Row #{firstVisibleRowIndex} has become visible.");
			Debug.WriteLine($"Row #{visibleRows.Last().Index} has become Invisible.");
		}
		visibleRows.Clear();
		this.BeginInvoke((() =>
		{
			GetVisibleRows();

		}));
	}
	
	public void GetVisibleRows()
	{

		foreach (GridRowElement rowElement in this.radGridView1.TableElement.VisualRows.Where(x => x is GridDataRowElement))
		{
			visibleRows.Add(rowElement.RowInfo);
		}
		Debug.WriteLine($"-----------Row #{visibleRows.First().Index} First visible.");
		Debug.WriteLine($"-----------Row #{(visibleRows.Last().DataBoundItem as ParentObject).Id} Last visible.");
	}
}

````


