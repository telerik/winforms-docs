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

**RadPictureBox** allow editing images. In order to edit an image it is neccessary to right click with the mouse on the control and a context menu will be shown. Then, choose the *Edit image* option.

![picturebox-edit001](images/edit001.png)

A new window showing **PictureBoxImageEditorDialog** should be displayed. Now, you can start editing the image.

![picturebox-edit002](images/edit002.png)

> RadPictureBox can not edit SVG images. Only raster images can be edited. 

If you are trying to edit SVG image you will get the following warning message:
![picturebox-edit003](images/edit003.png)

**RadPictureBox** exposes the following useful events:

- **ImageEdited**:  Occurs when the image has been edited and the user has accepted the changes. Can be handled. Note that this event will be fired always when the user clicks the OK button of the dialog, even if there are no changes in the image.

- **ImageEditorOpening**: Occurs when the image is about to be edited in the Image Editor Dialog. Can be cancelled.

# See Also

* [Structure]({%slug radpicturebox-structure%})
