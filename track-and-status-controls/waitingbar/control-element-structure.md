---
title: Control Element Structure
page_title: Control Element Structure | UI for WinForms Documentation
description: Control Element Structure
slug: winforms/track-and-status-controls/waitingbar/control-element-structure
tags: control,element,structure
published: True
position: 3
---

# Control Element Structure



## 

RadWaitingBar is built up of several levels of nested components:

* RadWaitingBar   

	* RadWaitingBarElement   

		* WaitingBarContentElement

			* WaitingBarSeparatorElement

			* WaitingBarTextElement

			* WaitingBarIndicatorElement

				* WaitingBarSeparatorElement

			* WaitingBarIndicatorElement

				* WaitingBarSeparatorElement 


The __RadWaitingBarElement__ represents the entire __RadWaitingBar__ control. Any settings you make at this level will be inherited by all elements further down in the tree. The __WaitingBarContentElement__ wraps up the layout logic of the waiting bar and arranges the waiting indicators, the separator element, and the text element. The __WaitingBarSeparatorElement__ covers the __WaitingBarContentElement__’s area completely with a customizable stripe-pattern, hiding the waiting indicators. Stretched in the __WaitingBarContentElement__, the __WaitingBarTextElement__ displays the text of the __RadWaitingBar__. By default, RadWaitingBar comprises two instances of WaitingBarIndicatorElements which represent the control indicators. Each __WaitingBarIndicatorElement__ contains a __WaitingBarSeparatorElement__ in order to allow the waiting indicators to support dash style.   
   
