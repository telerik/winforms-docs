---
title: Load theme components in a separate thread
description: Load theme components in a separate thread. Check it now!
type: how-to
page_title: Load theme components in a separate thread
slug: load-theme-components-in-a-separate-thread
res_type: kb
---

|Article relates to|Product|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms, Q2 2009 SP1|Telerik UI for WinForms|Nikolay Diyanov|Sep 23, 2009| 
 
## Problem  
   
When you register/load a theme in your project, this registration takes some time when you start your application. If you have a large number of themes, this time may become noticeable. If your application initially starts with only one theme applied to the RadControls on the form (for example ControlDefault theme), this means that you do not need to have the other themes loaded when the application is started. So, in order to decrease application loading time we can load the other themes in a separate thread.  
   
## Solution 
   
In this article we will demonstrate what is the benefit of loading themes in a separate thread on form load. Let's make a small application of one RadForm and a RadComboBox. By RadComboBox we will set the ApplicationThemeName property.  
   
Let's first load the predefined theme components in the main thread:   
 
````C#

public Form1()  
{  
    InitializeComponent();  
     
    LoadThemeComponents();           
}  
 
void LoadThemeComponents()  
{  
    new Office2007BlackTheme();  
    new Office2007SilverTheme();  
    new AquaTheme();  
    new BreezeTheme();  
    new MiscellaneousTheme();  
    new DesertTheme();  
    new TelerikTheme();  
    new VistaTheme();  
} 

````
   
Please note that when we make new instances of the theme components we actually register the themes that are contained in these components.  
   
In order to measure the time of the form load, we set  the following code in the Program.cs:  
 
````C#
[STAThread]  
static void Main()  
{  
    int StartTime = System.Environment.TickCount;  
    Application.EnableVisualStyles();  
    Application.SetCompatibleTextRenderingDefault(false);  
 
    Form1 form = new Form1();  
    form.Shown +=  
        delegate 
        {  
            MessageBox.Show((System.Environment.TickCount - StartTime).ToString());  
            //Application.Exit();  
        };  
    Application.Run(form);  
} 

````
 
Let's now start the application in Release mode. We get an average time span of 1422 ms.   
   
Let's create the theme component objects in a separate thread. We will do this with the help of a **BackgroundWorker** in the Form\_Load event handler:  
 
````C#

private void Form1_Load(object sender, EventArgs e)  
{  
    BackgroundWorker worker = new BackgroundWorker();  
    worker.DoWork += delegate { this.LoadThemeComponents(); };  
    BeginInvoke(new MethodInvoker(worker.RunWorkerAsync));  
}

````
 
In this case we get an average timespan of 890 ms. This result compared to the 1422 ms means that we decrease the loading time with about 532 ms. The good thing about loading themes in different thread is that they are already loaded when we want to use them, for example after the form is loaded, I select "Office2007Black" from the RadComboBox and I get the Office2007Black style successfully loaded in the application.  
   
 
![](/Images/office2007blackthemeloaded.png)
   
>note A complete solution in C# and VB.NET can be found [here](https://github.com/telerik/winforms-sdk/tree/master/ThemeLoader).  




