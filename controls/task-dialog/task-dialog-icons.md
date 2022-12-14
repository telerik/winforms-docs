---
title: Dialog Icons
page_title: Dialog Icons - Task Dialog
description: RadTaskDialog is a themable alternative of the windows dialog boxes and the newly released TaskDialog for .NET 5.
slug: task-dialog-icons
tags: task dialog, icons
published: True
position: 4 
---

# Dialog Icons

**RadTaskDialog** shows a large icon in the header layout that signifies the purpose of the dialog. The RadTaskDialogPage.**Icon** property allows you to specify the **RadTaskDialogIcon** itself. 

#### Specifying the dialog icon

{{source=..\SamplesCS\TaskDialog\TaskDialogGettingStarted.cs region=DialogIcon}} 
{{source=..\SamplesVB\TaskDialog\TaskDialogGettingStarted.vb region=DialogIcon}}

````C#
             RadTaskDialogPage page = new RadTaskDialogPage();
            page.Caption = "Window Title";
            page.Heading = "Main instruction";
            page.Text = "Main text here...";
            page.Icon = RadTaskDialogIcon.Information;
            RadTaskDialog.Show(page);        

````
````VB.NET

         Dim page As RadTaskDialogPage = New RadTaskDialogPage()
        page.Caption = "Window Title"
        page.Heading = "Main instruction"
        page.Text = "Main text here..."
        page.Icon = RadTaskDialogIcon.Information
        RadTaskDialog.Show(page)    

````

{{endregion}}

You can find listed below the available built-in icons:

* RadTaskDialogIcon.**None** - no icon is displayed

![WinForms RadTaskDialog None](images/task-dialog-icons001.png) 

* RadTaskDialogIcon.**Information**  

![WinForms RadTaskDialog Information](images/task-dialog-icons002.png) 

* RadTaskDialogIcon.**Warning** 

![WinForms RadTaskDialog Warning](images/task-dialog-icons003.png)

* RadTaskDialogIcon.**Error** 

![WinForms RadTaskDialog Error](images/task-dialog-icons004.png)

* RadTaskDialogIcon.**Shield** 

![WinForms RadTaskDialog Shield](images/task-dialog-icons005.png)

* RadTaskDialogIcon.**ShieldBlueBar** 

![WinForms RadTaskDialog ShieldBlueBar](images/task-dialog-icons006.png)

* RadTaskDialogIcon.**ShieldGrayBar** 

![WinForms RadTaskDialog ShieldGrayBar](images/task-dialog-icons007.png)

* RadTaskDialogIcon.**ShieldWarningYellowBar** 

![WinForms RadTaskDialog ShieldWarningYellowBar](images/task-dialog-icons008.png)

* RadTaskDialogIcon.**ShieldErrorRedBar** 

![WinForms RadTaskDialog ShieldErrorRedBar](images/task-dialog-icons009.png)

* RadTaskDialogIcon.**ShieldSuccessGreenBar** 

![WinForms RadTaskDialog ShieldSuccessGreenBar](images/task-dialog-icons010.png)

>note The RadTaskDialogPage.Icon.**SvgImage** property allows you to specify the vector image to the task dialog. The RadTaskDialogIcon.**GetSvgImage(RadTaskDialogIconImage icon, Size? size = null)** method offers an easy way of creating a **SvgImage** passing the **RadTaskDialogIconImage** and size as arguments.

## Custom Icon

If none of the built-in icons fits your needs, it is possible to construct your own **RadTaskDialogIcon**:

![WinForms RadTaskDialog Custom Icon](images/task-dialog-icons011.png)

{{source=..\SamplesCS\TaskDialog\TaskDialogGettingStarted.cs region=CustomIcon}} 
{{source=..\SamplesVB\TaskDialog\TaskDialogGettingStarted.vb region=CustomIcon}}

````C#
             RadTaskDialogPage page = new RadTaskDialogPage();
            page.Caption = "Window Title";
            page.Heading = "Main instruction";
            page.Text = "Main text here...";
            page.Icon = new RadTaskDialogIcon(new Bitmap(Properties.Resources.TV_car,new Size(64,64)));
            RadTaskDialog.Show(page);      

````
````VB.NET
          Dim page As RadTaskDialogPage = New RadTaskDialogPage()
        page.Caption = "Window Title"
        page.Heading = "Main instruction"
        page.Text = "Main text here..."
        page.Icon = New RadTaskDialogIcon(New Bitmap(My.Resources.TV_car1, New Size(64, 64)))
        RadTaskDialog.Show(page)  

````

{{endregion}}

# See Also

* [Getting Started]({%slug task-dialog-getting-started%})
* [Structure]({%slug task-dialog-structure%})
* [Element Types]({%slug task-dialog-element-types%})
 
        
