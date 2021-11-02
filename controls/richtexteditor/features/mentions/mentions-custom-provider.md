---
title: Custom Mention Provider 
page_title: Custom Mention Provider | RadRichTextEditor
description: Check how to create a Custom Mention Provider in the RadRichTextEditor control.
slug: richtexteditor-features-mentions-custom-provider
tags: mentions, suggestions, autocomplete, automatic, docx, richtexteditor
published: True
position: 1 
---

# Using Custom Mention Provider

You can implement your own mention provider that enables you to visualize any object as a suggestion of the mentions drop-down list. You should perform the following steps to enable RadRichTextEditor to visualize suggestions for custom objects:

1\. Define the custom object (mention item)

This object should implement **INotifyPropertyChanged** so it can be later used in the data template for the mention item.

#### Example 1: Custom mention item

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=MentionItem}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=MentionItem}}

````C#

public class OrganizationInfo : INotifyPropertyChanged
{
    private string name;
    private string abbreviation;

    public string Name
    {
        get
        {
            return this.name;
        }
        set
        {
            if (this.name != value)
            {
                this.name = value;
                this.OnPropertyChanged("Name");
            }
        }
    }

    public string Abbreviation
    {
        get
        {
            return this.abbreviation;
        }
        set
        {
            if (this.abbreviation != value)
            {
                this.abbreviation = value;
                this.OnPropertyChanged("Abbreviation");
            }
        }
    }

    public override string ToString()
    {
        return this.Name;
    }

    /// <summary> 
    /// Occurs when a property value changes. 
    /// </summary> 
    public event PropertyChangedEventHandler PropertyChanged;

    private void OnPropertyChanged(string propertyName)
    {
        if (this.PropertyChanged != null)
        {
            this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}

````
````VB.NET

Public Class OrganizationInfo
    Implements INotifyPropertyChanged

    Private _name As String
    Private _abbreviation As String

    Public Property Name As String
        Get
            Return Me._name
        End Get
        Set(ByVal value As String)

            If Me._name <> value Then
                Me._name = value
                Me.OnPropertyChanged("Name")
            End If
        End Set
    End Property

    Public Property Abbreviation As String
        Get
            Return Me._abbreviation
        End Get
        Set(ByVal value As String)

            If Me._abbreviation <> value Then
                Me._abbreviation = value
                Me.OnPropertyChanged("Abbreviation")
            End If
        End Set
    End Property

    Public Overrides Function ToString() As String
        Return Me.Name
    End Function

    Public Event PropertyChanged As PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged

    Private Sub OnPropertyChanged(ByVal propertyName As String)
        RaiseEvent PropertyChanged(Me, New PropertyChangedEventArgs(propertyName))
    End Sub
End Class

````

{{endregion}}

2\. Implement a custom mention provider

#### Example 2: Custom mention provider

This is done by inheriting the **MentionProviderBase&lt;T&gt;** class where **T** is the mention item. You should implement the **InsertItem** and **DetermineItemVisibility** methods. For more information about them, check the Customize the Insert Action and Customize the Filtering sections.

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=OrganizationProvider}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=OrganizationProvider}}

````C#

public class OrganizationMentionProvider : MentionProviderBase<OrganizationInfo>
{
    public override bool DetermineItemVisibility(OrganizationInfo item, string currentMentionText)
    {
        if (string.IsNullOrEmpty(currentMentionText))
        {
            return true;
        }
        else if (item == null || string.IsNullOrEmpty(item.Name))
        {
            return false;
        }
        else
        {
            string text = currentMentionText.ToUpperInvariant();
            return item.Name.ToUpperInvariant().Contains(text) ||
                item.Abbreviation.ToUpperInvariant().StartsWith(text);
        }
    }

    public override void InsertItem(RadDocument document, OrganizationInfo item)
    {
        if (item != null)
        {
            RadDocumentEditor editor = new RadDocumentEditor(document);
            editor.Insert(item.Name);
        }
    }
}

````
````VB.NET

