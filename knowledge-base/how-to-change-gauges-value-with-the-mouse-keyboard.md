---
description: How to change gauge's value with the mouse/keyboard 
title: How to change radial gauge's value with the mouse/keyboard 
description: How to change radial gauge's value with the mouse/keyboard 
type: how-to
page_title: How to change radial gauge's value with the mouse/keyboard 
slug: radialgauge-value-changes
position: 0 
tags: gauge, radialgauge, value, mouse
res_type: kb
---

## Environment
<table>
	<tr>
		<td>Product</td>
		<td>RadRadialGauge for WinForms</td>
	</tr>
</table>


## Description
This article demonstrates a sample approach how to change the value of **RadRadialGauge** by handling user's mouse/keyboard input.
 
## Solution

We will detect when the user either moves the mouse, keeping pressed the left mouse button or presses the up/down arrow keys. The below gif file illustrates the achieved behavior:

![radialgauge-value-changes 001](images/radialgauge-value-changes001.gif)


## Changing the Value with the Mouse

Handle the **MouseMove** event and check whether the left mouse button is pressed. Then, calculate the new gauge's value considering the angle of the current mouse location to the center. 

{{source=..\SamplesCS\KnowledgeBase\GaugeValueChange.cs region=MouseValueChange}} 
{{source=..\SamplesVB\KnowledgeBase\GaugeValueChange.vb region=MouseValueChange}}

````C#
        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            
            this.radRadialGauge1.MouseMove += radRadialGauge1_MouseMove; 
            this.radialGaugeNeedle1.BindValue = true;
        }
        
        private void radRadialGauge1_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == System.Windows.Forms.MouseButtons.Left)
            {
                UpdateValue(e.Location);
            }
        }
        
        private void UpdateValue(Point pointLocation)
        {
            float centerX = this.radRadialGauge1.GaugeElement.GaugeCenter.X + this.radialGaugeNeedle1.TotalTransform.DX;
            float centerY = this.radRadialGauge1.GaugeElement.GaugeCenter.Y + this.radialGaugeNeedle1.TotalTransform.DY;
            PointF center = new PointF(centerX, centerY);
            
            double radian = Math.Atan2(pointLocation.Y - center.Y, pointLocation.X - center.X);
            double angle = radian * (180 / Math.PI);
            if (angle < 0.0)
            {
                angle += 360.0;
            }
            
            float newValue = CalculateValueByAngle(angle, this.radRadialGauge1.RangeStart, this.radRadialGauge1.RangeEnd, this.radRadialGauge1.StartAngle, this.radRadialGauge1.SweepAngle);
            this.radRadialGauge1.Value = Math.Min(newValue, (float)this.radRadialGauge1.RangeEnd);
        }
        
        public float CalculateValueByAngle(double needleAngleDegree, double rangeStart, double rangeEnd, double startAngle, double sweepAngle)
        {
            float value = 0;
            double angleDiff = needleAngleDegree - startAngle;
            if (angleDiff < 0)
            {
                angleDiff += 360;
            }
            double ratio = (angleDiff) / sweepAngle;
            value = (float)(ratio * Math.Abs(rangeEnd - rangeStart) + rangeStart);
            return value;
        }        


````
````VB.NET


````

{{endregion}}

## Changing the Value with the Keyboard

Add a timer to detect whether the up/down arrow key is pressed in order to adjust the value of **RadRadialGauge**. In the **PreviewKeyDown** event you can enable a flag to distinguish which arrow key is pressed. It is necessary to stop the timer when you release the mouse:

{{source=..\SamplesCS\KnowledgeBase\GaugeValueChange.cs region=MouseValueChange}} 
{{source=..\SamplesVB\KnowledgeBase\GaugeValueChange.vb region=MouseValueChange}}

````C#
 Timer timer = new Timer();

        public GaugeValueChange()
        {
            InitializeComponent();

            this.radialGaugeNeedle1.BindValue = true;

            this.radRadialGauge1.PreviewKeyDown += radRadialGauge1_PreviewKeyDown;
            this.radRadialGauge1.KeyUp += radRadialGauge1_KeyUp;
            timer.Tick += timer_Tick;
            timer.Interval = 100;
            timer.Start();
        }

        private void timer_Tick(object sender, EventArgs e)
        {
            float newValue;
            if (isDownArrow)
            {
                newValue = Math.Max(0, this.radRadialGauge1.Value - 1);
                this.radRadialGauge1.Value = newValue;
            }
            else if (isUpArrow)
            {
                newValue = Math.Max(this.radRadialGauge1.Value + 1, (float)this.radRadialGauge1.RangeEnd);
                this.radRadialGauge1.Value += 1;
            }
        }

        private void radRadialGauge1_KeyUp(object sender, KeyEventArgs e)
        {
            isDownArrow = false;
            isUpArrow = false;
            timer.Stop();
        }

        bool isDownArrow = false;
        bool isUpArrow = false;

        private void radRadialGauge1_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            if (e.KeyData == Keys.Down)
            {
                isDownArrow = true;
            }
            else if (e.KeyData == Keys.Up)
            {
                isUpArrow = true;
            }
            timer.Start();
        }      


````
````VB.NET


````

{{endregion}}


# See Also

 * [RadialGauge]({%slug winforms/gauges/radialgauge%})
 * [Getting Started with RadialGauge]({%slug winforms/gauges/radialgauge/getting-started%})

