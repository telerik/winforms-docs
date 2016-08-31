---
title: Overview
page_title: Overview | RadMaskedEditBox
description: RadMaskedEditBox is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define. 
slug: winforms/editors/maskededitbox
tags: maskededitbox
published: True
position: 0
previous_url: editors-maskededitbox-overview
---

# MaskedEditBox

__RadMaskedEditBox__ is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define. __RadMaskedEditBox__ also handles globalization for date and time edits. Date and Time masks allow the user to navigate using the up and down arrow keys.

>caption Figure 1: RadMaskedEditBox Types
![editors-maskededitbox-overview 001](images/editors-maskededitbox-overview001.png)

The __MaskType__ property defines what type of mask would be used in the masked box:

>caption Figure 2: MaskType Property
![editors-maskededitbox-overview 002](images/editors-maskededitbox-overview002.png)

* __None__

* __[DateTime]({%slug winforms/editors/maskededitbox/date-and-time-masks%})__

* __[Numeric]({%slug winforms/editors/maskededitbox/numeric-masks%})__

* __[Standard]({%slug winforms/editors/maskededitbox/standard-masks%})__

* __Regex__: For example mask __[A-z]__ will check for at least one symbol in this range (A-z) in __RadMaskEditBox__’s text:

>caption Figure 3: Regex Mask
![editors-maskededitbox-overview 003](images/editors-maskededitbox-overview003.png)

* __IP__: Allows user to input only __3__ digits in __0-255__ range in __four__ groups.

>caption Figure 4: IP Mask
![editors-maskededitbox-overview 004](images/editors-maskededitbox-overview004.png)

* __Email__: Validate user input for the valid mail. If this email is not valid will notify user with validation icon:

>caption Figure 5: Email Mask
![editors-maskededitbox-overview 005](images/editors-maskededitbox-overview005.png)

Additional features supported by __RadMaskedEditoBox__ are:

* __Null value support__

* __Easy navigation between text parts of DateTimeMask__

## See Also

* [Structure]({%slug winforms/editors/maskededitbox/structure%})
* [Smart Tag]({%slug winforms/editors/maskededitbox/design-time/smart-tag%})
* [Getting Started]({%slug winforms/editors/maskededitbox/getting-started%})