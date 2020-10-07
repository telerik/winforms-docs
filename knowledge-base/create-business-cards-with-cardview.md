---
title: Create Business Cards with CardView  
description: This article shows how you can create business cards with RadCardView
type: how-to
page_title: Create Business Cards with CardView      
slug: create-business-cards-with-cardview
position: 0
tags: cardview, business, card
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2020.3.915|RadCardView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 
## Description

[RadCardView]({%slug winforms/cardview/overview%}) internally uses a [RadLayoutControl]({%slug winforms/layoutcontrol%}) allowing modifications of the layout in the Visual Studio's designer as well as at run-time. This article aims to show different approaches for achieving a layout similar to business cards:

![create-business-cards-with-cardview001](images/create-business-cards-with-cardview001.png)

>note RadCardView uses the Northwind.Employees table as DataSource. 

## Solution 

### Loading the layout from XML

**RadLayoutControl** supports [Save/Load layout]({%slug winforms/layoutcontrol/load-layout%}) functionality. Thus, you can directly load the layout before setting the **DataSource** in the form's constructor:

````C#
public RadForm1()
{
    InitializeComponent();

    this.radCardView1.CardViewItemFormatting += RadCardView1_CardViewItemFormatting;

    this.radCardView1.ItemSize = new System.Drawing.Size(500, 250);
    this.radCardView1.CardTemplate.LoadLayout(@"..\..\layout.xml");
    this.radCardView1.DataSource = this.employeesBindingSource;
}

private void RadCardView1_CardViewItemFormatting(object sender, CardViewItemFormattingEventArgs e)
{
    CardViewItem cardViewItem = e.Item as CardViewItem;
    if (cardViewItem != null)
    {
        if (cardViewItem.FieldName == "Notes")
        {
            cardViewItem.EditorItem.TextWrap = true;
            cardViewItem.EditorItem.AutoEllipsis = true;
        }
        else
        {
            cardViewItem.EditorItem.ResetValue(LightVisualElement.TextWrapProperty, Telerik.WinControls.ValueResetFlags.Local);
        }

        if (cardViewItem.FieldName == "TitleOfCourtesy" || cardViewItem.FieldName == "FirstName" || cardViewItem.FieldName == "LastName")
        {
            cardViewItem.Font = new Font(cardViewItem.Font.FontFamily, 10.5f, FontStyle.Regular);
        }
        else
        {
            Font itemFont = new Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Bold);
            Font editorFont = new Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Regular);

            cardViewItem.Font = itemFont;
            cardViewItem.EditorItem.Font = editorFont;
        }
    }

}


````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler Me.RadCardView1.CardViewItemFormatting, AddressOf RadCardView1_CardViewItemFormatting
    Me.RadCardView1.ItemSize = New System.Drawing.Size(500, 250)

    Me.RadCardView1.CardTemplate.LoadLayout("..\..\layout.xml")
    Me.RadCardView1.DataSource = Me.EmployeesBindingSource
End Sub

Private Sub RadCardView1_CardViewItemFormatting(ByVal sender As Object, ByVal e As CardViewItemFormattingEventArgs)
    Dim cardViewItem As CardViewItem = TryCast(e.Item, CardViewItem)

    If cardViewItem IsNot Nothing Then

        If cardViewItem.FieldName = "Notes" Then
            cardViewItem.EditorItem.TextWrap = True
            cardViewItem.EditorItem.AutoEllipsis = True
        Else
            cardViewItem.EditorItem.ResetValue(LightVisualElement.TextWrapProperty, Telerik.WinControls.ValueResetFlags.Local)
        End If

        If cardViewItem.FieldName = "TitleOfCourtesy" OrElse cardViewItem.FieldName = "FirstName" OrElse cardViewItem.FieldName = "LastName" Then
            cardViewItem.Font = New Font(cardViewItem.Font.FontFamily, 10.5F, FontStyle.Regular)
        Else
            Dim itemFont As Font = New Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Bold)
            Dim editorFont As Font = New Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Regular)
            cardViewItem.Font = itemFont
            cardViewItem.EditorItem.Font = editorFont
        End If
    End If
End Sub


```` 

The content for the XML is:

