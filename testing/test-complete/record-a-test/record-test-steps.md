---
title: Record Test Steps
page_title: Record Test Steps | TestComplete
description: We will use TestComplete - functional automated testing platform developed by SmartBear Software to automate Telerik UI for WinForms Controls.  
slug: test-complete-record-test-steps
tags: testcomplete, test, record, winforms
published: True
position: 1 
---

# Record Test Steps

After clicking **Record** button, our Demo Application will launch and based on our sample test plan, you can perform the following actions:

1\.	Click **EXPLORE ALL CONTROLS** Demo Application button.

![Demo_Application_Explore_All_Controls](images/Demo_Application_Explore_All_Controls.png)

2\. Order the controls list alphabetically by pressing the **Alphabetical** toggle button.

![Demo_Application_Alphabetical.png](images/Demo_Application_Alphabetical.png)

3\. Click **Grid View** from the controls list in order to open **RadGridView** examples.

4\. Scroll to the right and click **Excel Like Filtering** example tile.

![Demo_Application_Grid_View_Examples](images/Demo_Application_Grid_View_Examples.png)

5\. Click the filter button in **Country** column, uncheck all countries and check only the first three (Argentina, Austria, Belgium) and click **OK** button.

![Grid_View_Filter_Popup](images/Grid_View_Filter_Popup.png)

6\. Click **Add Check** button in TestComplete in order to open the Checkpoint Wizard. In this wizard you can select a different checkpoint depending on your needs. 

![Test_Complete_Recording](images/Test_Complete_Recording.png)

![Checkpoint_Wizard_Window](images/Checkpoint_Wizard_Window.png)

7\.	Select **Image** and you will be navigated to a Checkpoint Wizard. Click the target button and drag it to a desired object in the tested application, in this case the RadGridView.

![Checkpoint_Wizard_Image](images/Checkpoint_Wizard_Image.png)

8\.	After clicking **Finish** button the current **RadGridView** region will be stored as an image that will be used for comparison every time when the test runs.

9\.	Click **Add Check** button again but this time select **Table or Grid** option in the Checkpoint Wizard. Drag the target button over the **RadGridView** once again in order for TestComplete to scan the **RadGridView** data table and store all of its information in order to verify that data is as expected next time when you run the test.

10\. Click TestComplete **Stop** button in order to stop your recording and create your test.

Running your test will perform all of the steps described so far. After performing the filtering operation, it will validate if **RadGridView** region is the same as the expected image and also it will check if the Table information is correct.

You can learn more about test recording in following the following article by **SmartBear Software** - [Testing Desktop Applications - Tutorial](https://support.smartbear.com/testcomplete/docs/tutorials/getting-started/first-test/desktop/index.html).