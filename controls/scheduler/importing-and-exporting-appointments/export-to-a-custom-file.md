---
title: Import/Export to a Custom File
page_title: Import/Export to a Custom File - RadScheduler
description: The article describes how the RadScheduler appointments can be exported to a custom file.
slug: winforms/scheduler/importing-and-exporting-appointments/import/export-to-a-custom-file
tags: import/export,to,a,custom,file
published: True
position: 2
previous_url: scheduler-importing-and-exporting-appointments-import-export-to-a-custom-file
---

# Import/Export to a Custom File

In order to import/export the scheduler appointments to a custom file you should:

1\. Create custom classes for import and export:

<snippet id='scheduler-customimporterexporter-importexport-cs' />
<snippet id='scheduler-customimporterexporter-importexport-vb' />



2\. Then you need to pass the instances of these classes to the Import and Export methods of the scheduler:

<snippet id='scheduler-imex-imex-cs' />
<snippet id='scheduler-imex-imex-vb' />



# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})