````XML
<RadLayoutControl TabIndex="0">
  <Items>
    <Telerik.WinControls.UI.CardViewGroupItem FieldName="LastName" Bounds="0, 0, 500, 250" Name="cardViewGroupItem1">
      <Items>
        <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0" FieldName="TitleOfCourtesy" Text="TitleOfCourtesy" Bounds="196, 0, 26, 26" Name="cardViewItem5" MinSize="26, 26" MaxSize="26, 0" />
        <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0" FieldName="Photo" Text="Photo" Bounds="0, 0, 196, 222" Name="cardViewItem15" />
        <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0" FieldName="FirstName" Text="FirstName" Bounds="222, 0, 69, 26" Name="cardViewItem3" MaxSize="70, 0" />
        <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0" FieldName="LastName" Text="LastName" Bounds="291, 0, 201, 26" Name="cardViewItem2" />
        <Telerik.WinControls.UI.LayoutControlTabbedGroup Bounds="196, 26, 296, 196" Name="layoutControlTabbedGroup1">
          <ItemGroups>
            <Telerik.WinControls.UI.CardViewGroupItem Text="Address" Bounds="0, 0, 275, 150" Name="cardViewGroupItem2">
              <Items>
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="Address" TextWrap="True" Text="Address" Bounds="0, 0, 275, 30" Name="cardViewItem8" />
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="City" Text="City" Bounds="0, 30, 275, 30" Name="cardViewItem9" />
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="PostalCode" Text="PostalCode" Bounds="0, 60, 275, 30" Name="cardViewItem11" />
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="Country" Text="Country" Bounds="0, 90, 275, 30" Name="cardViewItem12" />
                <Telerik.WinControls.UI.LayoutControlLabelItem DrawText="False" Bounds="0, 120, 275, 30" Name="layoutControlLabelItem1" />
              </Items>
            </Telerik.WinControls.UI.CardViewGroupItem>
            <Telerik.WinControls.UI.CardViewGroupItem Text="Personal" Bounds="0, 0, 164, 172" Visibility="Collapsed" Name="cardViewGroupItem3">
              <Items>
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="HomePhone" Text="HomePhone" Bounds="0, 0, 156, 26" Name="cardViewItem13" />
                <Telerik.WinControls.UI.CardViewItem TextPosition="Top" TextProportionalSize="0.2" FieldName="Notes" TextWrap="True" Text="Notes" Bounds="0, 52, 156, 112" Name="cardViewItem16" />
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="BirthDate" Text="BirthDate" Bounds="0, 26, 156, 26" Name="cardViewItem6" />
              </Items>
            </Telerik.WinControls.UI.CardViewGroupItem>
            <Telerik.WinControls.UI.CardViewGroupItem Text="Job" Bounds="0, 0, 164, 172" Visibility="Collapsed" Name="cardViewGroupItem4">
              <Items>
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="Title" Text="Title" Bounds="0, 0, 156, 26" Name="cardViewItem4" />
                <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="HireDate" Text="HireDate" Bounds="0, 26, 156, 26" Name="cardViewItem7" />
                <Telerik.WinControls.UI.LayoutControlLabelItem DrawText="False" Bounds="0, 52, 156, 112" Name="layoutControlLabelItem2" />
              </Items>
            </Telerik.WinControls.UI.CardViewGroupItem>
          </ItemGroups>
          <SelectedGroup xsi:type="Telerik.WinControls.UI.CardViewGroupItem" Text="Address" Bounds="0, 0, 275, 150" Name="cardViewGroupItem2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
            <Items>
              <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="Address" TextWrap="True" Text="Address" Bounds="0, 0, 275, 30" Name="cardViewItem8" />
              <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="City" Text="City" Bounds="0, 30, 275, 30" Name="cardViewItem9" />
              <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="PostalCode" Text="PostalCode" Bounds="0, 60, 275, 30" Name="cardViewItem11" />
              <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="Country" Text="Country" Bounds="0, 90, 275, 30" Name="cardViewItem12" />
              <Telerik.WinControls.UI.LayoutControlLabelItem DrawText="False" Bounds="0, 120, 275, 30" Name="layoutControlLabelItem1" />
            </Items>
          </SelectedGroup>
        </Telerik.WinControls.UI.LayoutControlTabbedGroup>
      </Items>
    </Telerik.WinControls.UI.CardViewGroupItem>
  </Items>
  <HiddenItems>
    <Telerik.WinControls.UI.CardViewItem FieldName="EmployeeID" Text="EmployeeID" Bounds="0, 0, 175, 26" Name="cardViewItem1" />
    <Telerik.WinControls.UI.CardViewItem FieldName="Region" Text="Region" Bounds="263, 0, 129, 322" Name="cardViewItem10" />
    <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="ReportsTo" Text="ReportsTo" Bounds="0, 94, 191, 47" Name="cardViewItem17" />
    <Telerik.WinControls.UI.CardViewItem TextProportionalSize="0.3" FieldName="Extension" Text="Extension" Bounds="0, 26, 265, 26" Name="cardViewItem14" />
  </HiddenItems>
