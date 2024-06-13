---
title: Printing RadGridView via Telerik Reporting
description: Printing RadGridView via Telerik Reporting. Check it now!
type: how-to
page_title: Printing RadGridView via Telerik Reporting
slug: printing-radgridview-via-telerik-reporting
tags: gridview, reporting, print
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2008|RadGridView for WinForms|Martin Vasilev|05/10/2008|
 
 
**HOW-TO**
 
Generate a report based on RadGridView, and using the export capabilities of Telerik Reporting.
 
**DESCRIPTION**
 
In [this code library article](/community/code-library/winforms/gridview/telerik-reporting-report-generation-using-radgridview-for-winforms.aspx) could be found a simple class that allows to easily export a single-level hierarchy RadGridView in a Telerik Reporting report.  This report can then be printed or exported in a variety of formats.   

You can use the properties below to control the appearance of the report.
 
Int AllMargins – Set all paper margins in millimeters  

Int BottomMargin – Set bottom margin in millimeters  

Int TopMargin – Set top margin in millimeters  

Int LeftMargin – Set left margin in millimeters  

Int RightMargin – Set right margin in millimeters  

bool FitToPageSize – Controls whether report table is fit to page size  

bool PageLandScape – Controls orientation of the report on the page  

PaperKind PaperKind – Set paper type (A4, A3 etc.)  

bool RepeatTableHeader – Controls whether the table header is repeated on each page  

string ReportName – Set report name  

size ReportSize – Set report size  

FormWindowState ReportWindowState – Set report form window state  

bool UseGridColors – Controls whether the report uses the header colors from RadGridView  
   
*RadGridReport(string reportName)* – Create a new instance of the class
 
*ReportFormShow(IWin32Window owner, RadGridView radGridView)* - generate and show the report.  
   
**SOLUTION**
 
1. Add a reference to RadGridReportingLite.dll in your project (the library project could be find in [this article](/community/code-library/winforms/gridview/telerik-reporting-report-generation-using-radgridview-for-winforms.aspx)).
2. Create an instance of RadGridReport:   
 *RadGridReportingLite.RadGridReport report = new RadGridReportingLite.RadGridReport("MyGridReport");*
3. Set properties controlling format and appearance:
    
 ````C#
report.AllMargins = 1;  
report.FitToPageSize = true;  
report.RepeatTableHeader = true; 

 ````
 
4. Generate and show the report using the code below:  
 *report.ReportFormShow(this, this.radGridView1);*



