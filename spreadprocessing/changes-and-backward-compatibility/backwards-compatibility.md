---
title: Backwards Compatibility
page_title: Backwards Compatibility | UI for WinForms Documentation
description: Backwards Compatibility
slug: winforms/spreadprocessing/changes-and-backward-compatibility/backwards-compatibility
tags: backwards,compatibility
published: True
position: 1
previous_url: spreadprocessing-backwards-compatibility
---

# Backwards Compatibility

This article will list the breaking changes and how they can be fixed when upgrading from a specific version of the controls to the next one.

## What's Different in 2016 R1

### Changed

**Telerik.Windows.Maths.dll** is removed and integrated in Telerik.Windows.Documents.Spreadsheet.

### Changed

Telerik.Windows.Maths::**InterpolationExtensions** is now internal.

### Changed

Telerik.Windows.Maths::**RVector** is now internal.

### Changed

Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionBase.Evaluate(RadExpression[] arguments)** method is obsolete.

### What to do now

Use Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionBase.Evaluate(FunctionEvaluationContext context)** instead.

### Changed

Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionBase.EvaluateOverride(RadExpression[] arguments)** is obsolete.

### What to do now

Use Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionBase.EvaluateOverride(FunctionEvaluationContext context)** instead.


### Changed

Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionWithArguments.EvaluateOverride(object[] arguments)** is obsolete.

### What to do now

Use Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionWithArguments.EvaluateOverride(FunctionEvaluationContext&lt;object&gt; context)** instead.

### Changed

 Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionWithSameTypeArguments&lt;T&gt;.EvaluateOverride(T[] arguments)** instead.

### What to do now

Use Telerik.Windows.Documents.Spreadsheet.Expressions.Functions::**FunctionWithSameTypeArguments&lt;T&gt;.EvaluateOverride(FunctionEvaluationContext&lt;T&gt; context)** instead.


## What's Different in 2015 R2

### Changed 

Telerik.Windows.Documents.Spreadsheet.Layout.Layers.WorksheetRenderUpdateContext::ViewportPaneTypeToVisibleCellBoxes property is removed.

### What to do now 

Use Telerik.Windows.Documents.Spreadsheet.Layout.Layers.WorksheetRenderUpdateContext::VisibleCellLayoutBoxes property instead.

### Changed 

Telerik.Windows.Documents.Spreadsheet.Measurement.FontManager is removed.

### What to do now 

Use Telerik.Windows.Documents.Core.Fonts.SystemFontsManager class instead.

### Changed 

Telerik.Windows.Documents.Spreadsheet.Model.SpreadsheetNameCollectionScope::Name property is removed.

### Changed 

Telerik.Windows.Documents.Spreadsheet.Model.SelectionState::SelectionState(IEnumerable selectedRanges, CellIndex activeCellIndex) constructor is removed.

### What to do now 

Use Telerik.Windows.Documents.Spreadsheet.Model.SelectionState::SelectionState(IEnumerable selectedRanges, CellIndex activeCellIndex, ViewportPaneType pane) constructor instead.

### Changed 

Telerik.Windows.Documents.Spreadsheet.Utilities.UnitHelper::EMUsToDIP(int value) is removed.

### What to do now 

Use EmuToDip(double value) method instead.

## What's Different in 2014 R3

### Changed 

The default value of the IsEnabled property of the WorkbookHistory class is changed to false.

### What to do now 

You can enable the history of a Workbook by setting the property to true.
        

### Changed 

The Width, Height and RotationAngle properties of the FloatingShapeBase class no longer update the CellIndex, OffsetX and OffsetY properties.
        

### What to do now 

If it is necessary for them to be updated automatically, the SetWidth, SetHeight and SetRotationAngle methods can be used instead with the bool adjustCellIndex parameter set to true.
        

### Changed 

String Name property of SpreadsheetNameCollectionScope is marked obsolete.
        

### What to do now 

The property is related to the RadSpreadsheet UI control and is not used in the processing library.
        
