---
title: UI Automation Support (UI Accessibility)
page_title: UI Automation Support (UI Accessibility)
description: UI Automation Support (UI Accessibility)
slug: winforms/telerik-presentation-framework/ui-automation
tags: ui,automation,support, accessibility
published: True
position: 7
---

# UI Automation Support

Implementing UI Automation for custom WinForms controls requires a distinct approach compared to WPF. Unlike the WPF AutomationPeer model, WinForms relies on provider interfaces. Our custom control leverages this mechanism to ensure compatibility with automation tools. __Telerik UI for WinForms__ controls uses this method to make it accessible to automation tools.

>For detailed information on the UI Automation Provider check the [Server-Side UI Automation Provider Implementation](https://learn.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2008/ms748277%28v=vs.90%29?redirectedfrom=MSDN) section on MSDN.

## Supported controls

Here is a list of the controls which support __UI Automation__. 

* [RadNavigationView]({%slug navigationview-ui-automation%})

## UI Accessibility

Each control inside Telerik UI for WinForms suite is tested with the [Accessibility Insights for Windows](https://accessibilityinsights.io/docs/en/windows/overview/) tool. This application executes tests, which check whether the controls have the right UI Automation properties. We've tested all of the controls from the our suite to ensure that there aren't any failed tests.




