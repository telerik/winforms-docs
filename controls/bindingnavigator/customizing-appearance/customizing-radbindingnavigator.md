---
title: Customizing Appearance
page_title: Customizing Appearance - WinForms BindingNavigator Control
description: Learn how one can change the appearance of the navigator elements.  
slug: winforms/bindingnavigator/customizing-radbindingnavigator-
tags: customizing, radbindingnavigator
published: True
position: 0
previous_url: bindingnavigator-overview-customizing-radbindingnavigator
---

# Customizing RadBindingNavigator 

Each of the control's elements can be accessed and customized. Once you access the desired elements, you can tweak their properties in order to modify them. 

### Customize Fill and Border

You can access the control element by opening the [Element Hierarchy Editor]({%slug winforms/tools/element-hierarchy-editor%}) from the controls smart tag. This allows you to select elements and change their properties. The next image shows how you can change the BackColor and the BorderColor.

>caption Figure 1: Change the BackColor and the BorderColor.

![WinForms RadBindingNavigator Change the BackColor and the BorderColor](images/bindingnavigator-overview-customizing-radbindingnavigator001.png)

### Customize Buttons

The following snippet shows how you can access and change the properties of navigator buttons.

{{source=..\SamplesCS\DataEntryAndBindingNavigator\RadBindingNavigatorForm.cs region=changeButtonColor}} 
{{source=..\SamplesVB\DataEntryAndBindingNavigator\RadBindingNavigatorForm.vb region=changeButtonColor}}
````C#
radBindingNavigator1.BindingNavigatorElement.NextButton.BackColor = ColorTranslator.FromHtml("#e83737");
radBindingNavigator1.BindingNavigatorElement.NextButton.GradientStyle = Telerik.WinControls.GradientStyles.Solid;

````
````VB.NET
radBindingNavigator1.BindingNavigatorElement.NextButton.BackColor = ColorTranslator.FromHtml("#e83737")
radBindingNavigator1.BindingNavigatorElement.NextButton.GradientStyle = Telerik.WinControls.GradientStyles.Solid

````

{{endregion}} 

>caption The NextButton background is changed:

![WinForms RadBindingNavigator Modify NextButton Background](images/bindingnavigator-overview-customizing-radbindingnavigator002.png)


### Using glyphs

As of R2 2021 **RadBindingNavigator** can be customized to [use glyphs](https://docs.telerik.com/devtools/winforms/telerik-presentation-framework/glyphs) for the buttons instead of images. The **ButtonDisplayStyle** property defines whether the buttons will display image or glyphs. You can also specify the **ButtonGlyphSize** which determines the font size of the glyphs displayed in the buttons.

The following example shows how you can apply glyphs for the buttons:

{{source=..\SamplesCS\DataEntryAndBindingNavigator\RadBindingNavigatorForm.cs region=buttonGlyph}} 
{{source=..\SamplesVB\DataEntryAndBindingNavigator\RadBindingNavigatorForm.vb region=buttonGlyph}}
````C#
radBindingNavigator1.BindingNavigatorElement.ButtonDisplayStyle = BindingNavigatorButtonDisplayStyle.Glyph;
radBindingNavigator1.BindingNavigatorElement.ButtonGlyphSize = 15;

var font1 = ThemeResolutionService.GetCustomFont("TelerikWebUI");
radBindingNavigator1.BindingNavigatorElement.AddNewButton.CustomFont = font1.Name;
radBindingNavigator1.BindingNavigatorElement.DeleteButton.CustomFont = font1.Name;
radBindingNavigator1.BindingNavigatorElement.AddNewButton.Text = "\ue817";
radBindingNavigator1.BindingNavigatorElement.DeleteButton.Text = "\ue301";

````
````VB.NET
radBindingNavigator1.BindingNavigatorElement.ButtonDisplayStyle = BindingNavigatorButtonDisplayStyle.Glyph
radBindingNavigator1.BindingNavigatorElement.ButtonGlyphSize = 15

Dim font1 = ThemeResolutionService.GetCustomFont("TelerikWebUI")
radBindingNavigator1.BindingNavigatorElement.AddNewButton.CustomFont = font1.Name
radBindingNavigator1.BindingNavigatorElement.DeleteButton.CustomFont = font1.Name
radBindingNavigator1.BindingNavigatorElement.AddNewButton.Text = "\ue817"
radBindingNavigator1.BindingNavigatorElement.DeleteButton.Text = "\ue301"

````

{{endregion}} 

>caption The AddNewButton and DeleteButton are customized with custom glyphs:

![WinForms RadBindingNavigator Customized AddNewButton And DeleteButton](images/bindingnavigator-overview-customizing-radbindingnavigator003.png)

## See Also

 * [Properties]({%slug winforms/bindingnavigator/properties%})
 * [Structure]({%slug winforms/bindingnavigator/structure%})
