---
title: Data Binding
page_title: Data Binding - WinForms SlideView Control
description: Get started with the RadSlideView control.
slug: slideview-data-binding
tags: slideview, bound
published: True
position: 3
---

# Data Binding

**RadSlideView** supports data binding functionality which allows you to navigate through the items inside a collection. The control uses a **BindingSource** object which is populated with the records contained in the applied DataSource collection.

![WinForms SlideView Data Binding](images/slideview-data-binding.gif)

1\. First, set the **BindingSource** property to the desired collection. The navigation arrow buttons iterates the collection but the UI is empty yet. 

2\. Define a template to be used for the visual illustration of the collection and set the **TemplateElement** property of RadSlideView. This is actually the visual element that represents the UI for the current item. 

>note If you have a simple scenario with Image and Text you can use the default TemplateElement (LightVisualElement). For more complex scenarios you can build an elements hierarchy that fits your needs. ([Telerik Presentation Framework - LightVisualElement]({%slug winforms/telerik-presentation-framework/primitives/lightvisualelement%}))

3\. Last, but not least, map each visual element from the applied template with the respective field from the object in the collection. Add a separate **Mapping** for each to the RadSlideView.**Mappings** collection.

>note The mapping is a class used to connect a property from the visual element (Template) to the data bound object that is currently selected. The property type of the element and the data bound object must match. 

>important When the types of the mapped property and the property of the visual element do not match the **MappedPropertyUpdating** event has to be used to convert the value type to the visual element property type. If not converted, the property will not be mapped. In example below the mapped property is of type Integer(Id), but the visual element property is of type String(Text) and in the MappedPropertyUpdating event we convert the value to string type and format the string.
 
{{source=..\SamplesCS\SlideView\SlideViewBinding.cs region=DataBinding}} 
{{source=..\SamplesVB\SlideView\SlideViewBinding.vb region=DataBinding}}

