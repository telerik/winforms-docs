---
title: Make your Telerik WinForms-enabled applications start instantly
description: Make your Telerik WinForms-enabled applications start instantly. Check it now!
type: how-to
page_title: Make your Telerik WinForms-enabled applications start instantly
slug: make-your-telerik-winforms-enabled-applications-start-instantly
tags: common, application, start, performance
res_type: kb
---

|Date Posted|Product|Author|
|----|----|----|
|Apr 4, 2010|Telerik UI for WinForms|Nikolay Diyanov| 
 
## Problem 

RadControls for WinForms is a very well structured package of controls, with an excellent balance between performance and features. Still, firing up an application built with Telerik Windows Forms may take a few seconds – time that end-users prefer to get rid of, if possible. The purpose of this article is to demonstrate how you can make your RadControls-enabled application start instantly on the client.  
   
## Solution
  
The solution is common for large applications such as the Open Office suite. The idea here is to load some application resources (in our case - the whole application) when the Windows starts. When the end-user tries to manually start the application, the executable file takes the preloaded resources/application and makes them available to the user. This saves up the time needed for loading the application/application resources. The steps below demonstrate how this behavior can be achieved: 
1. Create an application using RadControls for WinForms. Regarding the current topic, the most important part of this application will be situated in the Program class of your C# application. Basically, this part of the application will be responsible for two things:
    
* Runs the application if there is no other instance of the same application started.

* If there is another instance currently running, takes this instance and shows its main form.

````C#
static class Program
{
    private static string requiredString;
  
    internal static class NativeMethods
    {
        [DllImport("user32.dll")]
        public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
  
        [DllImport("user32.dll")]
        public static extern bool SetForegroundWindow(IntPtr hWnd);
  
        [DllImport("user32.dll")]
        public static extern bool EnumWindows(EnumWindowsProcDel lpEnumFunc,
            Int32 lParam);
  
        [DllImport("user32.dll")]
        public static extern int GetWindowThreadProcessId(IntPtr hWnd,
            ref Int32 lpdwProcessId);
  
        [DllImport("user32.dll")]
        public static extern int GetWindowText(IntPtr hWnd, StringBuilder lpString,
            Int32 nMaxCount);
  
        public const int SW_SHOWNORMAL = 1;
    }
  
    public delegate bool EnumWindowsProcDel(IntPtr hWnd, Int32 lParam);
  
    static private bool EnumWindowsProc(IntPtr hWnd, Int32 lParam)
    {
        int processId = 0;
        NativeMethods.GetWindowThreadProcessId(hWnd, ref processId);
  
        StringBuilder caption = new StringBuilder(1024);
        NativeMethods.GetWindowText(hWnd, caption, 1024);
  
        // Use IndexOf to make sure our required string is in the title.
        if (processId == lParam && (caption.ToString().IndexOf(requiredString,
            StringComparison.OrdinalIgnoreCase) != -1))
        {
            // Restore the window.
            NativeMethods.ShowWindowAsync(hWnd, NativeMethods.SW_SHOWNORMAL);
            NativeMethods.SetForegroundWindow(hWnd);
        }
        return true;
    }
  
    static public bool IsOnlyProcess(string forceTitle)
    {
        requiredString = forceTitle;
        foreach (Process proc in Process.GetProcessesByName(Application.ProductName))
        {
            if (proc.Id != Process.GetCurrentProcess().Id)
            {
                NativeMethods.EnumWindows(new EnumWindowsProcDel(EnumWindowsProc),
                    proc.Id);
                return false;
            }
        }
        return true;
    }
  
    /// <summary>
    /// The main entry point for the application.
    /// </summary>
    [STAThread]
    static void Main()
    {
        if (IsOnlyProcess("Save Dialog Demo"))
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new MainForm());
        }
    }
}

````

2. In addition, we need to place a code snippet in the main form of the application which hides the form if the application is run for the first time. This code snippet also hides that form if we try to close it. This allows the application to stay loaded into the memory:
    
````C#
public partial class MainForm : RadForm
{
    public MainForm()
    {
        InitializeComponent();
          
        this.Text = "SingleInstanceDemo";
        this.Opacity = 0;
    }
  
    private bool firstShow = true;
  
    protected override void OnShown(EventArgs e)
    {
        base.OnShown(e);
  
        if (firstShow)
        {
            this.Visible = false;
            this.firstShow = false;
            this.Opacity = 1;
        }
    }
  
    protected override void OnClosing(CancelEventArgs e)
    {
        e.Cancel = true;
        this.Hide();
  
        base.OnClosing(e);
    }
}

````

3. Let's now put our application in the list of processes that should be started when the Windows starts. To do so, we can add a registry key into the Windows Registry. For the purposes of the example, we execute the registry command manually, but you may decide to execute it during the process of installing your application on the end-user machines:

    1\. Create a text file using Notepad.

    2\. Assuming that the executable file of our RadControls-enabled application is named RadControlsApp and this file is located at "C:\Program Files (x86)\Telerik\", you should type the following text in the text file:  
     
	````
	Windows Registry Editor Version 5.00
	[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
	"RadControlsApp"="\"C:\\Program Files (x86)\\Telerik\\RadControlsApp.exe\""
	````

	3\. Save the file with the ".reg" extension.

	4\. Run the file and click the Yes button. This will put the registry key into the Windows Registry.

To make a quick test of the described approach, follow these steps:

1. Download the provided VB.NET/C# solutions in Zip format.

2. Build the downloaded solution and move the built executable file to C:\ .

3. Run the Registry file that you will find in the downloaded zip file and choose Yes. Please note that this action will put the following following Registry Key into your Registry:
````
Windows Registry Editor Version 5.00
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run]
"RadControlsApp"="\"C:\\RadControlsApp.exe\""
````
If you want to remove the added Registry Key after you test the sample application (complete steps 4 and 5), please follow [these intructions](http://pcsupport.about.com/od/windowsvista/ht/deleterkeyvista.htm).

4. Restart your machine.
 
5.After the Windows is loaded, try to start the executable file that you have copied to to C:\ .
You should notice that the application runs instantly!
    
>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/Genral_All_Controls/StartInstantlySample).