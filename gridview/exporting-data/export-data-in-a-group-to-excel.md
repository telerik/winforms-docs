---
title: Export Data in a Group to Excel
page_title: Export Data in a Group to Excel
description: Export Data in a Group to Excel
slug: gridview-exporting-data-export-data-in-a-group-to-excel
tags: export,data,in,a,group,to,excel
published: True
position: 3
---

# Export Data in a Group to Excel



## 

Sometimes you may need to export just the data in a group in a grouped RadGridView. 
      	This is possible by using the context menu and its API:

1. Create RadContextMenu and get the right-clicked group header row by using the __MouseDown__event and the
        		__GetGridGroupHeaderRowElement__ method. After determining the clicked group row, you can get its child rows. Then simply show the 
            context menu:

#### __[C#]__

{{region createContextMenuAndGetTheGroupChildRows}}
	
	        GridViewChildRowCollection childRowsForExport;
	
	        void radGridView1_MouseDown(object sender, MouseEventArgs e)
	        {
	            if (e.Button == MouseButtons.Right)
	            {
	                GridGroupHeaderRowElement headerRowElement = this.GetGridGroupHeaderRowElement(e.Location);
	                RadContextMenu radContextMenu1 = new RadContextMenu();
	                RadMenuItem contextMenuItem = new RadMenuItem();
	                
	                contextMenuItem.Text = "Export to Excel";
	                contextMenuItem.Click += new EventHandler(contextMenuItem_Click);
	                radContextMenu1.Items.Add(contextMenuItem);
	
	                if (headerRowElement != null)
	                {
	                    this.childRowsForExport = headerRowElement.RowInfo.ChildRows;
	
	                    radContextMenu1.DropDown.Location = this.PointToScreen(e.Location);
	                    radContextMenu1.Show();
	                }
	            }
	        }
	
	        private GridGroupHeaderRowElement GetGridGroupHeaderRowElement(Point location)
	        {
	            RadElement elementUnderMouse = this.radGridView1.ElementTree.GetElementAtPoint(location);
	
	            while (elementUnderMouse != null)
	            {
	                GridGroupHeaderRowElement headerRow = elementUnderMouse as GridGroupHeaderRowElement;
	
	                if (headerRow != null)
	                {
	                    return headerRow;
	                }
	
	                elementUnderMouse = elementUnderMouse.Parent;
	            }
	            return null;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region createContextMenuAndGetTheGroupChildRows}}
	
	    Private childRowsForExport As GridViewChildRowCollection
	
	    Private Sub radGridView1_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs) Handles RadGridView1.MouseDown
	        If e.Button = MouseButtons.Right Then
	            Dim headerRowElement As GridGroupHeaderRowElement = Me.GetGridGroupHeaderRowElement(e.Location)
	            Dim radContextMenu1 As New RadContextMenu()
	            Dim contextMenuItem As New RadMenuItem()
	
	            contextMenuItem.Text = "Export to Excel"
	            AddHandler contextMenuItem.Click, AddressOf contextMenuItem_Click
	            radContextMenu1.Items.Add(contextMenuItem)
	
	            If headerRowElement IsNot Nothing Then
	                Me.childRowsForExport = headerRowElement.RowInfo.ChildRows
	
	                radContextMenu1.DropDown.Location = Me.PointToScreen(e.Location)
	                radContextMenu1.Show()
	            End If
	        End If
	    End Sub
	
	    Private Function GetGridGroupHeaderRowElement(ByVal location As Point) As GridGroupHeaderRowElement
	        Dim elementUnderMouse As RadElement = Me.RadGridView1.ElementTree.GetElementAtPoint(location)
	
	        While elementUnderMouse IsNot Nothing
	            Dim headerRow As GridGroupHeaderRowElement = TryCast(elementUnderMouse, GridGroupHeaderRowElement)
	
	            If headerRow IsNot Nothing Then
	                Return headerRow
	            End If
	
	            elementUnderMouse = elementUnderMouse.Parent
	        End While
	        Return Nothing
	    End Function
	{{endregion}}



1. Since the export to excel methods do not support exporting only specified records,
            you can work-around this if you temporarily hide the unnecessary rows and use
        		[ExportToExcelML]({%slug gridview-exporting-data-export-to-excel-via-excelml-format%}) class with the 
          	__DonNotExport__ for __HiddenRowOption__ properties.

