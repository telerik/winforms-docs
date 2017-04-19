---
title: Hyperlink
page_title: Hyperlink | UI for WinForms Documentation
description: Hyperlink
slug: winforms/richtextbox-(obsolete)/features/document-elements/hyperlink
tags: hyperlink
published: True
position: 5
previous_url: richtextbox-features-document-elements-hyperlink
---

# Hyperlink

The classes that encapsulate the functionality of hyperlinks are [HyperlinkInfo](#hyperlinkinfo), [HyperlinkRangeStart and HyperlinkRangeEnd](#hyperlinkrangestart-and-hyperlinkrangeend).

[Other customization options](#othercustomizationoptions) include setting the tool tip format of hyperlinks.

## HyperlinkInfo

More often than not, you would only need to use objects of type HyperlinkInfo. HyperlinkInfo objects have the following properties:

* IsAnchor - a boolean property determining if the hyperlink points to a URL or a bookmark;

* NavigateUri - the URI of the hyperlink;

* Target - determines if the link should be opened in another window (if set to HyperlinkTargets.Blank) or in the same frame (HyperlinkTargets.Self).

For example, a link to our Progress&reg; Telerik&reg; UI for WinForms demo page can be inserted in the document programmatically as follows:

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.cs region=AddLinkToSite}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.vb region=AddLinkToSite}}
````C#
HyperlinkInfo info = new HyperlinkInfo()
{
    NavigateUri = "http://www.telerik.com/support/demos/developer-tools-demos.aspx#WinForms",
    Target = HyperlinkTargets.Blank,
    IsAnchor = false
};
this.radRichTextBox1.InsertHyperlink(info, "RadControls for WinForms demos");

````
````VB.NET
Dim info As New HyperlinkInfo() With { _
 .NavigateUri = "http://www.telerik.com/support/demos/developer-tools-demos.aspx#WinForms", _
 .Target = HyperlinkTargets.Blank, _
 .IsAnchor = False _
}
Me.RadRichTextBox1.InsertHyperlink(info, "RadControls for WinForms demos")

```` 



{{endregion}}

A link to a bookmark is inserted by specifying the bookmark's name as NavigateUri and setting the IsAnchor to true:

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.cs region=AddLinkToBookmark}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.vb region=AddLinkToBookmark}}
````C#
HyperlinkInfo hlInfo = new HyperlinkInfo()
{
    NavigateUri = "bookmark1",
    Target = HyperlinkTargets.Self,
    IsAnchor = true
};
this.radRichTextBox1.InsertHyperlink(hlInfo, "Link to Bookmark 1");

````
````VB.NET
Dim hlInfo As New HyperlinkInfo() With { _
 .NavigateUri = "bookmark1", _
 .Target = HyperlinkTargets.Self, _
 .IsAnchor = True _
}
Me.RadRichTextBox1.InsertHyperlink(hlInfo, "Link to Bookmark 1")

```` 



{{endregion}}

You can also use the overloaded methods for inserting a hyperlink:

* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo, string hyperlinkText, StyleDefinition hyperlinkStyle) - insert a hyperlink using a custom style, different from the default blue font color and single underline;  

* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo, IEnumerable<Inline> inlines) - insert a hyperlink which spans several different adjacent inlines, e.g. part of the hyperlink text is Bold or there is an image inside the hyperlink;

* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo) - create a hyperlink from the currently selected part of the document;

* public void __InsertHyperlink__(HyperlinkInfo hyperlinkInfo, StyleDefinition hyperlinkStyle) - create a hyperlink from the currently selected part of the document and change the style of the text to the style passed as second argument.

Removing a hyperlink (and keeping the part of the document that the hyperlink spanned) can be done by positioning the caret in the hyperlink and invoking

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.cs region=RemoveHyperlink}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.vb region=RemoveHyperlink}} 

````C#
this.radRichTextBox1.RemoveHyperlink();

````
````VB.NET
Me.RadRichTextBox1.RemoveHyperlink()

````

{{endregion}}

## HyperlinkRangeStart and HyperlinkRangeEnd

HyperlinkRangeStart and HyperlinkRangeEnd are Inline DocumentElements and can be added to the inlines of a document.

Here is an example that creates a document with a hyperlink spanning several paragraphs, including an image in one of the paragraphs:

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.cs region=HyperlinkRegionStartEnd}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.vb region=HyperlinkRegionStartEnd}} 

