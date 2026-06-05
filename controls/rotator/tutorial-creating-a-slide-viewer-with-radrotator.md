---
title: Tutorial Creating a Slide Viewer with RadRotator
page_title: Tutorial Creating a Slide Viewer with RadRotator - UI for WinForms Documentation
description: Tutorial Creating a Slide Viewer with RadRotator
slug: winforms/rotator/tutorial:-creating-a-slide-viewer-with-radrotator
tags: tutorial,creating,a,slide,viewer,with,radrotator
published: True
position: 3
previous_url: rotator-tutorial-creating-a-slide-viewer-with-radrotator
---

# Tutorial: Creating a Slide Viewer with RadRotator

The following tutorial demonstrates how to programmatically load images from the Pictures directory for display in **RadRotator**. The tutorial also integrates a **RadStatusStrip** control that contains a `RadLabelElement`.

![WinForms RadRotator StatusStrip Overview](images/rotator-tutorial-creating-a-slide-viewer-with-radrotator001.png)

1\. In the default form of a new Windows application:

2\. Drop a **RadStatusStrip** onto the form and set the `Dock` property to `Bottom`.
            
3\. Click the **RadStatusStrip** downward pointing arrow and add a `RadLabelElement`.
            
4\. Drop a **RadRotator** on the form and set its `Dock` property to `Fill`.
            
5\. Navigate to the code view of the default form.

6\. Change the declaration of the form so that it derives from `RadForm`.
            
<snippet id='rotator-tutorialcreatingaslideviewerwithradrotator-inheritfromradform-cs' />
<snippet id='rotator-tutorialcreatingaslideviewerwithradrotator-inheritfromradform-vb' />



7\. Return to the design view of the form. Visual Studio will repaint the form.

![WinForms RadRotator Design Time](images/rotator-tutorial-creating-a-slide-viewer-with-radrotator002.png)

8\. Click the **Events** tab of the **Properties** window and navigate to the `Load` event of the form. Double-click it to create a `Load` event handler and replace the code with the following snippet. The code uses the `Directory.GetFiles()` method to retrieve all `.jpg` file paths. Each file path is passed to a `GetThumbNail()` method that returns a `RadImageItem`, which is added to the **RadRotator** `Items` collection. After the image items are loaded, the `Start()` method is called to begin the animation.

<snippet id='rotator-tutorialcreatingaslideviewerwithradrotator-rotatorexample-cs' />
<snippet id='rotator-tutorialcreatingaslideviewerwithradrotator-rotatorexample-vb' />



9\. Press `F5` to run the application. 
            