Public Class OrganizationMentionProvider
    Inherits MentionProviderBase(Of OrganizationInfo)

    Public Overrides Function DetermineItemVisibility(ByVal item As OrganizationInfo, ByVal currentMentionText As String) As Boolean
        If String.IsNullOrEmpty(currentMentionText) Then
            Return True
        ElseIf item Is Nothing OrElse String.IsNullOrEmpty(item.Name) Then
            Return False
        Else
            Dim text As String = currentMentionText.ToUpperInvariant()
            Return item.Name.ToUpperInvariant().Contains(text) OrElse item.Abbreviation.ToUpperInvariant().StartsWith(text)
        End If
    End Function

    Public Overrides Sub InsertItem(ByVal document As RadDocument, ByVal item As OrganizationInfo)
        If item IsNot Nothing Then
            Dim editor As RadDocumentEditor = New RadDocumentEditor(document)
            editor.Insert(item.Name)
        End If
    End Sub
End Class

````

{{endregion}}

3\. Implement a data template for the custom mention provider

The usage of a custom object requires also a **DataTemplate** for it. This data template is used to instruct RadRichTextEditor how the item should be visualized in the mentions drop-down. You should set the **visualType** and **dataType** property of the DataTemplate to target the type of the mention item.

The mentions dialog internally uses a **RadListControl**. Hence, you can construct custom visual items if there is a specific design to be followed: [Custom Visual Items in ListControl]({%slug winforms/dropdown-listcontrol-and-checkeddropdownlist/listcontrol/customizing-items-(visual-appearance)%})

>note If more than one DataTemplate have the same DataType exception of type InvalidOperationException is thrown with a message “This collection expects unique data types for every DataTemplate!”.

#### Example 3: DataTemplate for the custom mention item

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=VisualMentionItem}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=VisualMentionItem}}

````C#
public class OrganizationInfoVisualItem : RadListVisualItem
{
    private StackLayoutElement verticalStackLayout;
    private LightVisualElement nameElement;
    private Font nameFont = new Font("Segoe UI", 9, FontStyle.Bold);
    private LightVisualElement abbreviationElement;
    private Font abbreviationFont = new Font("Segoe UI", 9, FontStyle.Regular);

    protected override Type ThemeEffectiveType
    {
        get
        {
            return typeof(RadListVisualItem);
        }
    }

    protected override void CreateChildElements()
    {
        base.CreateChildElements();

        this.verticalStackLayout = new StackLayoutElement();
        this.verticalStackLayout.Orientation = Orientation.Vertical;
        this.verticalStackLayout.StretchHorizontally = true;
        this.verticalStackLayout.StretchVertically = false;
        this.verticalStackLayout.ShouldHandleMouseInput = false;
        this.Children.Add(this.verticalStackLayout);

        this.nameElement = new LightVisualElement();
        this.nameElement.StretchVertically = false;
        this.nameElement.TextAlignment = ContentAlignment.MiddleLeft;
        this.nameElement.NotifyParentOnMouseInput = true;
        this.nameElement.TextWrap = true;
        this.nameElement.ShouldHandleMouseInput = false;
        this.verticalStackLayout.Children.Add(this.nameElement);

        this.abbreviationElement = new LightVisualElement();
        this.abbreviationElement.StretchVertically = false;
        this.abbreviationElement.TextAlignment = ContentAlignment.MiddleLeft;
        this.abbreviationElement.NotifyParentOnMouseInput = true;
        this.abbreviationElement.TextWrap = true;
        this.abbreviationElement.ShouldHandleMouseInput = false;
        this.verticalStackLayout.Children.Add(this.abbreviationElement);
    }

    protected override void SynchronizeProperties()
    {
        base.SynchronizeProperties();

        this.DrawText = false;

        OrganizationInfo infoItem = this.Data.DataBoundItem as OrganizationInfo;
        if (infoItem == null)
        {
            return;
        }

        this.nameElement.Text = infoItem.Name;
        this.nameElement.Font = this.nameFont;

        this.abbreviationElement.Text = $"({infoItem.Abbreviation})";
        this.abbreviationElement.Font = this.abbreviationFont;
    }
}

````
````VB.NET

