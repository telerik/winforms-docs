---
title: Using RadEditor for ASP.NET AJAX in a Windows application
description: Using RadEditor for ASP.NET AJAX in a Windows application. Check it now!
type: how-to
page_title: Using RadEditor for ASP.NET AJAX in a Windows application
slug: using-radeditor-for-asp-net-ajax-in-a-windows-application
res_type: kb
---

|Article relates to|Product|Author|
|----|----|----|
|RadEditor for ASP.NET v7.2.1 + Telerik.Web.UI 2007.13.14 + RadControls for WinForms v4.0.2.0|Telerik UI for WinForms|Nikolay Diyanov| 
  
  
## How To 

Use Telerik RadEditor for ASP.NET AJAX in a Windows application    
 
## Solution 
 
Although **RadEditor** is an ASP.NET control, you can use it in your Windows application. The steps below show how to cope with this task.   
   
You can find how to use **RadEditor for ASP.NET AJAX **in your Windows application using the steps below.  We will get the HTML content from the editor in the following live example [Default Settings](https://demos.telerik.com/aspnet-ajax/editor/examples/overview/defaultcs.aspx) in order to show it in a message box. 
1\. Create a Windows Application project.

2\. Add a reference to the Microsoft HTML Object Library assembly (Microsoft.mshtml.dll). You can find it in your Global Assembly Cache.

3\. From the toolbox drag a **WebBrowser **control to your Windows Form.

4\. In the **Form\_Load **event handler set the following [URL](https://demos.telerik.com/aspnet-ajax/editor/examples/overview/defaultcs.aspx) for the WebBrowser control. This URL leads to a page which contains **RadEditor**:  
  
````C#
this.webBrowser1.Url = new Uri( "http://www.telerik.com/DEMOS/ASPNET/Prometheus/Editor/Examples/Default/DefaultCS.aspx" ); 

````

5\. Then create a button and in the its **Button\_Click **event handler, perform the procedures below.

6\. Make sure that the **RadEditor **has loaded successfully before getting its HTML:   

````C#
if (this.webBrowser1.ReadyState == WebBrowserReadyState.Loading ||          
    this.webBrowser1.ReadyState == WebBrowserReadyState.Uninitialized)  
{          
     MessageBox.Show(  "Please wait for RadEditor to load first."  );          
     return  ;          
}  

````

7\. Register a script function to extract the HTML produced by **RadEditor**:     
   
````C#

string jsFunction =           
            @"function GetEditorHtml()      
            {      
                return $find('RadEditor1').get_html(true);      
            }";             
            
IHTMLDocument doc1 = (IHTMLDocument)this.webBrowser1.Document.DomDocument;             
HTMLWindow2 iHtmlWindow2 = (HTMLWindow2)doc1.Script;            
 

```` 

8\. Register the script on the form:    
   
````C#
iHtmlWindow2.execScript(jsFunction,  "javascript" ); 

````

9\. Finally, call the function to get the editor's text and to show it in a message box:    
   
````C#
try      
{      
     object res =  this .webBrowser1.Document.InvokeScript( "GetEditorHtml" );      
     MessageBox.Show(res ==  null  ?  "null"  : res.ToString(),  this.Text);      
}      
catch (Exception ex)      
{      
     MessageBox.Show(ex.ToString(),  "RadEditor's text: "  +  this.Text);      
}  

```` 

>note A complete solution can be found [here](https://github.com/telerik/winforms-sdk/tree/master/RadEditorInWinFormsApp).
