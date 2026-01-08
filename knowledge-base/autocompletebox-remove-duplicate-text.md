---
title: Remove Non-Tokenized Text in RadAutoCompleteBox
description: Learn how to configure RadAutoCompleteBox in UI for WinForms to prevent non-tokenized text from appearing.
type: how-to
page_title: Preventing Non-Tokenized Text in RadAutoCompleteBox
meta_title: Preventing Non-Tokenized Text in RadAutoCompleteBox
slug: autocompletebox-remove-duplicate-text
tags: editors, autocompletebox, ui-for-winforms, validation, tokens, lostfocus-event
res_type: kb
ticketid: 1681257
---


## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.4.1111|RadAutoCompleteBox for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

The control allows you to disable suggesting already selected item in the drop-down list. However, the duplicate entries become text instead of tokens. In this article we will demonstrate how to don't let non-tokenized text remains after losing focus. 

## Solution

### Customizing RadAutoCompleteBox Behavior

To prevent non-tokenized text from appearing, override the `InsertTokenizedTextBlocks()` method inside the `AutoCompleteBoxViewElement` class. Replace the `RadAutoCompleteBox` control with a custom class, as shown below:

````C#

public class MyAutoCompleteBoxControl : RadAutoCompleteBox
{
    public override string ThemeClassName => typeof(RadAutoCompleteBox).FullName;

    protected override RadTextBoxControlElement CreateTextBoxElement()
    {
        return new MyAutoCompleteBoxElement();
    }
}

public class MyAutoCompleteBoxElement : RadAutoCompleteBoxElement
{
    protected override Type ThemeEffectiveType => typeof(RadAutoCompleteBoxElement);

    protected override TextBoxViewElement CreateViewElement()
    {
        return new MyAutoCompleteBoxViewElement();
    }
}

public class MyAutoCompleteBoxViewElement : AutoCompleteBoxViewElement
{
    protected override Type ThemeEffectiveType => typeof(AutoCompleteBoxViewElement);

    protected override int InsertTokenizedTextBlocks(int index, string text, bool performInvalidation)
    {
        StringBuilder stringBuilder = new StringBuilder();
        foreach (char c in text)
        {
            if (c == this.Delimiter)
            {
                if (stringBuilder.Length > 0)
                {
                    string text2 = stringBuilder.ToString();
                    if (!performInvalidation || OnTokenValidating(text2))
                    {
                        ITextBlock textBlock = CreateBlock(text2, TokenizedTextBlockElementType);
                        textBlock.Index = index;
                        Children.Insert(index, textBlock as RadElement);
                    }
                    index++;
                    stringBuilder = new StringBuilder();
                }
            }
            else
            {
                stringBuilder.Append(c);
            }
        }

        if (stringBuilder.Length > 0)
        {
            index = base.InsertTextBlocks(index, stringBuilder.ToString(), TextBoxWrapPanel.TextBlockElementType) + 1;
        }

        return index - 1;
    }
}

````


### Handling Focus Loss

To validate tokens when the control loses focus, subscribe to the `LostFocus` event and insert the delimiter symbol manually:

````C#

this.radAutoCompleteBox1.LostFocus += RadAutoCompleteBox1_LostFocus;

private void RadAutoCompleteBox1_LostFocus(object sender, EventArgs e)
{
    ITextBoxNavigator navigator = (this.radAutoCompleteBox1.TextBoxElement as MyAutoCompleteBoxElement).Navigator;
    TextPosition startPosition = navigator.SelectionStart ?? TextPosition.GetFirstPosition(this.radAutoCompleteBox1.TextBoxElement.ViewElement);
    TextPosition endPosition = navigator.SelectionEnd ?? startPosition;
    this.radAutoCompleteBox1.TextBoxElement.ViewElement.Insert(endPosition, ";");
}

````