Public Class OrganizationInfoVisualItem
    Inherits RadListVisualItem

    Private verticalStackLayout As StackLayoutElement
    Private nameElement As LightVisualElement
    Private nameFont As Font = New Font("Segoe UI", 9, FontStyle.Bold)
    Private abbreviationElement As LightVisualElement
    Private abbreviationFont As Font = New Font("Segoe UI", 9, FontStyle.Regular)

    Protected Overrides ReadOnly Property ThemeEffectiveType As Type
        Get
            Return GetType(RadListVisualItem)
        End Get
    End Property

    Protected Overrides Sub CreateChildElements()
        MyBase.CreateChildElements()
        Me.verticalStackLayout = New StackLayoutElement()
        Me.verticalStackLayout.Orientation = Orientation.Vertical
        Me.verticalStackLayout.StretchHorizontally = True
        Me.verticalStackLayout.StretchVertically = False
        Me.verticalStackLayout.ShouldHandleMouseInput = False
        Me.Children.Add(Me.verticalStackLayout)
        Me.nameElement = New LightVisualElement()
        Me.nameElement.StretchVertically = False
        Me.nameElement.TextAlignment = ContentAlignment.MiddleLeft
        Me.nameElement.NotifyParentOnMouseInput = True
        Me.nameElement.TextWrap = True
        Me.nameElement.ShouldHandleMouseInput = False
        Me.verticalStackLayout.Children.Add(Me.nameElement)
        Me.abbreviationElement = New LightVisualElement()
        Me.abbreviationElement.StretchVertically = False
        Me.abbreviationElement.TextAlignment = ContentAlignment.MiddleLeft
        Me.abbreviationElement.NotifyParentOnMouseInput = True
        Me.abbreviationElement.TextWrap = True
        Me.abbreviationElement.ShouldHandleMouseInput = False
        Me.verticalStackLayout.Children.Add(Me.abbreviationElement)
    End Sub

    Protected Overrides Sub SynchronizeProperties()
        MyBase.SynchronizeProperties()
        Me.DrawText = False
        Dim infoItem As OrganizationInfo = TryCast(Me.Data.DataBoundItem, OrganizationInfo)

        If infoItem Is Nothing Then
            Return
        End If

        Me.nameElement.Text = infoItem.Name
        Me.nameElement.Font = Me.nameFont
        Me.abbreviationElement.Text = $"({infoItem.Abbreviation})"
        Me.abbreviationElement.Font = Me.abbreviationFont
    End Sub
End Class

````

{{endregion}}

4\. Register the mention provider with its mention character and the new data template

After the prerequisites are completed, you should set the new members to the **MentionContext** property of RadRichTextEditor.

#### Add the provider and the data template to the MentionContext

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=ApplyProvider}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=ApplyProvider}}

````C#
OrganizationMentionProvider organizationMentionProvider = new OrganizationMentionProvider();
organizationMentionProvider.MentionCharacter = '#';

List<OrganizationInfo> organizations = new List<OrganizationInfo>()
{
    new OrganizationInfo(){ Name="United Nations Organization" , Abbreviation="UN"},
    new OrganizationInfo(){ Name="United Nations Children’s Fund" , Abbreviation="UNICEF"},
    new OrganizationInfo(){ Name="World Health Organization" , Abbreviation="WHO"},
    new OrganizationInfo(){ Name="United Nations Education Scientific & Cultural Organization" , Abbreviation="UNESCO"},
    new OrganizationInfo(){ Name="World Wide Fund for Nature" , Abbreviation="WWF"}
};

organizationMentionProvider.ItemsSource = organizations;
this.radRichTextEditor1.RichTextBoxElement.MentionContext.Providers.Add(organizationMentionProvider);

DataTemplate template = new DataTemplate(visualType: typeof(OrganizationInfoVisualItem),
                                           dataType: typeof(OrganizationInfo));
this.radRichTextEditor1.RichTextBoxElement.MentionContext.Templates.Add(template);

````
````VB.NET

Dim organizationMentionProvider As OrganizationMentionProvider = New OrganizationMentionProvider()
organizationMentionProvider.MentionCharacter = "#"c
Dim organizations As List(Of OrganizationInfo) = New List(Of OrganizationInfo)() From {
    New OrganizationInfo() With {
        .Name = "United Nations Organization",
        .Abbreviation = "UN"
    },
    New OrganizationInfo() With {
        .Name = "United Nations Children’s Fund",
        .Abbreviation = "UNICEF"
    },
    New OrganizationInfo() With {
        .Name = "World Health Organization",
        .Abbreviation = "WHO"
    },
    New OrganizationInfo() With {
        .Name = "United Nations Education Scientific & Cultural Organization",
        .Abbreviation = "UNESCO"
    },
    New OrganizationInfo() With {
        .Name = "World Wide Fund for Nature",
        .Abbreviation = "WWF"
    }
}
organizationMentionProvider.ItemsSource = organizations
Me.radRichTextEditor1.RichTextBoxElement.MentionContext.Providers.Add(organizationMentionProvider)
Dim template As DataTemplate = New DataTemplate(visualType:=GetType(OrganizationInfoVisualItem), dataType:=GetType(OrganizationInfo))
Me.radRichTextEditor1.RichTextBoxElement.MentionContext.Templates.Add(template)

