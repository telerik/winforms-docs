---
title: Keyboard Navigation
page_title: Keyboard Navigation
description: Keyboard Navigation
slug: propertygrid-keyboard-navigation
tags: keyboard,navigation
published: True
position: 6
---

# Keyboard Navigation



## 

__RadPropertyGrid__ allows navigation through its item by using keyboard. Two scenarios are supported by default:
        

* Pressing a character will select consequently each item starting with this character

* Typing more than one character will navigate to the first item matching the typed string
            

To enable this functionality a single property setting is needed:
        

#### __[C#] __

{{source=..\SamplesCS\PropertyGrid\PropertyGridKeyboardNavigation.cs region=KeyboardSearchEnabled}}
	            radPropertyGrid1.KeyboardSearchEnabled = true;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PropertyGrid\PropertyGridKeyboardNavigation.vb region=KeyboardSearchEnabled}}
	        radPropertyGrid1.KeyboardSearchEnabled = True
	        '#End Region
	
	        '#Region "KeyboardSearchResetInterval"
	        radPropertyGrid1.KeyboardSearchResetInterval = 200
	        '#End Region
	
	
	    End Sub
	
	    Private radPropertyGrid1 As RadPropertyGrid
	    Private radLabel1 As RadLabel
	    Private saveLastPressedKey As Keys
	    Private t As New Timer()
	    Private builder As New StringBuilder()
	
	    Private Sub Setup()
	        Me.radPropertyGrid1 = New RadPropertyGrid()
	        Me.radPropertyGrid1.Size = New Size(300, 400)
	        Me.radPropertyGrid1.Location = New Point(10, 10)
	        MyBase.Controls.Add(Me.radPropertyGrid1)
	
	        Me.radPropertyGrid1.SelectedObject = New RadPropertyGrid()
	        Me.radPropertyGrid1.ToolbarVisible = True
	        Me.radPropertyGrid1.SelectedObject = Me
	
	        RadLabel1 = New RadLabel()
	        Me.Controls.Add(RadLabel1)
	        Me.Controls.SetChildIndex(RadLabel1, 0)
	        RadLabel1.BackColor = Color.White
	        RadLabel1.Location = New Point(65, 14)
	        Me.RadLabel1.Font = New Font("Arial", 11, FontStyle.Bold)
	        RadLabel1.Text = "Pressed Key: "
	
	        t.Interval = 300
	        AddHandler t.Tick, AddressOf t_Tick
	
	        AddHandler radPropertyGrid1.KeyDown, AddressOf radPropertyGrid1_KeyDown
	    End Sub
	
	    Private Sub radPropertyGrid1_KeyDown(sender As Object, e As System.Windows.Forms.KeyEventArgs)
	        If t.Enabled Then
	            t.[Stop]()
	            t.Start()
	        Else
	            builder = New StringBuilder()
	            t.Start()
	        End If
	
	        builder.Append(e.KeyCode.ToString())
	        RadLabel1.Text = "Pressed Key: " + builder.ToString()
	        If saveLastPressedKey = e.KeyCode Then
	            RadLabel1.Text += " (again)"
	        End If
	        saveLastPressedKey = e.KeyCode
	
	    End Sub
	
	    Private Sub t_Tick(sender As Object, e As System.EventArgs)
	        t.[Stop]()
	    End Sub
	End Class



Another property of interest is the __KeyboardSearchResetInterval__. It is used to determine what time between keystrokes will be considered as typing.
          Consequent keystrokes with performed faster than the specified interval will be considered typing and once the time elapses, the matching item
          (if such) will be selected. Here is how to access this property to change the value of the timer:
        

#### __[C#] __

{{source=..\SamplesCS\PropertyGrid\PropertyGridKeyboardNavigation.cs region=KeyboardSearchResetInterval}}
	            radPropertyGrid1.KeyboardSearchResetInterval = 200;
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\PropertyGrid\PropertyGridKeyboardNavigation.vb region=KeyboardSearchResetInterval}}
	        radPropertyGrid1.KeyboardSearchResetInterval = 200
	        '#End Region
	
	
	    End Sub
	
	    Private radPropertyGrid1 As RadPropertyGrid
	    Private radLabel1 As RadLabel
	    Private saveLastPressedKey As Keys
	    Private t As New Timer()
	    Private builder As New StringBuilder()
	
	    Private Sub Setup()
	        Me.radPropertyGrid1 = New RadPropertyGrid()
	        Me.radPropertyGrid1.Size = New Size(300, 400)
	        Me.radPropertyGrid1.Location = New Point(10, 10)
	        MyBase.Controls.Add(Me.radPropertyGrid1)
	
	        Me.radPropertyGrid1.SelectedObject = New RadPropertyGrid()
	        Me.radPropertyGrid1.ToolbarVisible = True
	        Me.radPropertyGrid1.SelectedObject = Me
	
	        RadLabel1 = New RadLabel()
	        Me.Controls.Add(RadLabel1)
	        Me.Controls.SetChildIndex(RadLabel1, 0)
	        RadLabel1.BackColor = Color.White
	        RadLabel1.Location = New Point(65, 14)
	        Me.RadLabel1.Font = New Font("Arial", 11, FontStyle.Bold)
	        RadLabel1.Text = "Pressed Key: "
	
	        t.Interval = 300
	        AddHandler t.Tick, AddressOf t_Tick
	
	        AddHandler radPropertyGrid1.KeyDown, AddressOf radPropertyGrid1_KeyDown
	    End Sub
	
	    Private Sub radPropertyGrid1_KeyDown(sender As Object, e As System.Windows.Forms.KeyEventArgs)
	        If t.Enabled Then
	            t.[Stop]()
	            t.Start()
	        Else
	            builder = New StringBuilder()
	            t.Start()
	        End If
	
	        builder.Append(e.KeyCode.ToString())
	        RadLabel1.Text = "Pressed Key: " + builder.ToString()
	        If saveLastPressedKey = e.KeyCode Then
	            RadLabel1.Text += " (again)"
	        End If
	        saveLastPressedKey = e.KeyCode
	
	    End Sub
	
	    Private Sub t_Tick(sender As Object, e As System.EventArgs)
	        t.[Stop]()
	    End Sub
	End Class