````C#

         private void BindSlideView()
        {
           BindingList<Employee> employees = new BindingList<Employee>();
            employees.Add(new Employee(1, "Laura Callahan", "Inside Sales Coordinator", Properties.Resources.laura));
            employees.Add(new Employee(2, "Michael Suyama", "Sales Representative", Properties.Resources.michael));
            employees.Add(new Employee(1, "Anne Dodsworth", "Sales Manager", Properties.Resources.anne));
            BindingSource bs = new BindingSource();
            bs.DataSource = employees;
            this.radSlideView1.BindingSource = bs;

            GalleryTemplate template = new GalleryTemplate();
            this.radSlideView1.Mappings.Add(new Mapping(template, LightVisualElement.BackgroundImageProperty, nameof(Employee.Photo)));
            this.radSlideView1.Mappings.Add(new Mapping(template.LabelId, LightVisualElement.TextProperty, nameof(Employee.Id)));
            this.radSlideView1.Mappings.Add(new Mapping(template.LabelName, LightVisualElement.TextProperty, nameof(Employee.Name)));
            this.radSlideView1.Mappings.Add(new Mapping(template.LabelTitle, LightVisualElement.TextProperty, nameof(Employee.Title)));
            this.radSlideView1.MappedPropertyUpdating += RadSlideView1_MappedPropertyUpdating;
            this.radSlideView1.TemplateElement = template;

        }

        private void RadSlideView1_MappedPropertyUpdating(object sender, MappedPropertyUpdatingEventArgs e)
        { 
            if (e.PropertyName == nameof(Employee.Id))
            {
                e.Value = $"ID = {e.Value}";
            }
        }

        internal class GalleryTemplate : LightVisualElement
        {
            public StackLayoutElement Panel { get; private set; }

            public StackLayoutElement LabelsPanel { get; private set; }
            public LightVisualElement LabelId { get; private set; }
            public LightVisualElement LabelName { get; private set; }

            public StackLayoutElement ButtonsPanel { get; private set; } 
            public LightVisualElement LabelTitle { get; private set; } 
            public GlyphButtonElement ButtonLike { get; private set; } 

            protected override void CreateChildElements()
            {
                base.CreateChildElements();

                this.BackgroundImageLayout = ImageLayout.Tile;
                this.Panel = new StackLayoutElement()
                {
                    Alignment = ContentAlignment.BottomCenter,
                    Orientation = Orientation.Vertical,
                    Margin = new Padding(30),
                    StretchHorizontally = false,
                    StretchVertically = false,
                    MinSize = new Size(150, 75)
                };
                this.Children.Add(this.Panel);

                this.LabelsPanel = new StackLayoutElement { Orientation = Orientation.Vertical, DrawFill = true, 
                    GradientStyle = GradientStyles.Solid, StretchHorizontally = true, Padding = new Padding(6, 4, 6, 4),
                    BackColor = Color.FromArgb(200, Color.White),
                };
                this.Panel.Children.Add(this.LabelsPanel);

                 Font font = new Font("Segoe UI Semibold", 10f);
                this.LabelId = new LightVisualElement  { Font = font, ForeColor = Color.Black, TextAlignment = ContentAlignment.BottomLeft };
                this.LabelName = new LightVisualElement()  { Font = font, ForeColor = Color.Black, TextAlignment = ContentAlignment.TopLeft };
                this.LabelsPanel.Children.Add(this.LabelId);
                this.LabelsPanel.Children.Add(this.LabelName);

                this.ButtonsPanel = new StackLayoutElement
                {
                    Orientation = Orientation.Horizontal,
                    DrawFill = true,
                    GradientStyle = GradientStyles.Solid,
                    BackColor = Color.FromArgb(200, Color.DarkGray),
                    Padding = new Padding(10, 4, 10, 4),
                    ElementSpacing = 10,
                    StretchHorizontally = true,
                    StretchVertically = true,
                };
                this.Panel.Children.Add(this.ButtonsPanel);

                this.LabelTitle = new LightVisualElement() { Alignment = ContentAlignment.MiddleLeft, 
                    Padding = new Padding(6, 0, 6, 0), StretchHorizontally = false, StretchVertically = false, MinSize = new Size(0, 30) };
                this.LabelTitle.UnbindProperty(RadElement.StretchVerticallyProperty);
                this.LabelTitle.StretchVertically = true;
                this.ButtonsPanel.Children.Add(this.LabelTitle);

                this.ButtonLike = new GlyphButtonElement(TelerikWebUIFont.GlyphHeartOutline);
                this.ButtonLike.Click += this.ButtonLike_Click;
                this.ButtonsPanel.Children.Add(this.ButtonLike); 
 
            }

            private void ButtonLike_Click(object sender, EventArgs e)
            {
                if (sender is RadButtonElement button)
                {
                    if (button.Text == TelerikWebUIFont.GlyphHeart)
                    {
                        button.Text = TelerikWebUIFont.GlyphHeartOutline;
                        button.ResetLocalValue(ForeColorProperty);
                    }
                    else
                    {
                        button.Text = TelerikWebUIFont.GlyphHeart;
                        button.ForeColor = Color.FromArgb(225, 19, 20);
                    }
                }
            }

            internal class GlyphButtonElement : RadButtonElement
            {
                public GlyphButtonElement(string glyph, bool circleShape = false) :
                    base(glyph)
                {
                    if (circleShape)
                    {
                        this.SetThemeValueOverride(ShapeProperty, new CircleShape(), string.Empty);
                    }
                }


                protected override void OnLoaded()
                {
                    base.OnLoaded();

                    Font glyphFont = new Font(ThemeResolutionService.GetCustomFont(ThemeResolutionService.WebComponentsIconsFontName), 12f);
                    this.SetThemeValueOverride(FontProperty, glyphFont, string.Empty, typeof(TextPrimitive));
                    this.Alignment = ContentAlignment.MiddleLeft;
                    this.Padding = new Padding(3, 6, 3, 4);
                    this.StretchHorizontally = false;
                    this.StretchVertically = false;
                    this.MinSize = new Size(30, 30);
                    this.MaxSize = new Size(30, 30);
                    if (this.Shape?.GetType() == typeof(CircleShape))
                    {
                        this.EnableBorderHighlight = false;
                        this.ButtonFillElement.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias;
                    }
                }

                protected override Type ThemeEffectiveType
                {
                    get { return typeof(RadButtonElement); }
                }
            }
        } 

        public class Employee
        {
            public Employee(int _id, string _name, string _title, Bitmap _photo)
            {
                Id = _id;
                Name = _name;
                Title = _title;
                Photo = _photo;
            }

            public int Id { get; set; }
            public string Name { get; set; } 
            public string Title { get; set; } 
            public Image Photo { get; set; }
            
        }
      
