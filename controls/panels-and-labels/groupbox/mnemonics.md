---
title: Mnemonics
page_title: Mnemonics - RadGroupBox
description: RadGroupBox supports mnemonics out of the box.
slug: winforms/panels-and-labels/mnemonics
tags: groupbox, mnemonics
published: True
position: 6
---

# Mnemonics

__RadGroupBox__ supports mnemonics out of the box. When its mnemonic key is pressed the first control in the group box is focused automatically. 

In order to activate this functionality you should specify the character that will be used for a given control by placing the __&__ character before the desired symbol. 

<snippet id='panels-and-labels-tpfstructure-setmenemonic-cs' />
<snippet id='panels-and-labels-tpfstructure-setmenemonic-vb' />



__UseMnemonic__ is a boolean property which controls whether the __&__ character is displayed as the symbol itself or whether it is used to designate a mnemonic (visualized as an underscore). Its default value is *true* i.e. mnemonics are used by default.
