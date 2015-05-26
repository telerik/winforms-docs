---
title: RibbonBar UI
page_title: RibbonBar UI | UI for WinForms Documentation
description: RibbonBar UI
slug: winforms/richtextbox-(obsolete)/features/ribbonbar-ui
tags: ribbonbar,ui
published: True
position: 9
---

# RibbonBar UI



RadRichTextBox control comes with a predefined number of shortcuts which
        trigger commands that allow you to manipulate the selected text the way you want.
        However, in many cases it is more convenient for the user to click buttons which execute
        these commands instead of pressing a shortcut key. The purpose of this article is to
        demonstrate how you can build user interface appropriate for the purposes of RadRichTextBox
        with the help of RadRibbonBar for WinForms.
      

What is more, at the end of the article you will find a link to a project which implements
        a RadRibbonBar built according to the RadRichTextBox capabilities. You will also find a description
        of how you can bind this RadRibbonBar to an existing RadRichTextBox.
      

## Building RadRibbonBar UI

Building the user interface of the RadRichTextBox-enabled is pretty simple. You can use
          the
          [design-time capabilities]({%slug winforms/ribbonbar/getting-started/getting-started%})
          of RadRibbonBar to insert and arrange elements in it. The other option is to
          [insert elements through code]({%slug winforms/ribbonbar/programming-radribbonbar/adding-and-removing-tabs-and-ribbonbar-groups%}).
          The following code snippet demonstrates how to insert
          a 'Home' tab, a 'Font' group and a button which toggles the bold mode of the text:
        #_[C#]_

	



{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxRibbonUI.cs region=ribbonui}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxRibbonUI.vb region=ribbonui}} 

````C#
        public RichTextBoxRibbonUI()
        {
            InitializeComponent();

            RibbonTab tabHome = new RibbonTab();
            tabHome.Text = "Home";
            this.radRibbonBar1.CommandTabs.Add(tabHome);

            RadRibbonBarGroup grpFont = new RadRibbonBarGroup();
            grpFont.Text = "Font";
            tabHome.Items.Add(grpFont);

            RadToggleButtonElement btnBold = new RadToggleButtonElement();
            btnBold.Text = "Bold";
            grpFont.Items.Add(btnBold);

            btnBold.ToggleStateChanged += new StateChangedEventHandler(btnBold_ToggleStateChanged);
        }

        void btnBold_ToggleStateChanged(object sender, StateChangedEventArgs args)
        {
            this.radRichTextBox1.ToggleBold();
            this.radRichTextBox1.Focus();
        }
````
````VB.NET
    Public Sub New()
        InitializeComponent()

        Dim tabHome As New RibbonTab()
        tabHome.Text = "Home"
        Me.radRibbonBar1.CommandTabs.Add(tabHome)

        Dim grpFont As New RadRibbonBarGroup()
        grpFont.Text = "Font"
        tabHome.Items.Add(grpFont)

        Dim btnBold As New RadToggleButtonElement()
        btnBold.Text = "Bold"
        grpFont.Items.Add(btnBold)

        AddHandler btnBold.ToggleStateChanged, AddressOf btnBold_ToggleStateChanged
    End Sub

    Private Sub btnBold_ToggleStateChanged(ByVal sender As Object, ByVal args As StateChangedEventArgs)
        Me.radRichTextBox1.ToggleBold()
        Me.radRichTextBox1.Focus()
    End Sub
    '
````

{{endregion}} 




Of course, RadRichTextBox and RadRibbonBar UI should always be in sync, so you should handle the
          CurrentEditingStyleChanged event as it is described for CurrentParagraphStyleChanged event in the
          following documentation article:
          [Working with RadRichTextBox]({%slug winforms/richtextbox-(obsolete)/features/working-with-richtextbox%}).
        

## Using the RadRichTextBox-enabled RadRibbonBar

You can download the customized RadRibbonBar component from the following links (C#/VB.NET):
          [TelerikWinFormsEditor in C#](http://www.telerik.com/download/winforms/TelerikWinFormsEditorCS.zip)
          ,
          [TelerikWinFormsEditor in VB](http://www.telerik.com/download/winforms/TelerikWinFormsEditorVB.zip)

After you download the project, please follow the steps below:
        

1. Add the project to your solution.

1. Add a project reference from the downloaded project to the project in which
              you plan  to use the customized RadRibbonBar.
            

1. Set the target framework of the project in which you are going to use
              the customized RadRibbonBar instance to .NET Framework 4.0 or .NET 4.0 Client Profile.
            

1. Add the following Telerik references to the main project:
            

* Telerik.WinControls.dll

* Telerik.WinControls.RichTextBox.dll

* Telerik.WinControls.SpellChecker.dll

* Telerik.WinControls.UI.dll

* TelerikCommon.dllIf there is a RichTextBox on one of the forms in the main project, these references should already exist.
            

1. Build the downloaded project. The customized RadRibbonBar component should appear in your Toolbox.

1. Drag it from your Toolbox to your Form.

1. Set the __AssociatedRichTextBox__ property to the RadRichTextBox instance that will be controlled by the RadRibbonBar user interface.
            

1. Run your solution.

1. The commands that you trigger by using the RadRibbonBar interface will be applied to the
              text of the associated RadRichTextBox instance.
            

1. The following properties will allow you to control the visibility of the tabs of the customized
              RadRibbonBar implementation:
            

>note In case you are using RadRibbonForm, you can substitute  the Telerik.WinControls.UI.RadRibbonBar type with TelerikEditor.RichRibbonBar type
            in the Designer code file of the RadRibbonForm.
>


Feel free to add more properties that will be suitable for your scenario.
        
