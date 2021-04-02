---
title: Prepare a HelpFunctions script
page_title: Prepare a HelpFunctions script | TestComplete
description: We will use TestComplete - functional automated testing platform developed by SmartBear Software to automate Telerik UI for WinForms Controls.  
slug: test-complete-prepare-a-help-functions-script
tags: test-complete
published: True
position: 1
---

# Prepare a HelpFunctions script

When you write tests manually you are likely to face many repetitive actions that are performed in different test scenarios. Such actions include: 
* running your application under test 
* selecting an item in RadListView 
* clicking RadGridView filtering button 
* comparing a control region with an expected image 
* etc.

It will save you a lot of time if you write down all those functions in a separate script and reuse them in your future tests. 

Add a new script in your project called **“HelpFunctions”**. Now if you want to add a function that runs TelerikExamples.exe in the upcoming tests you can declare it as follow:

````C#

function RunApplicationTelerikExamples()
{
  Sys["Refresh"]()
  
  process = TestedApps["TelerikExamples"]["Run"]()
  if(!process["Exists"]) 
  {
    Log["Error"]("The process is not started.")   
  }
}

````

This script will run your previously added tested application **“TelerikExamples”** or Log an Error and mark your test as failed if the process fails to run. To add references to other units to the current script unit, you can insert the **USEUNIT** directive to your script. Then you can declare your test as a function itself.

````C#

//USEUNIT HelpFunctions
function RadGridViewExcelLikeFilteringTest()
{
  RunApplicationTelerikExamples()
  process = Sys["Process"]("TelerikExamples")
}

````

This short example demonstrates using **“RunApplicationTelerikExamples()”** function in order to run the application, then creating a variable called **“process”** that is mapped to the process **“TelerikExamples”** itself. 

Later, when we explain how to write a proper test script with Telerik controls, we will talk about other useful functions that can be placed in **“HelpFunctions”** script.