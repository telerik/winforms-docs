---
title: Standard Masks
page_title: Standard Masks
description: Standard Masks
slug: editors-maskededitbox-standart-masks
tags: standard,masks
published: True
position: 1
---

# Standard Masks



## 

The table below describe the mask characters that can be used when the __MaskType__property
            is set to __Standard__.
        
<table><tr><td>

<b>Mask Character</b></td><td>

<b>Description</b></td></tr><tr><td>

0</td><td>

Digit, required. This element will accept any single digit between 0 and 9.
              </td></tr><tr><td>

9</td><td>

Digit or space, optional.
              </td></tr><tr><td>

#</td><td>

Digit or space, optional. If this position is blank in the mask, it will be rendered as the character in the
                [PromptChar]({%slug editors-maskededitbox-working-with-radmaskededitbox%})
                property. For example, "$######.##" displays as a literal "$", accepts a numeric amount with six places and two
                places to the right of the decimal, i.e. $123456.56.</td></tr><tr><td>

L</td><td>

Accepts letters only. 
              </td></tr><tr><td>

?</td><td>

Letter, optional. </td></tr><tr><td>

&</td><td>

Character, required. </td></tr><tr><td>

C</td><td>

Character, optional. </td></tr><tr><td>

A</td><td>

Alphanumeric, required. Accepts any symbol.</td></tr><tr><td>

a</td><td>

Alphanumeric, optional. </td></tr><tr><td>

.</td><td>

Decimal placeholder.</td></tr><tr><td>

,</td><td>

Thousands placeholder.</td></tr><tr><td>

:</td><td>

Time separator.</td></tr><tr><td>

/</td><td>

Date separator.</td></tr><tr><td>

$</td><td>

Currency symbol.</td></tr><tr><td>

<</td><td>

Shift down. Converts all characters that follow to lowercase.</td></tr><tr><td>

></td><td>

Shift up. Converts all characters that follow to uppercase.</td></tr><tr><td>

|
              </td><td>

Disable a previous shift up or shift down.</td></tr><tr><td>

\
              </td><td>

Escape. Escapes a mask character, turning it into a literal. "\\" is the escape sequence for a backslash.</td></tr><tr><td>

All other characters</td><td>

All non-mask elements will appear as themselves within <b>RadMaskedEditBox</b>. Literals always occupy a static position in the mask at run time, and cannot be moved or deleted by the user</td></tr></table>