````C#
HyperlinkRangeStart hyperlinkStart = new HyperlinkRangeStart();
HyperlinkRangeEnd hyperlinkEnd = new HyperlinkRangeEnd();
hyperlinkEnd.PairWithStart(hyperlinkStart);
HyperlinkInfo hyperlinkInfo = new HyperlinkInfo() { NavigateUri = "http://www.telerik.com", Target = HyperlinkTargets.Blank };
hyperlinkStart.HyperlinkInfo = hyperlinkInfo;
RadDocument document = new RadDocument();
Section section = new Section();
Paragraph paragraph = new Paragraph();
Span spanBefore = new Span("Text before the image ");
ImageInline image = new ImageInline(Resources.Desert);
image.Size = new Size(32, 32);
Span spanAfter = new Span(" and some text after the image");
paragraph.Inlines.Add(hyperlinkStart);
paragraph.Inlines.Add(spanBefore);
paragraph.Inlines.Add(image);
paragraph.Inlines.Add(spanAfter);
section.Blocks.Add(paragraph);
Paragraph anotherParagraph = new Paragraph();
anotherParagraph.Inlines.Add(new Span("Another paragraph here and still in hyperlink"));
anotherParagraph.Inlines.Add(hyperlinkEnd);
section.Blocks.Add(anotherParagraph);
document.Sections.Add(section);
this.radRichTextBox1.Document = document;

````
````VB.NET
Dim hyperlinkStart As New HyperlinkRangeStart()
Dim hyperlinkEnd As New HyperlinkRangeEnd()
hyperlinkEnd.PairWithStart(hyperlinkStart)
Dim hyperlinkInfo As New HyperlinkInfo() With { _
 .NavigateUri = "http://www.telerik.com", _
 .Target = HyperlinkTargets.Blank _
}
hyperlinkStart.HyperlinkInfo = hyperlinkInfo
Dim document As New RadDocument()
Dim section As New Section()
Dim paragraph As New Paragraph()
Dim spanBefore As New Span("Text before the image ")
Dim img As New ImageInline(My.Resources.Desert)
img.Size = New Drawing.Size(32, 32)
Dim spanAfter As New Span(" and some text after the image")
paragraph.Inlines.Add(hyperlinkStart)
paragraph.Inlines.Add(spanBefore)
paragraph.Inlines.Add(img)
paragraph.Inlines.Add(spanAfter)
section.Blocks.Add(paragraph)
Dim anotherParagraph As New Paragraph()
anotherParagraph.Inlines.Add(New Span("Another paragraph here and still in hyperlink"))
anotherParagraph.Inlines.Add(hyperlinkEnd)
section.Blocks.Add(anotherParagraph)
document.Sections.Add(section)
Me.RadRichTextBox1.Document = document

````

{{endregion}}

The result:<br>![richtextbox-features-document-elements-hyperlink 001](images/richtextbox-features-document-elements-hyperlink001.png)

You will also need to use HyperlinkRangeStart and HyperlinkRangeEnd, if you are using hyperlinks for the implementation of a custom logic and want to get all hyperlinks from the document, manipulate the properties of the HyperlinkInfo or the whole part of the document that is included in the hyperlink.

For instance, here is how you can delete all hyperlinks in the document and replace them with some text:

{{source=..\SamplesCS\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.cs region=RemoveHyperlinksAndReplaceThemWithText}} 
{{source=..\SamplesVB\RichTextBox\Features\Document Elements\RichTextBoxHyperlink.vb region=RemoveHyperlinksAndReplaceThemWithText}} 

````C#
IEnumerable<HyperlinkRangeStart> links = this.radRichTextBox1.Document.EnumerateChildrenOfType<HyperlinkRangeStart>();
foreach (HyperlinkRangeStart link in links)
{
    this.radRichTextBox1.Document.CaretPosition.MoveToInline(link.FirstLayoutBox as InlineLayoutBox, 0);
    this.radRichTextBox1.Document.Selection.SelectAnnotationRange(link);
    this.radRichTextBox1.Delete(false);
    this.radRichTextBox1.Insert("Removed hyperlink");
}

````
````VB.NET
Dim links As IEnumerable(Of HyperlinkRangeStart) = Me.RadRichTextBox1.Document.EnumerateChildrenOfType(Of HyperlinkRangeStart)()
For Each link As HyperlinkRangeStart In links
    Me.RadRichTextBox1.Document.CaretPosition.MoveToInline(TryCast(link.FirstLayoutBox, InlineLayoutBox), 0)
    Me.RadRichTextBox1.Document.Selection.SelectAnnotationRange(link)
    Me.RadRichTextBox1.Delete(False)
    Me.RadRichTextBox1.Insert("Removed hyperlink")
Next

````

{{endregion}}

## OtherCustomizationOptions

__ToolTip__

By default hyperlinks take a fixed string as a tool tip. The default format is:

>note {0}
>{1} to follow link
>

You have control over it using the __HyperlinkToolTipFormatString__ of RadRichTextBox, which will set the format for all hyperlinks in the document.

__HyperlinkClicked__

When you click on a hyperlink, the __HyperlinkClicked__ event of __RadRichTextBox__ is fired. The sender of the event is the document element, which you have clicked, e.g. a Span, an Image, InlineUIContainer, etc. The event args on the other hand, provide the possibility to mark the event as handled and prevent the default action. Custom logic can also be implemented depending on the __HyperlinkTarget__ and __URL__, which are also visible as properties of the event args.<br>![richtextbox-features-document-elements-hyperlink 002](images/richtextbox-features-document-elements-hyperlink002.png)