</RadLayoutControl>

````

### Building the layout programmatically

````C#
public RadForm1()
{
    InitializeComponent();

    this.radCardView1.CardViewItemFormatting += RadCardView1_CardViewItemFormatting;

    this.radCardView1.ItemSize = new System.Drawing.Size(500, 250); 

    CardViewGroupItem cardViewGroupItem1 = new CardViewGroupItem();
    CardViewItem cardViewItem1 = new CardViewItem();
    CardViewItem cardViewItem2 = new CardViewItem();
    CardViewItem cardViewItem3 = new CardViewItem();
    CardViewItem cardViewItem4 = new CardViewItem();
    CardViewItem cardViewItem5 = new CardViewItem();
    CardViewItem cardViewItem6 = new CardViewItem();
    CardViewItem cardViewItem7 = new CardViewItem();
    CardViewItem cardViewItem8 = new CardViewItem();
    CardViewItem cardViewItem9 = new CardViewItem();
    CardViewItem cardViewItem10 = new CardViewItem();
    CardViewItem cardViewItem11 = new CardViewItem();
    CardViewItem cardViewItem12 = new CardViewItem();
    CardViewItem cardViewItem13 = new CardViewItem();
    CardViewItem cardViewItem14 = new CardViewItem();
    CardViewItem cardViewItem15 = new CardViewItem();
    CardViewItem cardViewItem16 = new CardViewItem();
    CardViewItem cardViewItem17 = new CardViewItem();
    LayoutControlTabbedGroup layoutControlTabbedGroup1 = new LayoutControlTabbedGroup();
    CardViewGroupItem cardViewGroupItem2 = new CardViewGroupItem();
    CardViewGroupItem cardViewGroupItem3 = new CardViewGroupItem();
    CardViewGroupItem cardViewGroupItem4 = new CardViewGroupItem();
    LayoutControlLabelItem layoutControlLabelItem1 = new LayoutControlLabelItem();
    LayoutControlLabelItem layoutControlLabelItem2 = new LayoutControlLabelItem();

    this.radCardView1.CardTemplate.HiddenItems.AddRange(new Telerik.WinControls.RadItem[] {
       cardViewItem1,
       cardViewItem10,
       cardViewItem17,
       cardViewItem14});

    cardViewGroupItem1.Bounds = new System.Drawing.Rectangle(0, 0, 500, 250);
    cardViewGroupItem1.FieldName = "LastName";

    cardViewItem5.Bounds = new System.Drawing.Rectangle(198, 0, 26, 26);
    cardViewItem5.FieldName = "TitleOfCourtesy";
    cardViewItem5.MaxSize = new System.Drawing.Size(26, 0);
    cardViewItem5.MinSize = new System.Drawing.Size(26, 26);
    cardViewItem5.Name = "cardViewItem5";
    cardViewItem5.Text = "TitleOfCourtesy";
    cardViewItem5.TextProportionalSize = 0F;


    cardViewItem15.Bounds = new System.Drawing.Rectangle(0, 0, 198, 222);
    cardViewItem15.FieldName = "Photo";
    cardViewItem15.Name = "cardViewItem15";
    cardViewItem15.Text = "Photo";
    cardViewItem15.TextProportionalSize = 0F;


    cardViewItem3.Bounds = new System.Drawing.Rectangle(224, 0, 70, 26);
    cardViewItem3.FieldName = "FirstName";
    cardViewItem3.MaxSize = new System.Drawing.Size(70, 0);
    cardViewItem3.Name = "cardViewItem3";
    cardViewItem3.Text = "FirstName";
    cardViewItem3.TextProportionalSize = 0F;

    cardViewItem2.Bounds = new System.Drawing.Rectangle(294, 0, 198, 26);
    cardViewItem2.FieldName = "LastName";
    cardViewItem2.Name = "cardViewItem2";
    cardViewItem2.Text = "LastName";
    cardViewItem2.TextProportionalSize = 0F;

    layoutControlTabbedGroup1.Bounds = new System.Drawing.Rectangle(198, 26, 294, 196);
    layoutControlTabbedGroup1.ItemGroups.AddRange(new Telerik.WinControls.RadItem[] {
      cardViewGroupItem2,
      cardViewGroupItem3,
      cardViewGroupItem4});
    layoutControlTabbedGroup1.Name = "layoutControlTabbedGroup1";
    layoutControlTabbedGroup1.SelectedGroup = cardViewGroupItem2;
     
    cardViewItem1.Bounds = new System.Drawing.Rectangle(0, 0, 175, 26);
    cardViewItem1.FieldName = "EmployeeID";
    cardViewItem1.Name = "cardViewItem1";
    cardViewItem1.Text = "EmployeeID";

    cardViewItem10.Bounds = new System.Drawing.Rectangle(263, 0, 129, 322);
    cardViewItem10.FieldName = "Region";
    cardViewItem10.Name = "cardViewItem10";
    cardViewItem10.Text = "Region";

    cardViewItem17.Bounds = new System.Drawing.Rectangle(0, 94, 191, 47);
    cardViewItem17.FieldName = "ReportsTo";
    cardViewItem17.Name = "cardViewItem17";
    cardViewItem17.Text = "ReportsTo";
    cardViewItem17.TextProportionalSize = 0.3F;

    cardViewItem14.Bounds = new System.Drawing.Rectangle(0, 26, 265, 26);
    cardViewItem14.FieldName = "Extension";
    cardViewItem14.Name = "cardViewItem14";
    cardViewItem14.Text = "Extension";
    cardViewItem14.TextProportionalSize = 0.3F;
     
    cardViewGroupItem1.Items.AddRange(new Telerik.WinControls.RadItem[] {
       cardViewItem5,
       cardViewItem15,
       cardViewItem3,
       cardViewItem2,
       layoutControlTabbedGroup1});
    cardViewGroupItem1.Name = "cardViewGroupItem1";
    this.radCardView1.CardTemplate.Items.AddRange(new Telerik.WinControls.RadItem[] {
       cardViewGroupItem1});

    cardViewItem8.Bounds = new System.Drawing.Rectangle(0, 0, 286, 26);
    cardViewItem8.FieldName = "Address";
    cardViewItem8.Name = "cardViewItem8";
    cardViewItem8.Text = "Address";
    cardViewItem8.TextProportionalSize = 0.3F;
    cardViewItem8.TextWrap = true;

    cardViewItem9.Bounds = new System.Drawing.Rectangle(0, 26, 286, 26);
    cardViewItem9.FieldName = "City";
    cardViewItem9.Name = "cardViewItem9";
    cardViewItem9.Text = "City";
    cardViewItem9.TextProportionalSize = 0.3F;

    cardViewItem11.Bounds = new System.Drawing.Rectangle(0, 52, 286, 26);
    cardViewItem11.FieldName = "PostalCode";
    cardViewItem11.Name = "cardViewItem11";
    cardViewItem11.Text = "PostalCode";
    cardViewItem11.TextProportionalSize = 0.3F;

    cardViewItem12.Bounds = new System.Drawing.Rectangle(0, 78, 286, 26);
    cardViewItem12.FieldName = "Country";
    cardViewItem12.Name = "cardViewItem12";
    cardViewItem12.Text = "Country";
    cardViewItem12.TextProportionalSize = 0.3F;

    cardViewGroupItem2.Bounds = new System.Drawing.Rectangle(0, 0, 286, 164);
    cardViewGroupItem2.Items.AddRange(new Telerik.WinControls.RadItem[] {
       cardViewItem8,
       cardViewItem9,
       cardViewItem11,
       cardViewItem12,
       layoutControlLabelItem1});
    cardViewGroupItem2.Name = "cardViewGroupItem2";
    cardViewGroupItem2.Text = "Address";
     
    layoutControlLabelItem1.Bounds = new System.Drawing.Rectangle(0, 104, 286, 60);
    layoutControlLabelItem1.DrawText = false;
    layoutControlLabelItem1.Name = "layoutControlLabelItem1";

    cardViewGroupItem3.Bounds = new System.Drawing.Rectangle(0, 0, 164, 172);
    cardViewGroupItem3.Items.AddRange(new Telerik.WinControls.RadItem[] {
       cardViewItem13,
       cardViewItem16,
       cardViewItem6});
    cardViewGroupItem3.Name = "cardViewGroupItem3";
    cardViewGroupItem3.Text = "Personal";

    cardViewItem13.Bounds = new System.Drawing.Rectangle(0, 0, 156, 26);
    cardViewItem13.FieldName = "HomePhone";
    cardViewItem13.Name = "cardViewItem13";
    cardViewItem13.Text = "HomePhone";
    cardViewItem13.TextProportionalSize = 0.3F;

    cardViewItem16.Bounds = new System.Drawing.Rectangle(0, 52, 156, 112);
    cardViewItem16.FieldName = "Notes";
    cardViewItem16.Name = "cardViewItem16";
    cardViewItem16.Text = "Notes";
    cardViewItem16.TextPosition = Telerik.WinControls.UI.LayoutItemTextPosition.Top;
    cardViewItem16.TextProportionalSize = 0.2F;
    cardViewItem16.TextWrap = true;

    cardViewItem6.Bounds = new System.Drawing.Rectangle(0, 26, 156, 26);
    cardViewItem6.FieldName = "BirthDate";
    cardViewItem6.Name = "cardViewItem6";
    cardViewItem6.Text = "BirthDate";
    cardViewItem6.TextProportionalSize = 0.3F;

    cardViewGroupItem4.Bounds = new System.Drawing.Rectangle(0, 0, 164, 172);
    cardViewGroupItem4.Items.AddRange(new Telerik.WinControls.RadItem[] {
      cardViewItem4,
      cardViewItem7,
      layoutControlLabelItem2});
    cardViewGroupItem4.Name = "cardViewGroupItem4";
    cardViewGroupItem4.Text = "Job";

    cardViewItem4.Bounds = new System.Drawing.Rectangle(0, 0, 156, 26);
    cardViewItem4.FieldName = "Title";
    cardViewItem4.Name = "cardViewItem4";
    cardViewItem4.Text = "Title";
    cardViewItem4.TextProportionalSize = 0.3F;

    cardViewItem7.Bounds = new System.Drawing.Rectangle(0, 26, 156, 26);
    cardViewItem7.FieldName = "HireDate";
    cardViewItem7.Name = "cardViewItem7";
    cardViewItem7.Text = "HireDate";
    cardViewItem7.TextProportionalSize = 0.3F;

    layoutControlLabelItem2.Bounds = new System.Drawing.Rectangle(0, 52, 156, 112);
    layoutControlLabelItem2.DrawText = false;
    layoutControlLabelItem2.Name = "layoutControlLabelItem2";

    this.radCardView1.DataSource = this.employeesBindingSource;
}

