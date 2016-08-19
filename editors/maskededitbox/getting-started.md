---
title: Getting Started
page_title: Getting Started | MaskedEditBox
description: Getting Started
slug: winforms/editors/maskededitbox/getting-started
tags: getting,started
published: True
position: 1
previous_url: editors-maskededitbox-getting-started
---

# Getting Started
 
## 

Here is how to quickly configure two __RadMaskedEditBox__ controls. One uses a custom phone number mask, the second as a predefined short date pattern.![editors-maskededitbox-getting-started 001](images/editors-maskededitbox-getting-started001.png)

1. Drop two __RadMaskedEditBox__ controls on a form.
            

1. In the first __RadMaskedEditBox__ set the __MaskType__ property to __Standard__ and the __Mask__ property to "(###) ###-###". *See *[Standard Masks]({%slug winforms/editors/maskededitbox/standard-masks%})* for more information on how this mask is constructed.*

1. In the second __RadMaskedEditBox__ set the __MaskType__ property to __DateTime__ and the __Mask__ property to "d". * See [Date and Time Masks]({%slug winforms/editors/maskededitbox/date-and-time-masks%})** for more information on how this mask is constructed.*

1. Press __F5__ to run the application. * Notice the behavior in the first __RadMaskedEditBox__ where the literals "(" and ")" are jumped over and cannot be replaced by the user. Also notice that mask characters are represented by the character in the __PromptChar__ property (by default this is the underscore "_" character) when blank. *
