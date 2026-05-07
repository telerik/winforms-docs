---
title: Popup
page_title: Popup
description: This article demonstrates the popup feature of the RadNotifyIcon. 
slug: radnotifyicon-features-popup
tags: Popup,notifyicon
position: 1
---

# Popup

The __RadNotifyIcon__ allows for displaying a popup upon interacting with the icon or by manually calling the exposed methods. 

## PopupContent 

The __PopupContent__ property allow for setting the popup's content and changing its default look. The **PopupContent** property is of type **Control**. This way you can design your Form, UserControl, etc. and set it as a content of the popup.

<snippet id='notifyicon-features-popupcontent-cs' />
<snippet id='notifyicon-features-popupcontent-vb' />



#### __Figure 1: RadNotifyIcon with Popup__ (Windows 11 OS)

![RadNotifyIcon with activated popup](images/radnotifyicon-features-popup_001.png)

## PopupActivationMouseEvent

The __PopupActivationMouseEvent__ property determines when the popup will be shown. The default value is __LeftClick__. This property is enumeration and it expose the following values:
* __LeftClick__: Triggered on left mouse click.
* __RightClick__: Triggered on right mouse click.
* __MiddleClick__: Triggered on middle mouse click.
* __LeftDoubleClick__: Triggered on left mouse double click.
* __RightDoubleClick__: Triggered on right mouse double click.
* __MiddleDoubleClick__: Triggered on middle mouse double click.
* __All__: Triggered on any mouse click action.


<snippet id='notifyicon-features-popupactivationmouseevent-cs' />
<snippet id='notifyicon-features-popupactivationmouseevent-vb' />



## PopupShowDuration

The __PopupShowDuration__ specifies the amount of time in __milliseconds__ after which the popup will begin to close automatically. The default value is __5000__ milliseconds (5s). 

<snippet id='notifyicon-features-popupshowduration-cs' />
<snippet id='notifyicon-features-popupshowduration-vb' />



## PopupCloseMode

The __PopupCloseMode__ is a bitwise enumeration, which controls the actions that will close the popup. The possible values are:

* **None**: The popup can only be closed in code (with the __HidePopup__ method) or by clicking on the notify icon. 
* **Deactivate**: The popup can be closed by clicking outside of it or by deactivating it with a windows keyboard shortcut.
* **Timeout**: The popup will be closed after the time specified by the __PopupShowDuration__ runs out. This is the default value.

## Programmatically Showing the Popup

The RadNotifyIcon allows for programmatically showing a popup through the __ShowPopup__ method. It exposes one overload, which provides the option of specifying a screen location. 

* **void ShowPopup()**: Shows the popup on top of the notify icon.
* **void ShowPopup(Point location)**: Shows the popup at the provided location.

<snippet id='notifyicon-features-showpopup-cs' />
<snippet id='notifyicon-features-showpopup-vb' />



## Programmatically Hiding the Popup

You can manually hide the popup with the __HidePopup__ method as shown in __Example 6__.

<snippet id='notifyicon-features-hidepopup-cs' />
<snippet id='notifyicon-features-hidepopup-vb' />



## Popup Animations

You can control the opening and closing animation with the __PopupShowAnimation__ and __PopupHideAnimation__ properties respectively. These properties are enumeration (**NotifyIconAnimationType**) and it expose the following values:
* **None**: No animation.
* **Fade**: A Fade animation is applied.
* **Timeout**: A 'Slide' animation is applied.

<snippet id='notifyicon-features-popupanimation-cs' />
<snippet id='notifyicon-features-popupanimation-vb' />



#### __Figure 2: Show/Hide Animation__ (Windows 10 OS)


![RadNotifyIcon show/hide animation](images/radnotifyicon-features-popup_002.GIF)

## IsPopupOpen

The __IsPopupOpen__ property allows you to check whether a popup is currently open.


## See Also 

* [Tooltip]({%slug radnotifyicon-features-tooltip%})