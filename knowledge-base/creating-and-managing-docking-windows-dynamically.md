---
title: Creating and managing docking windows dynamically
description: Creating and managing docking windows dynamically. Check it now!
type: how-to
page_title: Creating and managing docking windows dynamically
slug: creating-and-managing-docking-windows-dynamically
tags: dock
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2007|RadDock for WinForms|Julian Benkov|June 1, 2007|
 
 
   
**HOW-TO**    
Create and manage docking windows dynamically  
   
 
**SOLUTION**
A basic problem related to DockingManager is how to restore saved dock layout and it's content of inner controls hosted in DockPanel and DocumentPane windows.  
   
The solution is to restore dynamically the windows using the GUID provided for the IDockable window from its **ID** - property:
 
````C#
public partial class MainForm : Form 
{ 
    private ReportDataSet.ReportTableDataTable reports = new ReportDataSet.ReportTableDataTable(); 
 
    public MainForm() 
    { 
        InitializeComponent(); 
    } 
 
    private void MainForm_Load(object sender, EventArgs e) 
    { 
 
#if Init 
        ReportDockForm form = new ReportDockForm(); 
        form.Text = "Report 1"; 
        form.ReportContent = "Report 1 Content!!!"; 
 
        dockingManager.SetDocument(form); 
 
        form = new ReportDockForm(); 
        form.Text = "Report 3"; 
        form.ReportContent = "Report 3 Content!!!"; 
 
        dockingManager.SetDocument(form); 
 
        form = new ReportDockForm(); 
        form.Text = "Report 2"; 
        form.ReportContent = "Report 2 Content!!!"; 
 
        dockingManager.SetDocument(form); 
#else 
 
        try 
        { 
            dockingManager.LoadXML(Application.StartupPath + "\\dock.cfg"); 
 
            reports.ReadXml(Application.StartupPath + "\\reports.rpt"); 
            for (int i = 0; i < reports.Count; i++) 
            { 
                ReportDockForm dockForm = GetDocumentForm(reports[i].DockGuid); 
                if (dockForm != null) 
                { 
                    dockForm.Text = reports[i].Name; 
                    dockForm.ReportContent = reports[i].Content; 
                } 
            } 
        } 
        catch { } 
 
#endif 
 
 
    } 
 
    private ReportDockForm GetDocumentForm(string guid) 
    { 
        for (int i = 0; i < dockingManager.Documents.Count; i++) 
        { 
            if(dockingManager.Documents[i].ID.ToString() == guid) 
            { 
                return dockingManager.Documents[i] as ReportDockForm; 
            } 
        } 
 
        return null; 
    } 
 
    private void MainForm_FormClosing(object sender, FormClosingEventArgs e) 
    { 
        reports.Clear(); 
        for (int i = 0; i < dockingManager.Documents.Count; i++) 
        { 
            ReportDockForm dockForm = dockingManager.Documents[i] as ReportDockForm; 
            if(dockForm != null) 
            { 
                ReportDataSet.ReportTableRow row = reports.NewReportTableRow(); 
                row.DockGuid = dockForm.ID.ToString(); 
                row.Name = dockForm.Text; 
                row.Content = dockForm.ReportContent; 
                reports.AddReportTableRow(row); 
            } 
        } 
        reports.AcceptChanges(); 
 
        reports.WriteXml(Application.StartupPath + "\\reports.rpt"); 
 
        dockingManager.SaveXML(Application.StartupPath + "\\dock.cfg"); 
    } 
}

````
````VB.NET
Public Partial Class MainForm
    Inherits Form

    Private reports As ReportDataSet.ReportTableDataTable = New ReportDataSet.ReportTableDataTable()

    Public Sub New()
        InitializeComponent()
    End Sub

    Private Sub MainForm_Load(ByVal sender As Object, ByVal e As EventArgs)
        Try
            dockingManager.LoadXML(Application.StartupPath & "\dock.cfg")
            reports.ReadXml(Application.StartupPath & "\reports.rpt")

            For i As Integer = 0 To reports.Count - 1
                Dim dockForm As ReportDockForm = GetDocumentForm(reports(i).DockGuid)

                If dockForm IsNot Nothing Then
                    dockForm.Text = reports(i).Name
                    dockForm.ReportContent = reports(i).Content
                End If
            Next

        Catch
        End Try
    End Sub

    Private Function GetDocumentForm(ByVal guid As String) As ReportDockForm
        For i As Integer = 0 To dockingManager.Documents.Count - 1

            If dockingManager.Documents(i).ID.ToString() = guid Then
                Return TryCast(dockingManager.Documents(i), ReportDockForm)
            End If
        Next

        Return Nothing
    End Function

    Private Sub MainForm_FormClosing(ByVal sender As Object, ByVal e As FormClosingEventArgs)
        reports.Clear()

        For i As Integer = 0 To dockingManager.Documents.Count - 1
            Dim dockForm As ReportDockForm = TryCast(dockingManager.Documents(i), ReportDockForm)

            If dockForm IsNot Nothing Then
                Dim row As ReportDataSet.ReportTableRow = reports.NewReportTableRow()
                row.DockGuid = dockForm.ID.ToString()
                row.Name = dockForm.Text
                row.Content = dockForm.ReportContent
                reports.AddReportTableRow(row)
            End If
        Next

        reports.AcceptChanges()
        reports.WriteXml(Application.StartupPath & "\reports.rpt")
        dockingManager.SaveXML(Application.StartupPath & "\dock.cfg")
    End Sub
End Class

````


Sample business object:  

````C#
public class ReportDockForm : UserDockForm 
{ 
    private RichTextBox rtf = new RichTextBox(); 
 
    public ReportDockForm() 
    { 
        rtf.Dock = DockStyle.Fill; 
        this.Controls.Add(rtf); 
    } 
 
    public string ReportContent 
    { 
        get { return rtf.Text; } 
        set { rtf.Text = value; } 
    } 
} 

````
````VB.NET
Public Class ReportDockForm
    Inherits UserDockForm

    Private rtf As RichTextBox = New RichTextBox()

    Public Sub New()
        rtf.Dock = DockStyle.Fill
        Me.Controls.Add(rtf)
    End Sub

    Public Property ReportContent As String
        Get
            Return rtf.Text
        End Get
        Set(ByVal value As String)
            rtf.Text = value
        End Set
    End Property
End Class

````
   