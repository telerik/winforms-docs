---
title: Properties that can be localized
page_title: Properties that can be localized
description: Properties that can be localized
slug: calendar-localization-properties-that-can-be-localized
tags: properties,that,can,be,localized
published: True
position: 4
---

# Properties that can be localized



## 

The following properties can be localized:
<table><th><tr><td>

Property</td><td>

Description</td></tr></th><tr><td>

NavigationPrevText
              </td><td>

Gets or sets the text displayed for the previous month navigation control.
              </td></tr><tr><td>

NavigationNextText
              </td><td>

Gets or sets the text displayed for the next month navigation control.
              </td></tr><tr><td>

FastNavigationPrevText
              </td><td>

Gets or sets the text displayed for the fast previous navigation control.
              </td></tr><tr><td>

FastNavigationNextText
              </td><td>

Gets or sets the text displayed for the fast next navigation control.
              </td></tr><tr><td>

NavigationPrevToolTip
              </td><td>

Gets or sets the text displayed as a tooltip for the previous month navigation control.
              </td></tr><tr><td>

NavigationNextToolTip
              </td><td>

Gets or sets the text displayed as a tooltip for the next month navigation control.
              </td></tr><tr><td>

FastNavigationPrevToolTip
              </td><td>

Gets or sets the text displayed as a tooltip for the fast navigation previous month control.
              </td></tr><tr><td>

FastNavigationNextToolTip
              </td><td>

Gets or sets the text displayed as a tooltip for the fast navigation previous month control.
              </td></tr><tr><td>

RowHeaderText
              </td><td>

Provides custom text for the row header cells.
              </td></tr><tr><td>

ColumnHeaderText
              </td><td>

Provides custom text for the column header cells.
              </td></tr><tr><td>

ViewSelectorText
              </td><td>

The text displayed in the view selector cell.
              </td></tr></table>

__TodayButton__
<table><th><tr><td>

Property</td><td>

Description</td></tr></th><tr><td>

Text
              </td><td>

Gets or sets the text associated with Today button.
              </td></tr></table>

#### __[C#] Assigning the TodayButton Text__

{{source=..\SamplesCS\Calendar\Calendar1.cs region=localizingText}}
	            this.radCalendar1.TodayButton.Text = "Aujourd'hui";
	{{endregion}}



#### __[VB.NET] Assigning the TodayButton Text__

{{source=..\SamplesVB\Calendar\Calendar1.vb region=localizingText}}
	        Me.RadCalendar1.TodayButton.Text = "Aujourd'hui"
	{{endregion}}



__ClearButton__
<table><th><tr><td>

Property</td><td>

Description</td></tr></th><tr><td>

Text
              </td><td>

Gets or sets the text associated with Clear button.
              </td></tr></table>
