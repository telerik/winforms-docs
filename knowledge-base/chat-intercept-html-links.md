---
title: Intercepting HTML Link Click in RadChat Control
description: Learn how to intercept when HTML links is clicked in the RadChat control in UI for WinForms
type: how-to
page_title: Intercepting HTML Link Click in RadChat Control
meta_title: Intercepting HTML Link Click in RadChat Control
slug: chat-intercept-html-links
tags: chat, radchat, link interception, html links, click events
res_type: kb
ticketid: 1701502
---

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

At the moment of writing this Knowledge Base article, the RadChat control does not expose such an event that will be triggered when a hyperlink is clicked. We can use a custom code to catch the moment when the user clicks a link before it is actually opened in the browser.

## Solution

To intercept HTML links in RadChat, subclass the control and override its `OnMouseDown` method. Check if the clicked element is a hyperlink, then handle it accordingly.

### Steps to Implement
1. Create a custom class inheriting from `RadChat`.
2. Override the `OnMouseDown` method to detect clicked links.
3. Use `ElementTree.GetElementAtPoint` to identify the element under the mouse.
4. Implement a helper method to verify if the mouse is over a link.
5. Replace the default RadChat control with the customized one in your `Form.Designer.cs` file.

### Example Code
Below is the complete implementation:

````C#

public class MyRadChat : RadChat
{
    protected override void OnMouseDown(MouseEventArgs e)
    {
        var element = this.ElementTree.GetElementAtPoint(e.Location);
        if (element != null && element is ChatMessageBubbleElement chatMessageBubbleElement)
        {
            string[] numLines = chatMessageBubbleElement.Text.Split('\n');

            FormattedText formattedTextLink = IsMouseOverBlock(element, e, chatMessageBubbleElement.TextBlock.Lines);
            if (formattedTextLink != null)
            {
                var link = formattedTextLink.Link;
                return;
            }
            else
            {
                base.OnMouseDown(e);
            }
        }
        base.OnMouseDown(e);
    }

    FormattedText IsMouseOverBlock(object sender, MouseEventArgs e, List<TextLine> lines)
    {
        RadElement element = sender as RadElement;
        Debug.Assert(element != null, "Element is not RadElement");
        Point elementAtPoint = element.PointFromControl(e.Location);
        int linesCount = lines.Count();
        for (int i = 0; i < linesCount; ++i)
        {
            TextLine textLine = lines[i];
            int textLineCount = textLine.List.Count;
            for (int j = 0; j < textLineCount; ++j)
            {
                FormattedText formattedText = textLine.List[j];
                if (!string.IsNullOrEmpty(formattedText.Link) && formattedText.DrawingRectangle.Contains(elementAtPoint))
                {
                    return formattedText;//found link under mouse
                }
            }
        }

        return null;//notfound
    }
    public override string ThemeClassName
    {
        get
        {
            return typeof(RadChat).FullName;
        }
    }
}

````

With this subclass, you can intercept links and customize their behavior, such as downloading content or displaying it in a custom viewer.

## See Also

* [RadChat Overview](https://docs.telerik.com/devtools/winforms/controls/chat/overview)
* [HTML-like Text Formatting](https://docs.telerik.com/devtools/winforms/telerik-presentation-framework/html-like-text-formatting)

