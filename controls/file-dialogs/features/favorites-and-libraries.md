---
title: Favorites and Libraries Nodes
page_title: Favorites and Libraries Nodes - File Dialogs
description: File Dialogs provide you with the option the specify a list of directories displayed above the Treeview navigation.
slug: file-dialogs-favorites-and-libraries
tags: filedialogs
published: True
position: 3 
---

#  Favorites and Libraries Nodes

As of **R3 2019** File Dialogs allow defining [custom places]({%slug file-dialogs-custom-places%}) to be displayed on the left side of the **ExplorerControl**'s Main Pane. It is also possible to add multiple custom places like favorites and libraries nodes:

![WinForms RadFile-Dialogs file-dialogs-favorites-and-libraries 001](images/file-dialogs-favorites-and-libraries001.png)

This will give you quick access to the custom-defined folders. Once a node in the *Favorites/Libraries* section is clicked, the respective folder is selected under *This PC*.

#### Defining Multiple Custom Places: Favorites and Libraries Nodes


````C#

List<string> paths = new List<string>()
{
    @"C:\Users\"your_user_name"\Desktop",
    @"C:\Users\"your_user_name"\Downloads", 
};

Image favoritesIcon = Properties.Resources.Favorites;
explorerControl1.AddCustomPlacesNode("Favorites", favoritesIcon, paths);

paths = new List<string>()
{
    @"C:\Users\"your_user_name"\Documents",
    @"C:\Users\"your_user_name"\Music", 
    @"C:\Users\"your_user_name"\Pictures"
};

Image folderIcon = Properties.Resources.Folder;
explorerControl1.AddCustomPlacesNode("Libraries", folderIcon, paths);


````
````VB.NET
Dim paths As List(Of String) = New List(Of String)() From {
    "C:\Users\"your_user_name"\Desktop",
    "C:\Users\"your_user_name"\Downloads"
}
Dim favoritesIcon As Image = My.Resources.Favorites
Me.ExplorerControl1.AddCustomPlacesNode("Favorites", favoritesIcon, paths)
paths = New List(Of String)() From {
    "C:\Users\"your_user_name"\Documents",
    "C:\Users\"your_user_name"\Music",
    "C:\Users\"your_user_name"\Pictures"
}
Dim folderIcon As Image = My.Resources.Folder
Me.ExplorerControl1.AddCustomPlacesNode("Libraries", folderIcon, paths)

 
````


# See Also

* [Structure]({%slug winforms/file-dialogs/structure%})
* [Network Locations]({%slug winforms/file-dialogs/features/network-locations%})
* [Filterng]({%slug winforms/file-dialogs/features/filtering%}) 
* [Error Handling]({%slug winforms/file-dialogs/features/error-handling%})
* [Explorer Control]({%slug winforms/file-dialogs/dialog-controls/explorer-control%})
* [RadOpenFileDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfiledialog%})
* [RadOpenFolderDialog]({%slug winforms/file-dialogs/dialog-controls/radopenfolderdialog%})
* [RadSaveFileDialog]({%slug winforms/file-dialogs/dialog-controls/radsavefiledialog%})
