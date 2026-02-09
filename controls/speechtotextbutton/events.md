---
title: Events
page_title: WinForms SpeechToTextButton Documentation - Events
description: Learn different Events of the Telerik SpeechToTextButton for WinForms.
position: 10
tags: speech to text, button, events, winforms
slug: speechtotextbutton-events
---

# WinForms SpeechToTextButton Events

The RadSpeechToTextButton emits a set of events that allow you to configure the component's behavior in response to speech recognition.

The RadSpeechToTextButton exposes the following events:

* `SpeechRecognized`&mdash;Raised when the speech recognition is successful and the recognized text is available. The `SpeechRecognized` event handler receives two parameters:
	* The `sender` argument which is of type `object` but can be cast to `RadSpeechToTextButton`.
	* A `SpeechRecognizerSpeechRecognizedEventArgs` argument which has a reference to the:
		* `FullText` (`string`) property that contains the current full text recognized from the speech input from the beginning of the current listening session.
		* `FullTextConfidenceScore` property that indicates the confidence level of the recognition. The value is between 0 and 1, indicating how confident the speech-to-text transcription is. If the value is -1, a confidence score could not be provided.

* `ErrorOccurred`&mdash;Raised when an error occurs during the speech recognition process. The `ErrorOccurred` event handler receives two parameters:
	* The `sender` argument which is of type `object` but can be cast to `RadSpeechToTextButton`.
	* A `SpeechRecognizerErrorOccurredEventArgs` argument which has a reference to the:
		* `Message` (`string`) property that contains the error message describing the issue that occurred during speech recognition.
		* `Exception` (`System.Exception`) property that contains the exception associated with the speech recognizer error, if any.
		* `Handled` (`bool`) property that determines whether the error has been handled. Set this to `true` to prevent the default error handling behavior.

* `StateChanged`&mdash;Raised when the state of the speech recognizer changes. The `StateChanged` event handler receives two parameters:
	* The `sender` argument which is of type `object` but can be cast to `RadSpeechToTextButton`.
	* An `System.EventArgs`

## Examle: Handling Speech Recognition Errors

To handle errors related to the speech recognition service, use the `ErrorOccurred` event. The `SpeechRecognizerErrorOccurredEventArgs` provide information about the error message via the `Message` and `Exception` properties.

#### Using ErrorOccurred event handler

````C#
private void radSpeechToTextButton1_ErrorOccurred(object sender, SpeechRecognizerErrorOccurredEventArgs e)
{
    e.Handled = true;
    string errorMessage = e.Message;
    Exception exception = e.Exception;
    RadMessageBox.Show("Error: " + errorMessage, "Speech Recognition Error", MessageBoxButtons.OK, RadMessageIcon.Error);
}

````
````VB.NET
Private Sub radSpeechToTextButton1_ErrorOccurred(sender As Object, e As SpeechRecognizerErrorOccurredEventArgs)
    e.Handled = True
    Dim errorMessage As String = e.Message
    Dim exception As Exception = e.Exception
    RadMessageBox.Show("Error: " + errorMessage, "Speech Recognition Error", MessageBoxButtons.OK, RadMessageIcon.Error)
End Sub

````
