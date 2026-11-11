---
title: Open a WebPage in Response to a Click
page_title: Open a WebPage in Response to a Click - UI for WinForms Documentation
description: Open a WebPage in Response to a Click
slug: winforms/chart/advanced-topics/open-a-webpage-in-response-to-a-click
tags: open,a,webpage,in,response,to,a,click
published: True
position: 1
previous_url: chart-advanced-topics-open-a-webpage-in-response-to-a-click
---

# Open a WebPage in Response to a Click



## Validating the Destination

To open a web page in response to a click of an item, use the [ActiveRegion]({%slug winforms/chart/advanced-topics/activeregions-and-showing-tooltips%}) `Url` property and the `RadChart.Click` event, whose `ChartClickEventArgs` contains the clicked item. Validate the destination before passing it to the operating system.

`ActiveRegion.GoToUrl()` is obsolete and now launches only when both `HyperlinkHelper.ValidateLinkPattern` and `HyperlinkHelper.ValidateLinkScheme` pass. It does not expose a trust override or raise `HyperlinkHelper.HyperlinkClicked`. Replace calls to it with application-managed navigation, applying the default checks and any additional destination restrictions your application requires.

>important Calls to `ActiveRegion.GoToUrl()` no longer automatically launch FTP URLs, UNC/file paths, OneNote links, or custom protocols. If an application requires a nondefault destination, validate and handle it in application code; the shared event cannot override this RadChart path.

__Opening a Validated Chart Link__

{{source=..\SamplesCS\Chart\OpenAWebPageInResponceToAClick.cs region=openAWebPage}} 
{{source=..\SamplesVB\Chart\OpenAWebPageInResponceToAClick.vb region=openAWebPage}}

````C#
void radChart1_Click(object sender, Telerik.Charting.ChartClickEventArgs args)
{
    if (args.SeriesItem != null && args.SeriesItem.Index == 2)
    {
        string url = args.SeriesItem.ActiveRegion.Url;
        if (!string.IsNullOrEmpty(url) &&
            Telerik.WinControls.HyperlinkHelper.ValidateLinkPattern(url) &&
            Telerik.WinControls.HyperlinkHelper.ValidateLinkScheme(url))
        {
            System.Diagnostics.Process.Start(new System.Diagnostics.ProcessStartInfo(url)
            {
                UseShellExecute = true
            });
        }
    }
}

````
````VB.NET
Private Sub radChart1_Click(ByVal sender As Object, ByVal args As Telerik.Charting.ChartClickEventArgs)
    If args.SeriesItem IsNot Nothing AndAlso args.SeriesItem.Index = 2 Then
        Dim url As String = args.SeriesItem.ActiveRegion.Url
        If Not String.IsNullOrEmpty(url) AndAlso
            Telerik.WinControls.HyperlinkHelper.ValidateLinkPattern(url) AndAlso
            Telerik.WinControls.HyperlinkHelper.ValidateLinkScheme(url) Then
            System.Diagnostics.Process.Start(New System.Diagnostics.ProcessStartInfo(url) With {
                .UseShellExecute = True
            })
        End If
    End If
End Sub

````

Subscribe this handler to `radChart1.Click` after initializing the control. The default checks permit only absolute `http`, `https`, and `mailto` URIs that also match the accepted link patterns. They do not prove that the destination's content is safe; apply an application-specific host or destination allowlist when needed.

## See Also

* [Shared Hyperlink Validation]({%slug winforms/telerik-presentation-framework/html-like-text-formatting%}#shared-hyperlink-validation)