private void RadCardView1_CardViewItemFormatting(object sender, CardViewItemFormattingEventArgs e)
{
    CardViewItem cardViewItem = e.Item as CardViewItem;
    if (cardViewItem != null)
    {
        if (cardViewItem.FieldName == "Notes")
        {
            cardViewItem.EditorItem.TextWrap = true;
            cardViewItem.EditorItem.AutoEllipsis = true;
        }
        else
        {
            cardViewItem.EditorItem.ResetValue(LightVisualElement.TextWrapProperty, Telerik.WinControls.ValueResetFlags.Local);
        }

        if (cardViewItem.FieldName == "TitleOfCourtesy" || cardViewItem.FieldName == "FirstName" || cardViewItem.FieldName == "LastName")
        {
            cardViewItem.Font = new Font(cardViewItem.Font.FontFamily, 10.5f, FontStyle.Regular);
        }
        else
        {
            Font itemFont = new Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Bold);
            Font editorFont = new Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Regular);

            cardViewItem.Font = itemFont;
            cardViewItem.EditorItem.Font = editorFont;
        }
    } 
}     

````
````VB.NET
Public Sub New()
    InitializeComponent()
    AddHandler Me.RadCardView1.CardViewItemFormatting, AddressOf RadCardView1_CardViewItemFormatting
    Me.RadCardView1.ItemSize = New System.Drawing.Size(500, 250)

    Dim cardViewGroupItem1 As CardViewGroupItem = New CardViewGroupItem()
    Dim cardViewItem1 As CardViewItem = New CardViewItem()
    Dim cardViewItem2 As CardViewItem = New CardViewItem()
    Dim cardViewItem3 As CardViewItem = New CardViewItem()
    Dim cardViewItem4 As CardViewItem = New CardViewItem()
    Dim cardViewItem5 As CardViewItem = New CardViewItem()
    Dim cardViewItem6 As CardViewItem = New CardViewItem()
    Dim cardViewItem7 As CardViewItem = New CardViewItem()
    Dim cardViewItem8 As CardViewItem = New CardViewItem()
    Dim cardViewItem9 As CardViewItem = New CardViewItem()
    Dim cardViewItem10 As CardViewItem = New CardViewItem()
    Dim cardViewItem11 As CardViewItem = New CardViewItem()
    Dim cardViewItem12 As CardViewItem = New CardViewItem()
    Dim cardViewItem13 As CardViewItem = New CardViewItem()
    Dim cardViewItem14 As CardViewItem = New CardViewItem()
    Dim cardViewItem15 As CardViewItem = New CardViewItem()
    Dim cardViewItem16 As CardViewItem = New CardViewItem()
    Dim cardViewItem17 As CardViewItem = New CardViewItem()
    Dim layoutControlTabbedGroup1 As LayoutControlTabbedGroup = New LayoutControlTabbedGroup()
    Dim cardViewGroupItem2 As CardViewGroupItem = New CardViewGroupItem()
    Dim cardViewGroupItem3 As CardViewGroupItem = New CardViewGroupItem()
    Dim cardViewGroupItem4 As CardViewGroupItem = New CardViewGroupItem()
    Dim layoutControlLabelItem1 As LayoutControlLabelItem = New LayoutControlLabelItem()
    Dim layoutControlLabelItem2 As LayoutControlLabelItem = New LayoutControlLabelItem()
    Me.RadCardView1.CardTemplate.HiddenItems.AddRange(New Telerik.WinControls.RadItem() {cardViewItem1, cardViewItem10, cardViewItem17, cardViewItem14})
    cardViewGroupItem1.Bounds = New System.Drawing.Rectangle(0, 0, 500, 250)
    cardViewGroupItem1.FieldName = "LastName"
    cardViewItem5.Bounds = New System.Drawing.Rectangle(198, 0, 26, 26)
    cardViewItem5.FieldName = "TitleOfCourtesy"
    cardViewItem5.MaxSize = New System.Drawing.Size(26, 0)
    cardViewItem5.MinSize = New System.Drawing.Size(26, 26)
    cardViewItem5.Name = "cardViewItem5"
    cardViewItem5.Text = "TitleOfCourtesy"
    cardViewItem5.TextProportionalSize = 0F
    cardViewItem15.Bounds = New System.Drawing.Rectangle(0, 0, 198, 222)
    cardViewItem15.FieldName = "Photo"
    cardViewItem15.Name = "cardViewItem15"
    cardViewItem15.Text = "Photo"
    cardViewItem15.TextProportionalSize = 0F
    cardViewItem3.Bounds = New System.Drawing.Rectangle(224, 0, 70, 26)
    cardViewItem3.FieldName = "FirstName"
    cardViewItem3.MaxSize = New System.Drawing.Size(70, 0)
    cardViewItem3.Name = "cardViewItem3"
    cardViewItem3.Text = "FirstName"
    cardViewItem3.TextProportionalSize = 0F
    cardViewItem2.Bounds = New System.Drawing.Rectangle(294, 0, 198, 26)
    cardViewItem2.FieldName = "LastName"
    cardViewItem2.Name = "cardViewItem2"
    cardViewItem2.Text = "LastName"
    cardViewItem2.TextProportionalSize = 0F
    layoutControlTabbedGroup1.Bounds = New System.Drawing.Rectangle(198, 26, 294, 196)
    layoutControlTabbedGroup1.ItemGroups.AddRange(New Telerik.WinControls.RadItem() {cardViewGroupItem2, cardViewGroupItem3, cardViewGroupItem4})
    layoutControlTabbedGroup1.Name = "layoutControlTabbedGroup1"
    layoutControlTabbedGroup1.SelectedGroup = cardViewGroupItem2
    cardViewItem1.Bounds = New System.Drawing.Rectangle(0, 0, 175, 26)
    cardViewItem1.FieldName = "EmployeeID"
    cardViewItem1.Name = "cardViewItem1"
    cardViewItem1.Text = "EmployeeID"
    cardViewItem10.Bounds = New System.Drawing.Rectangle(263, 0, 129, 322)
    cardViewItem10.FieldName = "Region"
    cardViewItem10.Name = "cardViewItem10"
    cardViewItem10.Text = "Region"
    cardViewItem17.Bounds = New System.Drawing.Rectangle(0, 94, 191, 47)
    cardViewItem17.FieldName = "ReportsTo"
    cardViewItem17.Name = "cardViewItem17"
    cardViewItem17.Text = "ReportsTo"
    cardViewItem17.TextProportionalSize = 0.3F
    cardViewItem14.Bounds = New System.Drawing.Rectangle(0, 26, 265, 26)
    cardViewItem14.FieldName = "Extension"
    cardViewItem14.Name = "cardViewItem14"
    cardViewItem14.Text = "Extension"
    cardViewItem14.TextProportionalSize = 0.3F
    cardViewGroupItem1.Items.AddRange(New Telerik.WinControls.RadItem() {cardViewItem5, cardViewItem15, cardViewItem3, cardViewItem2, layoutControlTabbedGroup1})
    cardViewGroupItem1.Name = "cardViewGroupItem1"
    Me.RadCardView1.CardTemplate.Items.AddRange(New Telerik.WinControls.RadItem() {cardViewGroupItem1})
    cardViewItem8.Bounds = New System.Drawing.Rectangle(0, 0, 286, 26)
    cardViewItem8.FieldName = "Address"
    cardViewItem8.Name = "cardViewItem8"
    cardViewItem8.Text = "Address"
    cardViewItem8.TextProportionalSize = 0.3F
    cardViewItem8.TextWrap = True
    cardViewItem9.Bounds = New System.Drawing.Rectangle(0, 26, 286, 26)
    cardViewItem9.FieldName = "City"
    cardViewItem9.Name = "cardViewItem9"
    cardViewItem9.Text = "City"
    cardViewItem9.TextProportionalSize = 0.3F
    cardViewItem11.Bounds = New System.Drawing.Rectangle(0, 52, 286, 26)
    cardViewItem11.FieldName = "PostalCode"
    cardViewItem11.Name = "cardViewItem11"
    cardViewItem11.Text = "PostalCode"
    cardViewItem11.TextProportionalSize = 0.3F
    cardViewItem12.Bounds = New System.Drawing.Rectangle(0, 78, 286, 26)
    cardViewItem12.FieldName = "Country"
    cardViewItem12.Name = "cardViewItem12"
    cardViewItem12.Text = "Country"
    cardViewItem12.TextProportionalSize = 0.3F
    cardViewGroupItem2.Bounds = New System.Drawing.Rectangle(0, 0, 286, 164)
    cardViewGroupItem2.Items.AddRange(New Telerik.WinControls.RadItem() {cardViewItem8, cardViewItem9, cardViewItem11, cardViewItem12, layoutControlLabelItem1})
    cardViewGroupItem2.Name = "cardViewGroupItem2"
    cardViewGroupItem2.Text = "Address"
    layoutControlLabelItem1.Bounds = New System.Drawing.Rectangle(0, 104, 286, 60)
    layoutControlLabelItem1.DrawText = False
    layoutControlLabelItem1.Name = "layoutControlLabelItem1"
    cardViewGroupItem3.Bounds = New System.Drawing.Rectangle(0, 0, 164, 172)
    cardViewGroupItem3.Items.AddRange(New Telerik.WinControls.RadItem() {cardViewItem13, cardViewItem16, cardViewItem6})
    cardViewGroupItem3.Name = "cardViewGroupItem3"
    cardViewGroupItem3.Text = "Personal"
    cardViewItem13.Bounds = New System.Drawing.Rectangle(0, 0, 156, 26)
    cardViewItem13.FieldName = "HomePhone"
    cardViewItem13.Name = "cardViewItem13"
    cardViewItem13.Text = "HomePhone"
    cardViewItem13.TextProportionalSize = 0.3F
    cardViewItem16.Bounds = New System.Drawing.Rectangle(0, 52, 156, 112)
    cardViewItem16.FieldName = "Notes"
    cardViewItem16.Name = "cardViewItem16"
    cardViewItem16.Text = "Notes"
    cardViewItem16.TextPosition = Telerik.WinControls.UI.LayoutItemTextPosition.Top
    cardViewItem16.TextProportionalSize = 0.2F
    cardViewItem16.TextWrap = True
    cardViewItem6.Bounds = New System.Drawing.Rectangle(0, 26, 156, 26)
    cardViewItem6.FieldName = "BirthDate"
    cardViewItem6.Name = "cardViewItem6"
    cardViewItem6.Text = "BirthDate"
    cardViewItem6.TextProportionalSize = 0.3F
    cardViewGroupItem4.Bounds = New System.Drawing.Rectangle(0, 0, 164, 172)
    cardViewGroupItem4.Items.AddRange(New Telerik.WinControls.RadItem() {cardViewItem4, cardViewItem7, layoutControlLabelItem2})
    cardViewGroupItem4.Name = "cardViewGroupItem4"
    cardViewGroupItem4.Text = "Job"
    cardViewItem4.Bounds = New System.Drawing.Rectangle(0, 0, 156, 26)
    cardViewItem4.FieldName = "Title"
    cardViewItem4.Name = "cardViewItem4"
    cardViewItem4.Text = "Title"
    cardViewItem4.TextProportionalSize = 0.3F
    cardViewItem7.Bounds = New System.Drawing.Rectangle(0, 26, 156, 26)
    cardViewItem7.FieldName = "HireDate"
    cardViewItem7.Name = "cardViewItem7"
    cardViewItem7.Text = "HireDate"
    cardViewItem7.TextProportionalSize = 0.3F
    layoutControlLabelItem2.Bounds = New System.Drawing.Rectangle(0, 52, 156, 112)
    layoutControlLabelItem2.DrawText = False
    layoutControlLabelItem2.Name = "layoutControlLabelItem2"

    Me.RadCardView1.DataSource = Me.EmployeesBindingSource
