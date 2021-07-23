---
title: Reusing the command pattern implemented in TPF
description: Reusing the command pattern implemented in TPF. Check it now!
type: how-to
page_title: Reusing the command pattern implemented in TPF
slug: reusing-the-command-pattern-implemented-in-tpf
res_type: kb
---

|Article relates to|Author|Last modified|  
|----|----|----|----|
|RadControls for WinForms|Nikolay Diyanov|February 15, 2007| 

## How To

Reuse the command pattern implemented in TPF  
   
## Solution 

Here is an overview of the way the Click command is implemented in **RadItem**. Inside **RadItem** there is a public static property registered of type ActionCommand:

````C#
public readonly static ClickCommand ActionCommand;

````
 
then inside the constructor the setup is initiated as follows:
   
````C#
static RadItem()     
{     
ActionCommand = new ClickCommand();     
ActionCommand.Name = "ActionCommand";     
ActionCommand.Text = "This command raises the Click event of a selected RadItem instance.";     
ActionCommand.OwnerType = typeof(RadItem);     
} 

````

As you can see, we expose a static singleton instance of a **ClickCommand** called **ActionCommand**, and we initialize it in the static constructor to have a UI Text " ActionCommand ", a Name that's the same as the field name, and the OwnerType will be set to the defining type, i.e. the RadItem type.  
   
### CommandBindings

What if you want to assign a different keyboard shortcut for that? Every RadItem descendant element has a **CommandBinding** property which you can use to assign new input gestures to existing commands for the scope of that particular instance. The command property is declared static basically there are certain advantages to this, namely you can use only one instance and there is no need to compare command instances.   
   
Let us go through the implementation:   
   
````C#

public class ClickCommand : CommandBase      
{     
public override void Execute(params object[] settings)     
{     
if (settings.Length > 0 &&     
this.CanExecute(settings[0]))     
{     
object parameter = settings[0];     
if (typeof(RadItem).IsAssignableFrom(parameter.GetType()))     
{     
(parameter as RadItem).CallDoClick(EventArgs.Empty);     
}     
base.Execute(settings);     
}     
}     
} 

````  

As you can see, we followed the classical “Command pattern”, thus providing a broad implementation of the **Execute** method - you can provide a series of arguments, and the logic inside it decides what’s what. In this particular implementation (we look at the ActionCommand) there is only one argument - the so called “command context”, or the object instance the command will be executed on.  

All commands are to be derived from the CommandBase class which provides the base to successfully implement commands (all framework processing, design time and type verifications are based on this).


