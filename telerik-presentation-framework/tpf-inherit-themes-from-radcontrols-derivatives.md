---
title: Inherit themes from RadControls derivatives
page_title: Inherit themes from RadControls derivatives
description: Inherit themes from RadControls derivatives
slug: tpf-inherit-themes-from-radcontrols-derivatives
tags: inherit,themes,from,radcontrols,derivatives
published: True
position: 17
---

# Inherit themes from RadControls derivatives



## Inherit from a RadControl descendant

When you inherit from a __RadControl__ (or any __RadControl__ descendant), the original control themes
        are not automatically inherited. The good thing is that this behavior can be overridden very easily by overriding the __ThemeClassName__ 
          property of the descendant of __RadControl__: 

{{region RadCustomButton}}
	        
	        public class RadCustomButton : RadButton  
	        { 
	            public override string ThemeClassName  
	            { 
	                get 
	                { 
	                    return typeof(RadButton).FullName;  
	                }
	            }
	        }
	    
	{{endregion}}



{{region RadCustomButton}}
	
	    Public Class RadCustomButton
	        Inherits RadButton
	
	        Public Overrides Property ThemeClassName As String
	            Get
	                Return GetType(RadButton).FullName
	            End Get
	            Set(value As String)
	                MyBase.ThemeClassName = value
	            End Set
	        End Property
	    End Class
	
	    #End Region
	
	    #Region "MyRadButtonElement"
	
	    Public Class MyRadButtonElement
	    Inherits RadButtonElement
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RadButtonElement)
	            End Get
	        End Property
	    End Class
	
	    #End Region
	End Class



The example above uses __RadButton__ as a base class. Since the themes depend on the type of the themed class 
        (which is changed when you inherit), using the described override makes base control themes available in the descendant control.

## Inherit from a RadElement descendant

When you inherit from a __RadElement__ descendant (for example __RadButtonElement__), you need to override the
      __ThemeEffectiveType__ property. This will allow you to have the styling applied to the instance of your custom element class:

{{region MyRadButtonElement}}
	        
	        public class MyRadButtonElement : RadButtonElement     
	        { 
	            protected override Type ThemeEffectiveType     
	            { 
	                get    
	                { 
	                    return typeof(RadButtonElement);     
	                }
	            }
	        }
	    
	{{endregion}}



{{region MyRadButtonElement}}
	
	    Public Class MyRadButtonElement
	    Inherits RadButtonElement
	        Protected Overrides ReadOnly Property ThemeEffectiveType() As Type
	            Get
	                Return GetType(RadButtonElement)
	            End Get
	        End Property
	    End Class
	
	    #End Region
	End Class


