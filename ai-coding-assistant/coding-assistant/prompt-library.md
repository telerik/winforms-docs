---
title: Prompt Library
page_title: Telerik UI for WinForms Prompt Library
description: Explore the collection of prompts that you can use with the Telerik UI for WinForms AI Coding Assistant.
slug: ai-prompt-library
tags: telerik,winforms,ai,coding assistant,prompt,library
position: 4
---

# Telerik UI for WinForms Prompt Library

Welcome to the Telerik UI for WinForms Prompt Library.

The prompts provided here are intended and optimized for use with the Telerik UI for WinForms AI Coding Assistant [MCP Server]({%slug ai-mcp-server%}). They can help you kick start your app development and speed up the component configuration process.

This collection of prompts is not exhaustive and the Telerik UI for WinForms team is constantly working on adding more prompts to the library.

## How to Use the Prompts

All prompts in this library target the [MCP Server]({%slug ai-mcp-server%}) via the `#telerik-winforms-assistant` handle. Make sure that you have installed and enabled the MCP Server before attempting to run the prompts.

1. Browse the prompt library to find a prompt that suits your needs.
2. Copy the prompt text (including the `#telerik-winforms-assistant` handle).
3. (Optional) Customize the prompt as needed for your specific use case but keep the `#telerik-winforms-assistant` handle.<br/>When modifying the prompts, make sure the changes comply with the [recommendations]({%slug ai-overview%}#recommendations) for the AI Coding Assistant.
4. Run the prompt against the [MCP Server]({%slug ai-mcp-server%}).

>warning Always double-check the code and solutions proposed by any AI-powered tool before applying them to your project.

## Assembly-Specific Prompts

This section provides prompt ideas for the [currently supported assemblies]({%slug ai-overview%}).

### WinControls.UI Assembly

The __Telerik.WinControls.UI__ assembly exposes many components. One of them is the [Telerik UI for WinForms RadDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist%}) control, which allows you to display a list of items from which the user can choose.

<table>
<tr>
<th>Databind the RadDropDownList to a custom collection</th>
<th>Databind the RadCheckedDropDownList and allow multiple selection</th>
</tr>
<tr>  
<td>
<pre><code>
#telerik-winforms-assistant Add combobox data bound to a collection of business objects. Each object should have a Name, Address, City and Country property. Use the Name to display the items in the UI
</code></pre>
</td>
<td>
<pre><code>
#telerik-winforms-assistant Create a RadDropDownList bound to some sample data. The control should allow multiple selection 
        
</code></pre>
</td>
</tr>   
</table>
<table>
<tr>
<th>Dynamically add pages in RadPageView</th>
<th>Preselect a page in RadPageView</th>
</tr>
<tr>  
<td>
<pre><code>
#telerik-winforms-assistant Add pages dynamically to the pageview and change the page text when selecting the page
</code></pre>
</td>
<td>
<pre><code>
#telerik-winforms-assistant Create PageView with 3 tabs and preselect the second tab
</code></pre>
</td>
</tr>   
</table> 

### GridView Assembly

The __Telerik.WinControls.GridView__ assembly provides the [Telerik UI for WinForms RadGridView]({%slug winforms/gridview%}) component, which enables you to create fully customizable and highly interactive interfaces for display and management of large data.

<table>
<tr>
<th>DataBound the RadGridView with 100 records.</th>
<th>DataBound the RadGridView and add combobox column</th>
</tr>
<tr>
<td>
<pre><code>
#telerik-winforms-assistant Create a RadGridView with 100 records each having Id, Name and Company. Group the data by Company. Sort by name. Add aggregate count function for the company column.
</code></pre>
</td>
<td>
<pre><code>
#telerik-winforms-assistant Data bind the RadGridView control to a collection of items. Add columns for stocks data manually where one of the columns should use a combobox.
</code></pre>
</td>
</tr>   
</table>
<table>
<tr>
<th>DataBound the RadGridView and customize it</th>
<th>Merge Cells in RadGridView</th>
</tr>
<tr>
<td>
<pre><code>
#telerik-winforms-assistant Create a RadGridView and bind it to a sample data. Change the selection text color and mouse over color of the datagrid cells and rows. Apply different color for rows based on a condition (alternating rows)
</code></pre>
</td>
<td>
<pre><code>
#telerik-winforms-assistant Bind the RadGridView to sample data. Demonstrate how to merge cells in control
</code></pre>
</td>
</tr>   
</table>

### RadDock Assembly

The __Telerik.WinControls.RadDock__ assembly provides the Telerik UI for WinForms RadDocking, which you can use to introduce a docking system like the Microsoft Visual Studio.

<table>
<tr>
<th>Create basic RadDock with 2 panels</th>
<th>Save and load the layout</th>
</tr>
<tr>
<td>
<pre><code>
#telerik-winforms-assistant Create a basic RadDocking layout with two panes docked on the left, one on the right and two on the bottom of the control
</code></pre>
</td>
<td>
<pre><code>
#telerik-winforms-assistant How to save and load the current docking layout
</code></pre>
</td>
</tr>   
</table>  


### RichTextEditor Assembly

The __Telerik.WinControls.RichTextEditor__ assembly enables you to use the Telerik UI for WinForms RadRichTextEditor component, which provides advanced features for displaying and editing rich-text content.

<table>
<tr>
<th>RadRichTextEditor and RichTextEditorRiboonBar integration</th>
<th>Allow export in various formats</th>
</tr>
<tr>
<td>
<pre><code>
#telerik-winforms-assistant Create a RadRichTextEditor and load a document. Associate the RichTextEditorRiboonBar to control editing and styling
</code></pre>
</td>
<td>
<pre><code>
#telerik-winforms-assistant I have a document already loaded inside RadRichTextEditor. I want to allow exporting in various formats
</code></pre>
</td>
</tr>   
</table>  