End Sub

Private Sub RadCardView1_CardViewItemFormatting(ByVal sender As Object, ByVal e As CardViewItemFormattingEventArgs)
    Dim cardViewItem As CardViewItem = TryCast(e.Item, CardViewItem)

    If cardViewItem IsNot Nothing Then

        If cardViewItem.FieldName = "Notes" Then
            cardViewItem.EditorItem.TextWrap = True
            cardViewItem.EditorItem.AutoEllipsis = True
        Else
            cardViewItem.EditorItem.ResetValue(LightVisualElement.TextWrapProperty, Telerik.WinControls.ValueResetFlags.Local)
        End If

        If cardViewItem.FieldName = "TitleOfCourtesy" OrElse cardViewItem.FieldName = "FirstName" OrElse cardViewItem.FieldName = "LastName" Then
            cardViewItem.Font = New Font(cardViewItem.Font.FontFamily, 10.5F, FontStyle.Regular)
        Else
            Dim itemFont As Font = New Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Bold)
            Dim editorFont As Font = New Font(cardViewItem.Font.FontFamily, cardViewItem.Font.Size, FontStyle.Regular)
            cardViewItem.Font = itemFont
            cardViewItem.EditorItem.Font = editorFont
        End If
    End If
End Sub

````

# See Also

* [CardView]({%slug winforms/cardview/overview%}) 
* [Save/Load Layout in LayoutControl]({%slug winforms/layoutcontrol/load-layout%})





    
   
  
    
 