````
````VB.NET

    Private Sub BindSlideView()
        Dim employees As BindingList(Of Employee) = New BindingList(Of Employee)()
        employees.Add(New Employee(1, "Laura Callahan", "Inside Sales Coordinator", My.Resources.laura))
        employees.Add(New Employee(2, "Michael Suyama", "Sales Representative", My.Resources.michael))
        employees.Add(New Employee(1, "Anne Dodsworth", "Sales Manager", My.Resources.anne))
        Dim bs As BindingSource = New BindingSource()
        bs.DataSource = employees
        Me.radSlideView1.BindingSource = bs
        Dim template As GalleryTemplate = New GalleryTemplate()
        Me.radSlideView1.Mappings.Add(New Mapping(template, LightVisualElement.BackgroundImageProperty, NameOf(Employee.Photo)))
        Me.radSlideView1.Mappings.Add(New Mapping(template.LabelId, LightVisualElement.TextProperty, NameOf(Employee.Id)))
        Me.radSlideView1.Mappings.Add(New Mapping(template.LabelName, LightVisualElement.TextProperty, NameOf(Employee.Name)))
        Me.radSlideView1.Mappings.Add(New Mapping(template.LabelTitle, LightVisualElement.TextProperty, NameOf(Employee.Title)))
        AddHandler Me.radSlideView1.MappedPropertyUpdating, AddressOf RadSlideView1_MappedPropertyUpdating
        Me.radSlideView1.TemplateElement = template
    End Sub

    Private Sub RadSlideView1_MappedPropertyUpdating(ByVal sender As Object, ByVal e As MappedPropertyUpdatingEventArgs)
        If e.PropertyName = NameOf(Employee.Id) Then
            e.Value = $"ID = {e.Value}"
        End If
    End Sub

    Friend Class GalleryTemplate
        Inherits LightVisualElement

        Public Property Panel As StackLayoutElement
        Public Property LabelsPanel As StackLayoutElement
        Public Property LabelId As LightVisualElement
        Public Property LabelName As LightVisualElement
        Public Property ButtonsPanel As StackLayoutElement
        Public Property LabelTitle As LightVisualElement
        Public Property ButtonLike As GlyphButtonElement

        Protected Overrides Sub CreateChildElements()
            MyBase.CreateChildElements()
            Me.BackgroundImageLayout = ImageLayout.Tile
            Me.Panel = New StackLayoutElement() With {
                .Alignment = ContentAlignment.BottomCenter,
                .Orientation = Orientation.Vertical,
                .Margin = New Padding(30),
                .StretchHorizontally = False,
                .StretchVertically = False,
                .MinSize = New Size(150, 75)
            }
            Me.Children.Add(Me.Panel)
            Me.LabelsPanel = New StackLayoutElement With {
                .Orientation = Orientation.Vertical,
                .DrawFill = True,
                .GradientStyle = GradientStyles.Solid,
                .StretchHorizontally = True,
                .Padding = New Padding(6, 4, 6, 4),
                .BackColor = Color.FromArgb(200, Color.White)
            }
            Me.Panel.Children.Add(Me.LabelsPanel)
            Dim font As Font = New Font("Segoe UI Semibold", 10.0F)
            Me.LabelId = New LightVisualElement With {
                .Font = font,
                .ForeColor = Color.Black,
                .TextAlignment = ContentAlignment.BottomLeft
            }
            Me.LabelName = New LightVisualElement() With {
                .Font = font,
                .ForeColor = Color.Black,
                .TextAlignment = ContentAlignment.TopLeft
            }
            Me.LabelsPanel.Children.Add(Me.LabelId)
            Me.LabelsPanel.Children.Add(Me.LabelName)
            Me.ButtonsPanel = New StackLayoutElement With {
                .Orientation = Orientation.Horizontal,
                .DrawFill = True,
                .GradientStyle = GradientStyles.Solid,
                .BackColor = Color.FromArgb(200, Color.DarkGray),
                .Padding = New Padding(10, 4, 10, 4),
                .ElementSpacing = 10,
                .StretchHorizontally = True,
                .StretchVertically = True
            }
            Me.Panel.Children.Add(Me.ButtonsPanel)
            Me.LabelTitle = New LightVisualElement() With {
                .Alignment = ContentAlignment.MiddleLeft,
                .Padding = New Padding(6, 0, 6, 0),
                .StretchHorizontally = False,
                .StretchVertically = False,
                .MinSize = New Size(0, 30)
            }
            Me.LabelTitle.UnbindProperty(RadElement.StretchVerticallyProperty)
            Me.LabelTitle.StretchVertically = True
            Me.ButtonsPanel.Children.Add(Me.LabelTitle)
            Me.ButtonLike = New GlyphButtonElement(TelerikWebUIFont.GlyphHeartOutline)
            AddHandler Me.ButtonLike.Click, AddressOf Me.ButtonLike_Click
            Me.ButtonsPanel.Children.Add(Me.ButtonLike)
        End Sub

        Private Sub ButtonLike_Click(ByVal sender As Object, ByVal e As EventArgs)
            Dim button As RadButtonElement = TryCast(sender, RadButtonElement)

            If button IsNot Nothing Then

                If button.Text = TelerikWebUIFont.GlyphHeart Then
                    button.Text = TelerikWebUIFont.GlyphHeartOutline
                    button.ResetLocalValue(ForeColorProperty)
                Else
                    button.Text = TelerikWebUIFont.GlyphHeart
                    button.ForeColor = Color.FromArgb(225, 19, 20)
                End If
            End If
        End Sub

        Friend Class GlyphButtonElement
            Inherits RadButtonElement

            Public Sub New(ByVal glyph As String, ByVal Optional circleShape As Boolean = False)
                MyBase.New(glyph)

                If circleShape Then
                    Me.SetThemeValueOverride(ShapeProperty, New CircleShape(), String.Empty)
                End If
            End Sub

            Protected Overrides Sub OnLoaded()
                MyBase.OnLoaded()
                Dim glyphFont As Font = New Font(ThemeResolutionService.GetCustomFont(ThemeResolutionService.WebComponentsIconsFontName), 12.0F)
                Me.SetThemeValueOverride(FontProperty, glyphFont, String.Empty, GetType(TextPrimitive))
                Me.Alignment = ContentAlignment.MiddleLeft
                Me.Padding = New Padding(3, 6, 3, 4)
                Me.StretchHorizontally = False
                Me.StretchVertically = False
                Me.MinSize = New Size(30, 30)
                Me.MaxSize = New Size(30, 30)

                If Me.Shape?.[GetType]() = GetType(CircleShape) Then
                    Me.EnableBorderHighlight = False
                    Me.ButtonFillElement.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.AntiAlias
                End If
            End Sub

            Protected Overrides ReadOnly Property ThemeEffectiveType As Type
                Get
                    Return GetType(RadButtonElement)
                End Get
            End Property

        End Class

    End Class

    Public Class Employee
        Public Sub New(ByVal _id As Integer, ByVal _name As String, ByVal _title As String, ByVal _photo As Bitmap)
            Id = _id
            Name = _name
            Title = _title
            Photo = _photo
        End Sub

        Public Property Id As Integer
        Public Property Name As String
        Public Property Title As String
        Public Property Photo As Image
    End Class
 
```` 

{{endregion}}

 

## See Also

* [Structure]({%slug slideview-structure%})