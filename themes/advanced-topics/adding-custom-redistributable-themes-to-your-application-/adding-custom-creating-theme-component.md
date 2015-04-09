---
title: Creating a theme component
page_title: Creating a theme component
description: Creating a theme component
slug: themes-advanced-topics-adding-custom-creating-theme-component
tags: creating,a,theme,component
published: True
position: 0
---

# Creating a theme component



## Creating a theme component:

This article demonstrates how to isolate a theme in a separate class library project. This class library project is actually the theme component,
          which you can later use in your main project.
          This approach greatly simplifies the way of adding and removing themes to your project and helps in displaying the themes in design-time.
        

1. Add a new Class Library project to your current solution.
            

1. Add your theme files and their Build Action to Embedded Resource.
            

1. Add a new class to represent your theme component to the project:
            

#### __[C#] Creating custom theme component__

{{source=..\SamplesCS\Themes\AdvancedTopics\AddingCustomRedistributableThemesToYourApplication\CustomTheme.cs region=creatingThemeComponent}}
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
	{{endregion}}



#### __[VB.NET] Creating custom theme component__

{{source=..\SamplesVB\Themes\AdvancedTopics\AddingCustomRedistributableThemesToYourApplication\CustomTheme.vb region=creatingThemeComponent}}
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
	{{endregion}}



Please note that your class should inherit RadThemeComponentBase. As to the path string, it is constructed as follows:
          *"ProjectDefaultNamespace.ContainingFolderName.CustomTheme.tssp"* . The ContainingFolderName is only
          needed if the tssp file is in folder in the project structure (C# only). Regarding VB.NET, even if the theme file is in a folder,
          you should not include the folder name in the path string.
        

When you compile the project, you will be able to drag this component to the forms
          in all the projects in you solution which will load the corresponding theme, both runtime and design time.
        
