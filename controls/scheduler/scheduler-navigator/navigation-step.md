---
title: Navigation Step
page_title: Navigation Step - RadScheduler
description: RadScheduler offers the ability to navigate through dates by using day/week/month steps. The step is defined by the developer.
slug: winforms/scheduler/scheduler-navigator/navigation-step
tags: navigation,step
published: True
position: 2
previous_url: scheduler-scheduler-navigator-navigation-step
---

# Navigation Step

RadScheduler offers the ability to navigate through dates by using day/week/month steps. The step is defined by the developer.

>In order for NavigationStep and the NavigationStepType properties to be respected, the __AutomaticNavigation__ property of the RadScheduler needs to be set to __false__.

You can use the following properties to control the Navigation Step behavior:

* __NavigationStepType__ – this property can take the following values: 

    - *Day* – one day navigation; 

    - *Week* – one week navigation; 

    - *Month* – one month navigation. 

* __NavigationStep__ – this property contains the custom step that you have to set. The default value is 1 and the minimum value is 1. The major cases that are supported are: 
    - In [Day view]({%slug winforms/scheduler/views/day-view%}) and [Timeline view]({%slug winforms/scheduler/views/timeline-view%}): 

        + __NavigationStepType__ is *Day*, and __NavigationStep__ is 1 – in this case the view will be moved with a day. If __NavigationStep__ is 2 the view will be moved with 2 days, etc. 


        + __NavigationStepType__ is *Week*, and __NavigationStep__ is 1 – in this case the view will be moved with a week. If __NavigationStep__ is 2 the view will be moved with 2 weeks, etc. 


        + __NavigationStepType__ is *Month*, and __NavigationStep__ is 1 – in this case the view will be moved with a month. If __NavigationStep__ is 2 the view will be moved with 2 months, etc. 

    - In [Month view]({%slug winforms/scheduler/views/month-view%}) and [Week view]({%slug winforms/scheduler/views/week-view%}): 


        + __NavigationStepType__ is *Day*, and __NavigationStep__ is 1 – in this case nothing will be changed in the view. 


        + __NavigationStepType__ is *Week*, and __NavigationStep__ is 1 – in this case the view will be moved with a week. If __NavigationStep__ is 2 the view will be moved with 2 weeks, etc. 


        + __NavigationStepType__ is *Month*, and __NavigationStep__ is 1 – in this case the view will be moved with number of days in the month (if the month has more than 28 days, then the view will be moved with 5 weeks instead of 4). When __NavigationStep__ is set to a value bigger than one then the view will move with the week count in the __NavigationStep__ months. This may lead to some date false positives (aka discrepancies) in the Week and Month views when navigating to PREV/NEXT month. 


# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
