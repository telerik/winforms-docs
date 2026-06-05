---
title: Edit
page_title: Edit
description: Edit
slug: radpicturebox-edit
tags: edit
published: True
position: 0
---

# Edit

**RadPictureBox** allows editing images. In order to edit an image it is neccessary to right click with the mouse on the control and a context menu will be shown. Then, choose the *Edit image* option.

![WinForms RadPictureBox Edit](images/edit001.png)

A new window showing **PictureBoxImageEditorDialog** should be displayed. Now, you can start editing the image.

>note **PictureBoxImageEditorDialog** internally uses [RadImageEditor](https://docs.telerik.com/devtools/winforms/controls/image-editor/overview).

![WinForms RadPictureBox PictureBoxImageEditorDialog](images/edit002.png)

> RadPictureBox can not edit SVG images. Only raster images can be edited. 

If you are trying to edit SVG image you will get the following warning message:
![WinForms RadPictureBox SVG Edit Warning Message](images/edit003.png)

**RadPictureBox** exposes the following useful events:

- **ImageEdited**:  Occurs when the image has been edited and the user has accepted the changes. Can be handled. Note that this event will be fired always when the user clicks the OK button of the dialog, even if there are no changes in the image.

- **ImageEditorOpening**: Occurs when the image is about to be edited in the Image Editor Dialog. Can be cancelled.

## Customize PictureBoxImageEditorDialog 

**PictureBoxImageEditorDialog** can be customized by accessing the **RadImageEditor**. You can access the **RadImageEditor** through **RadPictureBox.ImageEditorDialog.ImageEditor** property. 

>note More information about DialogFactory is available [here](https://docs.telerik.com/devtools/winforms/controls/image-editor/dialog-factory).

Below is demonstrated how to customize the ResizeDialog and set the checked state of the Preserve Aspect Ratio checkbox which by default is unchecked.

<snippet id='picturebox-pictureboxgettingstarted-customizedialog-cs' />
<snippet id='picturebox-pictureboxgettingstarted-customizedialog-vb' />



Finally, you need to apply this custom factory to your **PictureBoxImageEditorDialog**:

<snippet id='picturebox-pictureboxgettingstarted-applycustomfactory-cs' />
<snippet id='picturebox-pictureboxgettingstarted-applycustomfactory-vb' />



# See Also

* [Pan and Zoom]({%slug radpicturebox-pan-and-zoom%})
* [Context Menu]({%slug context-menu%})

