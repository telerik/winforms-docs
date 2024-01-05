---
title: Displaying Image from URL in RadPictureBox
description: Learn how to display an image from a URL in the RadPictureBox control for WinForms.
type: how-to
page_title: How to Display Image from URL in RadPictureBox
slug: display-image-url-radpicturebox
tags: radpicturebox, winforms, url, image
res_type: kb
---

## Environment
| Property | Value |
|----------|-------|
| Product  | RadPictureBox for WinForms |
| Version  | 2023.3.1010 |

## Description
To display an image from a URL in the RadPictureBox control, you can follow these steps:

## Solution
1. Create a new form or open an existing form in your WinForms project.
2. Add a RadPictureBox control to the form.
3. Use the following code to load the image from the URL and assign it to the RadPictureBox control:

```csharp
var request = WebRequest.Create("https://example.com/path/to/image.png");

using (var response = request.GetResponse())
using (var stream = response.GetResponseStream())
{
    Image myImage = Image.FromStream(stream);
    radPictureBox1.Image = myImage;
}
```

4. Replace `"https://example.com/path/to/image.png"` with the actual URL of the image you want to display.
5. Run the application to see the image displayed in the RadPictureBox control.

That's it! You have successfully displayed an image from a URL in the RadPictureBox control for WinForms.

## Notes
- Make sure you have the necessary permissions to access the image URL.
- Ensure that your application has an active internet connection to retrieve the image from the URL.
- If the image fails to load, check if the URL is correct and accessible.

## See Also
- [RadPictureBox documentation](https://docs.telerik.com/devtools/winforms/controls/picturebox/overview)
