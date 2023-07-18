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

### Disable the default verification

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

{{endregion}}}

### Add custom assembly to the allowed assemblies.  
 
If you have a custom types that are saved in your XAML you can include them in the allowed assemblies collection. This way the verification process will succeed. 

#### Add assemblies to the AllowedAssemblies collection

{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=AllowedAssemblies}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=AllowedAssemblies}}

````C#

XamlFormatProvider provider = new XamlFormatProvider();
provider.ImportSettings.AllowedAssemblies.Add("MyAssemblyName");

````
````VB.NET

Dim provider As XamlFormatProvider = New XamlFormatProvider()
provider.ImportSettings.AllowedAssemblies.Add("MyAssemblyName")

````

{{endregion}}}

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Using XamlFormatProvider]({%slug winforms/richtexteditor/import-export/xaml/xamlformatprovider%})
