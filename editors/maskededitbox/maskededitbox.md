---
title: Overview
page_title: MaskedEditBox | UI for WinForms Documentation
description: MaskedEditBox
slug: winforms/editors/maskededitbox
tags: maskededitbox
published: True
position: 0
---

# MaskedEditBox
 
## 

__RadMaskedEditBox__ is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define. __RadMaskedEditBox__ also handles globalization for date and time edits. Date and Time masks allow the user to navigate using the up and down arrow keys.

![editors-maskededitbox-overview 001](images/editors-maskededitbox-overview001.png)

The __MaskType__ property defines what type of mask would be used in the masked box:

![editors-maskededitbox-overview 002](images/editors-maskededitbox-overview002.png)

* __None__

* __[DateTime]({%slug winforms/editors/maskededitbox/date-and-time-masks%})__

* __[Numeric]({%slug winforms/editors/maskededitbox/numeric-masks%})__

* __[Standard]({%slug winforms/editors/maskededitbox/standard-masks%})__

* __Regex__ - For example mask __[A-z]__ will check for at least one symbol in this range (A-z) in MaskEditBox’s Text :

![editors-maskededitbox-overview 003](images/editors-maskededitbox-overview003.png)

* __IP__ - allow user to input only __3__ digits in __0-255__ range in __four__ groups.

![editors-maskededitbox-overview 004](images/editors-maskededitbox-overview004.png)

* __Email__ - validate user input for the valid mail. If this email is not valid will notify user with validation icon:

![editors-maskededitbox-overview 005](images/editors-maskededitbox-overview005.png)

![editors-maskededitbox-overview 007](images/editors-maskededitbox-overview007.png)

Additional features supported by RadMaskedEditoBox are:

* __Null value support__

* __Easy navigation between text parts of DateTimeMask__
