---
title: Creating a theme component
page_title: Creating a theme component
description: This article demonstrates how to isolate a theme in a separate class library project.
slug: winforms/themes/advanced-topics/adding-custom-redistributable-themes-to-your-application-/creating-a-theme-component
tags: creating,a,theme,component
published: True
position: 0
previous_url: themes-advanced-topics-adding-custom-creating-theme-component
---

# Creating a theme component


This article demonstrates how to isolate a theme in a separate class library project. This class library project is actually the theme component, which you can later use in your main project. This approach greatly simplifies the way of adding and removing themes to your project and helps in displaying the themes in design-time.


1. Add a new Class Library project to your current solution.

1. Add your theme files and their Build Action to Embedded Resource.

1. Add a new class to represent your theme component to the project:

#### Creating custom theme component

{{source=..\SamplesCS\Themes\AdvancedTopics\AddingCustomRedistributableThemesToYourApplication\CustomTheme.cs region=creatingThemeComponent}} 
{{source=..\SamplesVB\Themes\AdvancedTopics\AddingCustomRedistributableThemesToYourApplication\CustomTheme.vb region=creatingThemeComponent}} 

````C#
public class CustomTheme : RadThemeComponentBase
{
    static bool loaded;
    public CustomTheme()
    {
        ThemeRepository.RegisterTheme(this);
    }
    public override void Load()
    {
        if (!loaded || this.IsDesignMode)
        {
            loaded = true;
            Assembly resourceAssembly = typeof(CustomTheme).Assembly;
            this.LoadResource(resourceAssembly, "ProjectDefaultNamespace.ContainingFolderName.CustomTheme.tssp");
        }
    }
    public override string ThemeName
    {
        get { return "CustomTheme"; }
    }
}

````
````VB.NET
Public Class CustomTheme
    Inherits RadThemeComponentBase
    Shared loaded As Boolean
    Public Sub New()
        ThemeRepository.RegisterTheme(Me)
    End Sub
    Public Overrides Sub Load()
        If Not loaded OrElse Me.IsDesignMode Then
            loaded = True
            Dim resourceAssembly As Assembly = GetType(CustomTheme).Assembly
            Me.LoadResource(resourceAssembly, "ProjectDefaultNamespace.ContainingFolderName.CustomTheme.tssp")
        End If
    End Sub
    Public Overrides ReadOnly Property ThemeName() As String
        Get
            Return "CustomTheme"
        End Get
    End Property
End Class

````

{{endregion}} 

Please note that your class should inherit __RadThemeComponentBase__. As to the path string, it is constructed as follows: *"ProjectDefaultNamespace.ContainingFolderName.CustomTheme.tssp"* . The ContainingFolderName is only needed if the tssp file is in folder in the project structure (C# only). Regarding VB.NET, even if the theme file is in a folder, you should not include the folder name in the path string.

When you compile the project, you will be able to drag this component to the forms in all the projects in you solution which will load the corresponding theme, both runtime and design time.
        

# See Also
* [Adding a custom theme as a file]({%slug winforms/themes/advanced-topics/adding-custom-redistributable-themes-to-your-application-/adding-a-custom-theme-as-a-file%})

* [Adding a custom theme as a resource]({%slug winforms/themes/advanced-topics/adding-custom-redistributable-themes-to-your-application-/adding-a-custom-theme-as-a-resource%})

