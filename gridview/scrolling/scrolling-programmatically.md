---
title: Scrolling Programmatically
page_title: Scrolling Programmatically
description: Scrolling Programmatically
slug: gridview-scrolling-scrolling-programmatically
tags: scrolling,programmatically
published: True
position: 1
---

# Scrolling Programmatically



## 
        Scrolling programmatically
      

You can scroll programmatically using the following functions:

#### __[C#] ScrollTo__

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=ScrollTo}}
	            this.radGridView1.TableElement.ScrollTo(5, 4);
	{{endregion}}



#### __[VB.NET] ScrollTo__

{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=ScrollTo}}
	        Me.RadGridView1.TableElement.ScrollTo(5, 4)
	{{endregion}}



#### __[C#] ScrollToColumn__

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=Column}}
	            radGridView1.TableElement.ScrollToColumn(3);
	{{endregion}}



#### __[VB.NET] ScrollToColumn__

{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=Column}}
	        RadGridView1.TableElement.ScrollToColumn(3)
	{{endregion}}



#### __[C#] ScrollToRow__

{{source=..\SamplesCS\GridView\Scrolling\Scrolling.cs region=Row}}
	            radGridView1.TableElement.ScrollToRow(100);
	{{endregion}}



#### __[VB.NET] ScrollToRow__

{{source=..\SamplesVB\GridView\Scrolling\Scrolling.vb region=Row}}
	        RadGridView1.TableElement.ScrollToRow(100)
	{{endregion}}



## 
        Properties
      

The following properties are useful when you need to control the scrolling functionality:

* __EnableFastScrolling__ - controls the fast scrolling mode.
            

* __EnableKineticScrolling__ - controls the kinetic scrolling function.
            

* __UseScrollbarsInHierarchy__ - enable or disable the dedicated vertical scrollbars in hierarchy.
            

# See Also

 * [Scrolling Support]({%slug gridview-end-user-capabilities-printing-support-scrolling%})
