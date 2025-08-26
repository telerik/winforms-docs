---
title: Prompt Library
page_title: Telerik UI for WinForms Prompt Library
description: Explore the collection of prompts that you can use with the Telerik UI for WinForms AI Coding Assistant.
slug: ai-prompt-library
tags: telerik,winforms,ai,coding assistant,prompt,library
position: 3
---

# Telerik UI for WinForms Prompt Library

Welcome to the Telerik UI for WinForms Prompt Library.

The prompts provided here are intended and optimized for use with the Telerik UI for WinForms AI Coding Assistant [MCP Server]({%slug ai-mcp-server%}). They can help you kick start your app development and speed up the component configuration process.

This collection of prompts is not exhaustive and the Telerik UI for WinForms team is constantly working on adding more prompts to the library.

## How to Use the Prompts

All prompts in this library target the [MCP Server]({%slug ai-mcp-server%}) via the `#telerik_winforms_assistant` handle. Make sure that you have installed and enabled the MCP Server before attempting to run the prompts.

1. Browse the prompt library to find a prompt that suits your needs.
2. Copy the prompt text (including the `#telerik_winforms_assistant` handle).
3. (Optional) Customize the prompt as needed for your specific use case but keep the `#telerik_winforms_assistant` handle.<br/>When modifying the prompts, make sure the changes comply with the [recommendations]({%slug ai-overview%}#recommendations) for the AI Coding Assistant.
4. Run the prompt against the [MCP Server]({%slug ai-mcp-server%}).

>warning Always double-check the code and solutions proposed by any AI-powered tool before applying them to your project.

>caption Use with the Copilot Extension

To run the provided prompts in the Telerik UI for WinForms GitHub Copilot Extension (without the MCP Server installed), modify the prompts to use the `@telerik` handle instead.

## Assembly-Specific Prompts

This section provides prompt ideas for the [currently supported assemblies]({%slug ai-overview%}#supported-assemblies).

### WinControls.UI Assembly

The __Telerik.Telerik.WinControls.UI__ assembly exposes many components. One of them is the [Telerik UI for WinForms RadDropDownList]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/dropdownlist%}) control, which allows you to display a list of items from which the user can choose.

<table>
<tr>
<th>DataBound the RadDropDownList to a custom collection</th>
<th>DataBound the RadDropDownList and allow multiple selection</th>
</tr>
<tr>  
<td>
<pre><code>
\#telerik_winforms_assistant Add RadDropDownList data bound to a collection of business objects. Each object should have a Name, Address, City and Country property. Use the Name to display the items in the UI.
</code></pre>
</td>
<td>
<pre><code>
\#telerik_winforms_assistant Add RadDropDownList (WinForms) data bound to a collection of business objects. Each object should have a Name, Address, City and Country property. Use the Name to display the items in the UI. Show all of the properties in the drop down and allow multipe selection.
</code></pre>
</td>
</tr>   
</table>  


### GridView Assembly

The __Telerik.Windows.Controls.GridView__ assembly provides the [Telerik UI for WinForms RadGridView]({%slug winforms/gridview%}) component, which enables you to create fully customizable and highly interactive interfaces for display and management of large data.

<table>
<tr>
<th>DataBound the RadGridView with 100 records.</th>
<th>DataBound the RadGridView and add combobox column</th>
</tr>
<tr>
<td>
<pre><code>
\#telerik_winforms_assistant Create a RadGridView with 100 records each having Id, Name and Company. Group the data by Company. Sort by name. Add aggregate count function for the company column.
</code></pre>
</td>
<td>
<pre><code>
\#telerik_winforms_assistant Data bind the RadGridView control to a collection of items. Add columns for stocks data manually where one of the columns should use a combobox.
</code></pre>
</td>
</tr>   
</table>  

<table>
<tr>
<th>DataBound the RadGridView and customize it.</th>
<th>DataBound the RadGridView and cancel the editing.</th>
</tr>
<tr>
<td>
<pre><code>
\#telerik_winforms_assistant Create a RadGridView with 3 columns - Name, Country, City. Add the corresponding business object in the code behind and populate is with sample data. Add 20 entries to the data. Change the selection text color and mouse over color of the datagrid cells and rows. Apply different color for rows based on a condition (alternating rows).
</code></pre>
</td>
<td>
<pre><code>
\#telerik_winforms_assistant Create a RadGridView with 3 columns - Name, Country, City. Add the corresponding business object in the code behind and populate is with sample data. Add 20 entries to the data. And show me how to cancel the editing of the datagrid cell.
</code></pre>
</td>
</tr>   
</table>  


#### RadDock Assembly

The __Telerik.WinControls.RadDock__ assembly provides the Telerik UI for WinForms RadDocking, which you can use to introduce a docking system like the Microsoft Visual Studio.

<table>
<tr>
<th>Create basic RadDock with 2 panels.</th>
<th>Save and load the layout.</th>
</tr>
<tr>
<td>
<pre><code>
\#telerik_winforms_assistant Create a basic RadDocking layout with two panes docked on the left, one on the right and two on the bottom of the control.
</code></pre>
</td>
<td>
<pre><code>
\#telerik_winforms_assistant How to save and load the current docking layout.
</code></pre>
</td>
</tr>   
</table>  


#### RichTextEditor Assembly

The __Telerik.WinControls.RichTextEditor__ assembly enables you to use the Telerik UI for WinForms RadRichTextEditor component, which provides advanced features for displaying and editing rich-text content.

<table>
<tr>
<th>Import or export different formats.</th>
<th>How to insert element like images or text in the document. </th>
</tr>
<tr>
<td>
<pre><code>
\#telerik_winforms_assistant How to import and export different formats in the rich text editor. Add toolbar items for import and export options.
</code></pre>
</td>
<td>
<pre><code>
\#telerik_winforms_assistant How to Insert element like images, text in the document. 
</code></pre>
</td>
</tr>   
</table>  




