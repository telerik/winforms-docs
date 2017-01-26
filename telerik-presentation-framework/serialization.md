---
title: ControlXmlSerializer
page_title: ControlXmlSerializer | Telerik Presentation Framework
description: Telerik Presentation Framework supports serializing/deserializing entire controls via the ControlXmlSerializer.
slug: winforms/telerik-presentation-framework/touch-support
tags: touch,support
published: True
position: 100
---

# ControlXmlSerializer


The ControlXmlSerializer class allows you to serialize all properties of a given object. This class was created for easily saving and loading the layout of our controls (for example RadGridView and gauge controls). This article demonstrates how you can use this class to serialize your controls. In this particular example you will save the position of all nodes in RadPanorama along with other properties.

#### Save the layout.

{{source=..\SamplesCS\TPF\TPF_XmlSerialization.cs region=SaveControl}} 
{{source=..\SamplesVB\TPF\TPF_XmlSerialization.vb region=SaveControl}}
````C#
private void SavePanoramaLayout(string fileName)
{
    ControlXmlSerializer ser = new ControlXmlSerializer();
    using (XmlTextWriter writer = new XmlTextWriter(fileName, Encoding.UTF8))
    {
        writer.Formatting = Formatting.Indented;
        writer.WriteStartElement("RadPanorama");
        ser.WriteObjectElement(writer, this.radPanorama1);
    }
}

````
````VB.NET
Private Sub SavePanoramaLayout(ByVal fileName As String)
    Dim ser As New ControlXmlSerializer()
    Using writer As New XmlTextWriter(fileName, Encoding.UTF8)
        writer.Formatting = Formatting.Indented
        writer.WriteStartElement("RadPanorama")
        ser.WriteObjectElement(writer, Me.radPanorama1)
    End Using
End Sub

```` 

{{endregion}} 


#### Load the layout.

{{source=..\SamplesCS\TPF\TPF_XmlSerialization.cs region=LoadControl}} 
{{source=..\SamplesVB\TPF\TPF_XmlSerialization.vb region=LoadControl}}
````C#
public void LoadPanoramaLayout(string fileName)
{
    if (!File.Exists(fileName))
    {
        MessageBox.Show("File with layout not found!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
        return;
    }
    using (StreamReader sr = new StreamReader(fileName))
    {
        using (XmlTextReader textReader = new XmlTextReader(sr))
        {
            ControlXmlSerializer ser = new ControlXmlSerializer();
            textReader.Read();
            ser.ReadObjectElement(textReader, this.radPanorama1);
        }
    }
}

````
````VB.NET
Public Sub LoadPanoramaLayout(ByVal fileName As String)
    If Not File.Exists(fileName) Then
        MessageBox.Show("File with layout not found!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error)
        Return
    End If
    Using sr As New StreamReader(fileName)
        Using textReader As New XmlTextReader(sr)
            Dim ser As New ControlXmlSerializer()
            textReader.Read()
            ser.ReadObjectElement(textReader, Me.radPanorama1)
        End Using
    End Using
End Sub

```` 

{{endregion}} 