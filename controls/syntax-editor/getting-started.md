---
title: Getting Started
page_title: Getting Started | RadSyntaxEditor
description:   
slug: syntax-editor-getting-started
tags: syntax-editor
published: True
position: 2
---

# Getting Started

This tutorial will walk you through the creation of a sample application that contains a **RadSyntaxEditor** control.

## Defining RadSyntaxEditor

To start using the control you only need to add a **RadSyntaxEditor** to the form either at design time by dragging it from the Toolbox and dropping it into the form or at run time via code.
  
#### Adding a RadSyntaxEditor at run time

````C#
RadSyntaxEditor radSyntaxEditor1 = new RadSyntaxEditor();

````
````VB.NET

````

#### Figure 1: Empty RadSyntaxEditor

![syntax-editor-getting-started 001](images/getting-started001.png) 

## Opening a File

To load a file in the **RadSyntaxEditor** you need to use its **Document** property.

````C#

public RadForm1()
        {
            InitializeComponent();

            using (StreamReader reader = new StreamReader("../../CS_File.txt"))
            {
               this.radSyntaxEditor1.Document = new TextDocument(reader);
            }
        }

````
````VB.NET


````

#### Figure 2: RadSyntaxEditor with a loaded C# file

![syntax-editor-getting-started 002](images/getting-started002.png) 

## Enable Syntax Highlighting

Once you have loaded the code, you need to register an appropriate tagger to enable syntax highlighting for the particular language.

````C#

CSharpTagger cSharptagger = new CSharpTagger(this.radSyntaxEditor1.SyntaxEditorElement);
this.radSyntaxEditor1.TaggersRegistry.RegisterTagger(cSharptagger);

````
````VB.NET


````

#### Figure 3: RadSyntaxEditor with C# code highlighting

![syntax-editor-getting-started 003](images/getting-started003.png) 

