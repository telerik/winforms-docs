---
title: Using RadWaitingBar to indicate the status of long-running operations
description: Using RadWaitingBar to indicate the status of long-running operations. Check it now!
type: how-to
page_title: Using RadWaitingBar to indicate the status of long-running operations
slug: using-radwaitingbar-to-indicate-the-status-of-long-running-operations
res_type: kb
---

|Product|Author|
|----|----|
|RadWaitingBar for WinForms|Boyko Markov|
 
  
## HOW-TO   

Use RadWaitingBar to indicate the status of long-running operations  
   
## SOLUTION  

The Waiting bar is a very useful control for indicating the status of a long running operation. However, there is a general problem with waiting bars, which relates to using the control on the same thread where the operation is running. Basically the waiting bar does not validate the operation's progress and does not move (seems to be frozen).  
   

The obvious solution is to start the long operation in a new thread. A good example of this can be establishing a telnet session and indicating the process with the waiting bar control.  
   

Do the following:
 
1. Drag and drop a new instance of **RadWaitingBar**  from your toolbox to the form.
2. Drag and drop a new instance of **RadButton** from the toolbox. We will use the button to start our long operation. It will also start our waiting bar.
3. We will start the task in an instance of the TelnetTask class in a new thread by calling the StartTelnetTask method. Here is the source of TelnetTask class: 
 
````C#
public class TelnetTask
{
    public Thread TelnetThread;
  
    public event EventHandler Complete;
  
    public TelnetTask()
    {
    }
  
    public void EstablishSession()
    {
        Telnet Session = new Telnet(this.txtIP.Text, Convert.ToInt16(this.txtPortTest.Text), 1000);
  
        try
        {
            // trying to connect  
            Session.Connect();
        }
        catch (Exception ex)
        {
            // Some code here  
        }
  
        // determine if the object on which this delegate was invoked is a UI thread  
        // if the object is a control, then the object is a UI thread  
        if (this.Complete.Target is System.Windows.Forms.Control)
        {
            // make sure execution is done on the UI thread  
            System.Windows.Forms.Control target = Complete.Target as System.Windows.Forms.Control;
            target.BeginInvoke(this.Complete, new Object[] { });
        }
        else
            // object from the invocation list isn't a UI thread.   
            this.Complete(this, EventArgs.Empty);
    }
  
    public void StartTelnetTask()
    {
        TelnetThread = new Thread(new ThreadStart(this.EstablishSession));
        this.TelnetThread.Start();
    }
}

````
````VB.NET
Public Class TelnetTask
    Public TelnetThread As Thread
    Public Event Complete As EventHandler

    Public Sub New()
    End Sub

    Public Sub EstablishSession()
        Dim Session As Telnet = New Telnet(Me.txtIP.Text, Convert.ToInt16(Me.txtPortTest.Text), 1000)

        Try
            Session.Connect()
        Catch ex As Exception
        End Try

        If TypeOf Me.Complete.Target Is System.Windows.Forms.Control Then
            Dim target As System.Windows.Forms.Control = TryCast(Complete.Target, System.Windows.Forms.Control)
            target.BeginInvoke(Me.Complete, New Object() {})
        Else
            Me.Complete(Me, EventArgs.Empty)
        End If
    End Sub

    Public Sub StartTelnetTask()
        TelnetThread = New Thread(New ThreadStart(AddressOf Me.EstablishSession))
        Me.TelnetThread.Start()
    End Sub
End Class


````

4.Finally, handle the click event of the button as follows:

````C#
private void radButton1_Click(object sender, EventArgs e)
{
    this.radWaitingBar1.StartWaiting();
    TelnetTask task = new TelnetTask();
    task.StartTelnetTask(); 
    task.Complete += new EventHandler(task_Complete);
}

````
````VB.NET
Private Sub radButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
    Me.radWaitingBar1.StartWaiting()
    Dim task As TelnetTask = New TelnetTask()
    task.StartTelnetTask()
    task.Complete += New EventHandler(task_Complete)
End Sub

````

