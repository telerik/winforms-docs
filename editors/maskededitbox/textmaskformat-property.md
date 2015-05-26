---
title: TextMaskFormat Property
page_title: TextMaskFormat Property | UI for WinForms Documentation
description: TextMaskFormat Property
slug: winforms/editors/maskededitbox/textmaskformat-property
tags: textmaskformat,property
published: True
position: 5
---

# TextMaskFormat Property



While working with RadMaskedEditBox you may come to a case where you want to get
        a Value that differs from what the end-user sees in the editor, or, in other words,
        from what the Text property provides. In such cases the you will find the
        __TextMaskFormat__ property useful. It allows you to get variations of
        of the Text property value taking into account whether you want to get the prompt characters,
        and the literals used in the mask. The type of the TextMaskFormat property is the
        MaskFormat enum which provides the following values:
      

* __IncludePromptAndLiterals__ (default value): The Value property returns Return the text input by the user as well as any literal characters
            defined in the mask and any instances of the prompt character.
          

* __ExcludePromptAndLiterals__: The Value property returns only
            the text input by the user.
          

* __IncludePrompt__: The Value property returns the text input by the user as well as any instances of the prompt character.
          

* __IncludeLiterals__: The Value property returns the text input by the user as well as any literal characters defined in the mask.
          

Let's now analyze how this property works in the context of several popular masks.
      

## Using Phone mask

1. First, we need to define our mask:
            #_[C#]_

	



{{source=..\SamplesCS\Editors\MaskEditBox1.cs region=phoneMask}} 
{{source=..\SamplesVB\Editors\MaskEditBox1.vb region=phoneMask}} 

````C#
            
            this.radMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Standard;
            this.radMaskedEditBox1.Mask = "(000) 000-0000";
            this.radMaskedEditBox1.PromptChar = '_';
````
````VB.NET
        Me.RadMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Standard
        Me.RadMaskedEditBox1.Mask = "(000) 000-0000"
        Me.RadMaskedEditBox1.PromptChar = "_"
        '
````

{{endregion}} 




1. Then, let's assume that the user types "123123123". As you can notice, the number of digits
              is smaller than the provided prompt places by one and this is for demonstration purposes.
              The result in the UI of RadMaskedEditBox will look like this:
            ![editors-maskededitbox-textmaskformat 001](images/editors-maskededitbox-textmaskformat001.png)

So, here we have:
        

* An instance of the prompt character '_'

* Literals: '(' , ')', '-' and ' ' (empty space)

* User input: "123123123"

And here is what the __Value__ property of RadMaskedEditBox will return depending on the __TextMaskFormat__ value:
        

* __IncludePromptAndLiterals__: (123) 123-123_
            

* __ExcludePromptAndLiterals__: 123123123
            

* __IncludePrompt__: 123123123_
            

* __IncludeLiterals__: (123) 123-123
            

## Using Currency mask

1. Define the Current mask as show below:
            #_[C#]_

	



{{source=..\SamplesCS\Editors\MaskEditBox1.cs region=currencyMask}} 
{{source=..\SamplesVB\Editors\MaskEditBox1.vb region=currencyMask}} 

````C#
            
            this.radMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Numeric;
            this.radMaskedEditBox1.Mask = "C2";
````
````VB.NET
        Me.RadMaskedEditBox1.MaskType = Telerik.WinControls.UI.MaskType.Numeric
        Me.RadMaskedEditBox1.Mask = "C2"
        '
````

{{endregion}} 




1. Now, assume that the user types "-1234.12". The UI of RadMaskedEditBox in this case
              look like this:
            ![editors-maskededitbox-textmaskformat 002](images/editors-maskededitbox-textmaskformat002.png)

So, here we have:
        

* Literals: '$' and ','

* '-' and '.' are not considered literals, because they are a part of the real decimal value.

* We do not have prompt characters in the Currency mask.

And here is what the __Value__ property of RadMaskedEditBox will return depending on the __TextMaskFormat__ value:
        

* __IncludePromptAndLiterals__: -$1,234.12
              

* __ExcludePromptAndLiterals__: -1234.12
              

* __IncludePrompt__: -1234.12
              

* __IncludeLiterals__: -$1,234.12
              
