---
title: XAML Verification
page_title: XAML Verification - WinForms RichTextEditor Control
description: This article shows how the default XAML verification works. 
slug: richtexteditor-xaml-verification
tags: rictext, xaml, verification
published: True
position: 1
---

# XAML Verification

Since R2 2023 SP1 the __XamlFormatProvider__ automatically verifies the types used in the imported XAML. It makes sure that all used types are from for the trusted assemblies. This mechanism prevents any unknown types loading and is enabled by default. 

## Disable the default verification

If you are sure that the imported XAML can be trusted for example it comes internally form your organization you can disable the default verification. This can be achieved by using the __PreProcessingXaml__ event.

####  Disable the default XAML validation

{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=SkipVerification}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=SkipVerification}}

````C#

XamlFormatProvider provider = new XamlFormatProvider();
provider.ImportSettings.PreProcessingXaml += (s, args) => {

    args.SkipXamlValidation = true;
};

````
````VB.NET

Dim provider As XamlFormatProvider = New XamlFormatProvider()
AddHandler provider.ImportSettings.PreProcessingXaml, Function(s, args)
                                                          args.SkipXamlValidation = True
                                                      End Function

````

{{endregion}}

## Add custom assembly to the allowed assemblies.  
 
If you have a custom types that are saved in your XAML you can include them in the allowed assemblies collection. This way the verification process will succeed. 

#### Add assemblies to the AllowedAssemblies collection

````C#

XamlFormatProvider provider = new XamlFormatProvider();
provider.ImportSettings.AllowedAssemblies.Add("MyAssemblyName");
provider.ImportSettings.AllowedAssemblies.Add("PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35");
provider.ImportSettings.AllowedAssemblies.Add("PresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35");

````
````VB.NET

Dim provider As XamlFormatProvider = New XamlFormatProvider()
provider.ImportSettings.AllowedAssemblies.Add("MyAssemblyName")
provider.ImportSettings.AllowedAssemblies.Add("PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35")
provider.ImportSettings.AllowedAssemblies.Add("PresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35")

````

The custom assemblies verification can be extended by checking also the public token of the assembly. To enable this, you can add the token in the `AssembliesTokens` dictionary of the `XamlFormatProvider.ImportSettings`.

````C#

XamlFormatProvider provider = new XamlFormatProvider();
provider.ImportSettings.AllowedAssemblies.Add("PresentationFramework");
provider.ImportSettings.AssembliesTokens["PresentationFramework"] = "31bf3856ad364e35";

````
````VB.NET

Dim provider As XamlFormatProvider = New XamlFormatProvider()
provider.ImportSettings.AllowedAssemblies.Add("PresentationFramework")
provider.ImportSettings.AssembliesTokens("PresentationFramework") = "31bf3856ad364e35"

````

## Adding Custom Types to the Allowed Types

To add custom types to the collection with allowed types, use the `AllowedTypes` property of the `XamlFormatProvider.ImportSettings`.


````C#

XamlFormatProvider provider = new XamlFormatProvider();
provider.ImportSettings.AllowedTypes.Add(typeof(System.Windows.Controls.Label));
provider.ImportSettings.AllowedTypes.Add(typeof(ScaleTransform));
provider.ImportSettings.AllowedTypes.Add(typeof(NullExtension));

````
````VB.NET

Dim provider As XamlFormatProvider = New XamlFormatProvider()
provider.ImportSettings.AllowedTypes.Add(GetType(System.Windows.Controls.Label))
provider.ImportSettings.AllowedTypes.Add(GetType(ScaleTransform))
provider.ImportSettings.AllowedTypes.Add(GetType(NullExtension))


````


## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Using XamlFormatProvider]({%slug winforms/richtexteditor/import-export/xaml/xamlformatprovider%})
