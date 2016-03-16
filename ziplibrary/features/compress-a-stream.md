---
title: Compress a stream
page_title: Compress a stream | UI for WinForms Documentation
description: Compress a stream
slug: winforms/ziplibrary/features/compress-a-stream
tags: compress,a,stream
published: True
position: 2
previous_url: ziplibrary-features-compress-a-stream
---

# Compress a stream

Telerik __RadZipLibrary__ can significantly facilitate your efforts in compress a stream, for example to send it over the Internet. The library provides __CompressedStream__ class that is designed to compress and decompress streams.

This article covers the following topics:
      

* [API Overview](#api-overview)

* [Compressing a Stream](#compressing-a-stream)

* [Decompressing a Stream](#decompressing-a-stream)

* [CompressedStream Properties](#compressedstream-properties)

## API Overview

__CompressedStream__ class allows you to compress and decompress a stream. You need to initialize the class using one of the constructor overloads.

* __CompressedStream(Stream baseStream, StreamOperationMode mode, CompressionSettings settings)__

* __CompressedStream(Stream baseStream, StreamOperationMode mode,CompressionSettings settings, bool useCrc32, EncryptionSettings encryptionSettings)__

The parameters accepted by the constructors serve the following functions:

* __Stream baseStream__: A reference to a stream where the compressed result will be written when compressing data or the compressed stream that needs to be decompressed when decompressing data.

* __StreamOperationMode mode__: Specifies the operation mode of the compressed stream – __Write__ for compressing data and __Read__ for decompressing.

* __CompressionSettings settings__: The settings used for the compression. The compression settings can be of type DeflateSettings, LzmaSettings and StoreSettings. You can read more on the topic in the [Compression settings]({%slug winforms/ziplibrary/features/compression-settings%}) article.

* __bool useCrc32__: Indicates whether to use CRC32 (true) or Adler32 (false) checksum algorithm.
      

* __EncryptionSettings encryptionSettings__: Specifies the encryptions settings that will be used. If __null__ value is passed, encryption is not performed. More information on the topic is available in the [Protect ZipArchive]({%slug winforms/ziplibrary/features/protect-ziparchive%}) article.

## Compressing a Stream

You can create a compressed stream by initializing new instance of the __CompressedStream__ class and passing as a parameter the stream in which the compressed data will be written. You need to specify the operation mode to __Write__ and the compression settings that should be used.

{{source=..\SamplesCS\ZipLibrary\CompressStream.cs region=stream}} 
{{source=..\SamplesVB\ZipLibrary\CompressStream.vb region=stream}} 

````C#
            
using (CompressedStream compressedStream = new CompressedStream(outputStream, StreamOperationMode.Write, new DeflateSettings()))
{
    // write to compressed stream
}

````
````VB.NET
Using compressedStream As New CompressedStream(outputStream, StreamOperationMode.Write, New DeflateSettings())
    ' write to compressed stream
End Using

````

{{endregion}} 

If you want to compress a specific stream (*inputStream*), you need to copy it to the compressed stream that you've created.

{{source=..\SamplesCS\ZipLibrary\CompressStream.cs region=copy}} 
{{source=..\SamplesVB\ZipLibrary\CompressStream.vb region=copy}} 

````C#
            
using (CompressedStream compressedStream = new CompressedStream(outputStream, StreamOperationMode.Write, new DeflateSettings()))
{
    inputStream.CopyTo(compressedStream);
    compressedStream.Flush();
}

````
````VB.NET
Using compressedStream As New CompressedStream(outputStream, StreamOperationMode.Write, New DeflateSettings())
    inputStream.CopyTo(compressedStream)
    compressedStream.Flush()
End Using

````

{{endregion}} 

## Decompressing a Stream

Decompressing a stream is just as simple as compressing it. All you need to do is to create new instance of __CompressedStream__ class and pass it the stream from which the compressed data will be extracted, operation mode __Read__, and the compression settings that need to be used.

{{source=..\SamplesCS\ZipLibrary\CompressStream.cs region=copyto}} 
{{source=..\SamplesVB\ZipLibrary\CompressStream.vb region=copyto}} 

````C#
    
using (CompressedStream compressedStream = new CompressedStream(inputStream, StreamOperationMode.Read, new DeflateSettings()))
{
    compressedStream.CopyTo(outputStream);
}

````
````VB.NET
Using compressedStream As New CompressedStream(inputStream, StreamOperationMode.Read, New DeflateSettings())
    compressedStream.CopyTo(outputStream)
End Using

````

{{endregion}} 

## CompressedStream Properties

The CompressedStream class derives from the Stream class and therefore it supports all its properties. However, it also exposes a set of properties  that provide further information about the compressed stream.

* __BaseStream__: Property is of type [Stream](http://msdn.microsoft.com/en-us/library/system.io.stream(v=vs.110).aspx) which obtains the stream that is compressed.

* __Checksum__: Numeric value representing the checksum of the compressed stream.

* __CompressedSize__: The size of the compressed stream.

* __Length__: The uncompressed size of the stream.

# See Also

* [Protect ZipArchive]({%slug winforms/ziplibrary/features/protect-ziparchive%})

* [Compression settings]({%slug winforms/ziplibrary/features/compression-settings%})
