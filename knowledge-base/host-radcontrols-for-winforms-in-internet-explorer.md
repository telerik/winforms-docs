---
title: Host RadControls for WinForms in Internet Explorer
description: Host RadControls for WinForms in Internet Explorer. Check it now!
type: how-to
page_title: Host RadControls for WinForms in Internet Explorer
slug: host-radcontrols-for-winforms-in-internet-explorer
tags: common
res_type: kb
---

|Date Posted|Product|Author|
|----|----|----|
|Oct. 02, 2007 |UI for WinForms|Nikolay Diyanov|
 
## How To
  
Host RadControls for WinForms in Internet Explorer
 
## Solution

It is easy to host RadControls for WinForms in Internet Explorer.
 
Please follow the steps below to set up control hosting:
 
1\. First, create a Virtual Directory and name it, for example **VirtualDir**. In order to do this, you should:

*	Create a directory on your hard drive.

*	Right-click it and select **Properties**, then the **Web Sharing** tab. Choose the **Share This Folder** radio button and a **Edit Alias** window will appear. Then click **OK** and then **OK** once again to save the Virtual Directory properties.
	
2\. Create a new **Windows Control Library** project in **Visual Studio** and name it, for example **IEHostUIControl**.
 
3\. Right-click on the project file in the **Solution Explorer** and choose **Properties**. Select the **Build** tab and change the **Output path** to the virtual directory path.

4\. Add a new item to the project: right-click the project file, then select **Add -&gt; New Item...**. Choose **User Control** item, name it, for example **UserControl1.cs** and click **Add** .

5\. Double-click **UserControl1.cs** in the **Solution Explorer** and now you can add **RadControls** by dragging them from the toolbox to the **UserControl1 Design View** .

6\. Build the project. A **IEHostUIControl.dll** file should appear in the **VirtualDir**.

7\. Now that you have the assembly containing the controls, you should create a html page, that will host this assembly. Create a simple html page in the **VirtualDir**, name it **index.htm** , then in the body tag add a tag of type object, which references the assembly and the type in its classid property in the way shown below.   
   
In the example below, **IEHostControl.dll** is the assembly, that we have just created in the **VirtualDir** directory. As for **IEHostUIControl.UserControl1**, **IEHostControl** is the namespace, and the **UserControl1** is the user control item created. You have to reference the type in the classid property the type as follows:   
   
&lt;the name of the DLL&gt;#&lt;namespace name&gt;.&lt;type name&gt;   
   
This is illustrated in the example below:   
   
 &lt;object id="simpleControl1" classid="http:IEHostUIControl.dll#IEHostUIControl.UserControl1" height="300" width="300"&gt;   
 &lt;/object&gt;

8\. In order to be able to view the hosted controls in the web page, you have to set the necessary permissions. Start **Internet Explorer** , choose **Tools** , **Internet Options** , then open the **Security** tab. Click on **Trusted Sites** and then the **Sites** button. In our case, the site is located on the local hard drive, so add http://localhost to the trusted sites, and uncheck **Require server verification (https:) for all sites in the zone**.

9\. Depending on your server configuration you should use one of the following approaches:
 
- Using  **Microsoft .NET Framework 2.0 Configuration**

There is one final thing that you have to change with the permissions. Go to the **Control Panel** &gt;&gt; **Administrative Tools** &gt;&gt; **Microsoft .NET Framework 2.0 Configuration** . From the tree on the left navigate to **Runtime Security Policy &gt;&gt; Machine &gt;&gt; Code Groups &gt;&gt; Trusted Zone**. From the panel on the right, open **Edit Code Groups Properties** and then, the **Permission Set** tab. Set Permissions to **FullTrust** and click **OK**.

- Using  **Code Access Security Policy Tool**  

If you are working on a non-developer workstation,  **Microsoft .NET Framework 2.0 Configuration** will not be available . In this case you should use the **Code Access Security Policy Tool** (caspol.exe) instead. You can find it in the C:\WINDOWS\Microsoft.NET\Framework2.0.50727\ directory. The directory name varies, depending on the drive that has Windows installed, and the specific version of .NET Framework that you have.   
To use the **Caspol **utility, open the command line, navigate to the directory mentioned above and then type  **caspol -machine -chggroup 1.5. FullTrust**, where "1.5." stands for the **Trusted Zone** . However, **Trusted Zone** could be under different number in your case, so you should first check this by typing the command **caspol -m -lg **. It will list all the zones with their corresponding numbers and security levels.   

**NOTE:** 

You also can set the security level just for one assembly by using the command " **caspol -addfulltrust C:\VirtualDir\IEHostUIControl.dll**". Note, that this command will work only if the **IEHostUIContro.dll** is strongly named. To give the assembly a strong name, please refer to the following [MSDN article](http://msdn2.microsoft.com/en-us/library/xwb8f617%28vs.71%29.aspx).

10\. Start **Internet Explorer **and type the URL of your virtual directory: http://localhost/VirtualDir . You should get the page you created with the hosted **RadControls **.

**NOTES**:   

1. Setting the permissions to the ones shown above (FullTrust) is for demonstration purposes only. To learn more about setting the right permissions for you, please refer to [MSDN](http://msdn2.microsoft.com/).

2. To achieve the best user experience, please use Internet Explorer 7 to open the web page that hosts the controls.