1. In the click event of the context menu item, mark the rows in the RadGridView.Rows collection that match the rows of the child collection by 
            setting their
        		__IsVisible__ property to *true*, and all the rest to *false*. 
          	Then simply export RadGridView with __HiddenRowOption__ set to *HiddenOption.DoNotExport*:

#### __[C#]__

{{region markTheUnnesseceryRowsAndExportTheRestOfThem}}
	        void contextMenuItem_Click(object sender, EventArgs e)
	        {
	            if (this.childRowsForExport != null && this.childRowsForExport.Count > 0)
	            {
	                SaveFileDialog dialog = new SaveFileDialog();
	                dialog.Filter = "Excel File (*.xls)|*.xls";
	
	                if (dialog.ShowDialog() == DialogResult.OK)
	                {
	                    //hide rows, which should not be exported
	                    foreach (GridViewRowInfo row in this.radGridView1.Rows)
	                    {
	                        bool isVisible = false;
	                        foreach (GridViewRowInfo childRow in this.childRowsForExport)
	                        {
	                            if (row == childRow)
	                            {
	                                isVisible = true;
	                            }
	                        }
	
	                        row.IsVisible = isVisible;
	                    }
	
	                    ExportToExcelML exporter = new ExportToExcelML(this.radGridView1);
	                    exporter.HiddenRowOption = HiddenOption.DoNotExport;
	                    exporter.RunExport(dialog.FileName);
	                    MessageBox.Show("Export Finished");
	                }
	
	                //show all rows
	                foreach (GridViewRowInfo row in this.radGridView1.Rows)
	                {
	                    row.IsVisible = true;
	                }
	            }
	
	            //release resources
	            RadMenuItem menuItem = (RadMenuItem)sender;
	            menuItem.Click -= contextMenuItem_Click;
	            this.childRowsForExport = null;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region markTheUnnesseceryRowsAndExportTheRestOfThem}}
	    Private Sub contextMenuItem_Click(ByVal sender As Object, ByVal e As EventArgs)
	        If Me.childRowsForExport IsNot Nothing AndAlso Me.childRowsForExport.Count > 0 Then
	            Dim dialog As New SaveFileDialog()
	            dialog.Filter = "Excel File (*.xls)|*.xls"
	
	            If dialog.ShowDialog() = DialogResult.OK Then
	                'hide rows, which should not be exported
	                For Each row As GridViewRowInfo In Me.RadGridView1.Rows
	                    Dim isVisible As Boolean = False
	                    For Each childRow As GridViewRowInfo In Me.childRowsForExport
	                        If row.Equals(childRow) Then
	                            isVisible = True
	                        End If
	                    Next
	
	                    row.IsVisible = isVisible
	                Next
	
	                Dim exporter As New ExportToExcelML(Me.RadGridView1)
	                exporter.HiddenRowOption = HiddenOption.DoNotExport
	                exporter.RunExport(dialog.FileName)
	                MessageBox.Show("Export Finished")
	            End If
	
	            'show all rows
	            For Each row As GridViewRowInfo In Me.RadGridView1.Rows
	                row.IsVisible = True
	            Next
	        End If
	
	        'release resources
	        Dim menuItem As RadMenuItem = DirectCast(sender, RadMenuItem)
	        RemoveHandler menuItem.Click, AddressOf contextMenuItem_Click
	        Me.childRowsForExport = Nothing
	    End Sub
	{{endregion}}



1. If you need to get the text from the GroupRowHeader, use the following snippet:

#### __[C#]__

{{region getTheGroupLineText}}
	        private string GetGroupLineHeaderText(GridGroupHeaderRowElement headerRowElement)
	        {
	            string headerText = headerRowElement.RowInfo.Group.GroupRow.HeaderText;
	            return headerText;
	        }
	{{endregion}}



#### __[VB.NET]__

{{region getTheGroupLineText}}
	    Private Function GetGroupLineHeaderText(ByVal headerRowElement As GridGroupHeaderRowElement) As String
	        Dim headerText As String = headerRowElement.RowInfo.Group.GroupRow.HeaderText
	        Return headerText
	    End Function
	{{endregion}}


