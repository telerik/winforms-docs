---
title: Customizing RadBindingNavigator 
page_title: Customizing RadBindingNavigator 
description: Customizing RadBindingNavigator 
slug: bindingnavigator-overview-customizing-radbindingnavigator
tags: customizing,radbindingnavigator,
published: True
position: 1
---

# Customizing RadBindingNavigator 



## 

Each of the control's elements can be accessed and customized. Once you access the desired elements,
          you can tweak its properties in order to modify it. In this tutorial, we will take a look at code snippet,
          demonstrating how to add a button in the __RadBindingNavigator__ :
        

#### __[C#] __

{{region custradBindingNavigator1}}
	
	            CommandBarButton newButton = new CommandBarButton();
	            newButton.Image = Properties.Resources.details_icon;
	            newButton.Click += new EventHandler(newButton_Click);
	
	            this.radBindingNavigator1.Rows[0].Strips[1].Items.Add(new CommandBarSeparator());
	            this.radBindingNavigator1.Rows[0].Strips[1].Items.Add(newButton);
	
	{{endregion}}



#### __[VB.NET] __

{{region custradBindingNavigator1}}
	
	            Dim newButton As New CommandBarButton()
	            newButton.Image = My.Resources.details_icon
	            AddHandler newButton.Click, AddressOf newButton_Click
	
	            Me.radBindingNavigator1.Rows(0).Strips(1).Items.Add(New CommandBarSeparator())
	            Me.radBindingNavigator1.Rows(0).Strips(1).Items.Add(newButton)
	            '#End Region
	
	        End Sub
	
	        Private Sub newButton_Click(sender As Object, e As EventArgs)
	
	        End Sub
	    End Class
	End Namespace

![bindingnavigator-overview-customizing-radbindingnavigator 001](images/bindingnavigator-overview-customizing-radbindingnavigator001.png)
