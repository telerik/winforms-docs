---
title: Customizing the Key Tips
page_title: Customizing the Key Tips - RadRibbonBar
description: Quick Access Toolbar is an area of RadRibbonBar above the tabs.
slug: winforms/ribbonbar/programming-radribbonbar/customizing-the-keytips
tags: customizing,the,key, tips
published: True
position: 6
---

# Customizing the Key Tips

The key tips displayed by **RadRibbonBar** can be customized so that they are shown at special locations with modified styles.

>caption Figure 1: Custom Key Tips
![WinForms RadRibbonBar Custom Key Tips](images/ribbonbar-programming-radribbonbar-customizing-the-key-tips001.png)

>caption Figure 2: Default Key Tips
![WinForms RadRibbonBar Default Key Tips](images/ribbonbar-programming-radribbonbar-customizing-the-key-tips002.png)

## KeyTipShowing Event

The key tip`s location and styles can be modified in the event handler of the **KeyTipShowing** event. The additional parameters allowing these modifications are exposed by the event arguments which need to be cast to **RadKeyTipShowingEventArgs**

* RadKeyTipShowingEventArgs.**CustomLocation**: Defines the coordinates at which the key tip will be shown.


* RadKeyTipShowingEventArgs.**Font**: Gets or sets the font used to paint the text of the key tip.

* RadKeyTipShowingEventArgs.**BackColor**: Gets or sets the back color used to paint the background of the key tip.

* RadKeyTipShowingEventArgs.**BorderColor**: Determines the border color used to paint the borders of the key tip.


* RadKeyTipShowingEventArgs.**ForeColor**: Gets or sets the color used to paint the text of the key tip.

#### Handling the KeyTipShowing Event

<snippet id='ribbonbar-customizingthekeytips-keytipshowingevent-cs' />
<snippet id='ribbonbar-customizingthekeytips-keytipshowingevent-vb' />



>note Key tips can also be displayed by the backstage view. The **KeyTipShowing** event needs to be subscribed on the **RadRibbonBarBackstageView** object. 

## See Also

* [Backstage View]({%slug winforms/ribbonbar/backstage-view/overview%})
* [Using the Key Tips]({%slug winforms/ribbonbar/end-user-capabilities/using-key-tips%})