````

{{endregion}}

#### Custom mentions

![richtexteditor-features-mentions-custom-provider001](images/richtexteditor-features-mentions-custom-provider001.gif)

## Customize the Insert Action

You can implement your own logic determining what and how it is being inserted into the document when the users select an item from the suggestions. You might need to customize the insert logic of **PersonMentionProvider** or provide the one for your custom provider. This is achieved by creating a custom implementation of a provider and overriding the **InsertItem** method. In the following you can see how the insert action of a **CustomPersonMentionProvider** is implemented - it inserts only the name of the person instead of adding the mention character and a hyperlink with the person's email.

#### Custom insert action

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=CustomInsert}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=CustomInsert}}

````C#
public class CustomPersonMentionProvider : PersonMentionProvider
{
    public override void InsertItem(RadDocument document, PersonMentionItem item)
    {
        if (item != null)
        {
            RadDocumentEditor editor = new RadDocumentEditor(document);
            editor.Insert(item.Name);
        }
    }
}

````
````VB.NET
Public Class CustomPersonMentionProvider
    Inherits PersonMentionProvider

    Public Overrides Sub InsertItem(ByVal document As RadDocument, ByVal item As PersonMentionItem)
        If item IsNot Nothing Then
            Dim editor As RadDocumentEditor = New RadDocumentEditor(document)
            editor.Insert(item.Name)
        End If
    End Sub
End Class

````

{{endregion}}

![richtexteditor-features-mentions-custom-provider002](images/richtexteditor-features-mentions-custom-provider002.gif)

## Customize the Filtering

After typing the mention character in the beginning of a span, the drop-down menu with suggestions shows. If the user continues to type, the list of suggestions is filtered. You can control how the items from the source collection are filtered by overriding the **DetermineItemVisibility** method in the concrete mention provider you are using.

The example shows how to implement filtering that matches only the items that start with the content inserted by the customer no matter of their casing.

#### Custom filtering

{{source=..\SamplesCS\RichTextEditor\Features\Mentions.cs region=Filtering}} 
{{source=..\SamplesVB\RichTextEditor\Features\Mentions.vb region=Filtering}}

````C#

public class MyFilterPersonMentionProvider : PersonMentionProvider
{
    public override bool DetermineItemVisibility(PersonMentionItem item, string currentMentionText)
    {
        if (string.IsNullOrEmpty(currentMentionText))
        {
            return true;
        }
        else if (item == null || string.IsNullOrEmpty(item.Name))
        {
            return false;
        }
        else
        {
            return item.Name.ToUpperInvariant().StartsWith(currentMentionText.ToUpperInvariant());
        }
    }
}
 

````
````VB.NET

Public Class MyFilterPersonMentionProvider
    Inherits PersonMentionProvider

    Public Overrides Function DetermineItemVisibility(ByVal item As PersonMentionItem, ByVal currentMentionText As String) As Boolean
        If String.IsNullOrEmpty(currentMentionText) Then
            Return True
        ElseIf item Is Nothing OrElse String.IsNullOrEmpty(item.Name) Then
            Return False
        Else
            Return item.Name.ToUpperInvariant().StartsWith(currentMentionText.ToUpperInvariant())
        End If
    End Function
End Class

````

{{endregion}}

![richtexteditor-features-mentions-custom-provider003](images/richtexteditor-features-mentions-custom-provider003.gif)

## Using Multiple Mention Providers

Through the **MentionContext**, you can register as many providers as you need and invoke their lists of items through the associated mention character.

![richtexteditor-features-mentions-custom-provider004](images/richtexteditor-features-mentions-custom-provider004.gif)