# BaseChart



### FlBorderData
|PropName		|Description	|default value|
|:---------------|:---------------|:-------|
|show| determines to show or hide the border	|true|
|border| [Border](https://api.flutter.dev/flutter/painting/Border-class.html) details that determines which border should be drawn with which color| Border.all(color: Colors.black, width: 1.0, style: BorderStyle.solid)|



### FlTitlesData
|PropName		|Description	|default value|
|:---------------|:---------------|:-------|
|show| determines to show or hide the titles Around the chart|true|
|leftTitles| a [SideTitles](#SideTitles) that holds data to draw left titles | SideTitles(reservedSize: 40, showTitles: true)|
|topTitles| a [SideTitles](#SideTitles) that holds data to draw top titles |SideTitles(reservedSize: 6)|
|rightTitles| a [SideTitles](#SideTitles) that holds data to draw right titles |SideTitles(reservedSize: 40,)|
|bottomTitles| a [SideTitles](#SideTitles) that holds data to draw bottom titles |SideTitles(reservedSize: 22, showTitles: true)|



### SideTitles
|PropName		|Description	|default value|
|:---------------|:---------------|:-------|
|showTitles| determines to show or hide the titles | false|
|getTitles| a function to retrieve the title with given value on the related axis|defaultGetTitle|
|reservedSize| a reserved space to show titles|22|
|textStyle| [TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html) to determine the style of texts |TextStyle(color: Colors.black, fontSize: 11)|
|margin| margin of horizontal the titles | 6|
|interval| interval between of showing titles in this side  | 1.0 |
|rotateAngle| the clockwise angle of rotating title in degree   | 0.0 |



### FlTouchInput
an abstract class that contains a [Offset](https://api.flutter.dev/flutter/dart-ui/Offset-class.html) with x and y of touched point, there is some concrete classes to distinguish between touch behaviours,
currently we have these touch behaviors:
`FlLongPressStart`, `FlLongPressMoveUpdate`, `FlLongPressEnd`, `FlPanStart`, `FlPanMoveUpdate`, `FlPanEnd`.


# AxisChart (Line and Bar Charts)


### FlGridData
|PropName|Description|default value|
|:-------|:----------|:------------|
|show|determines to show or hide the background grid data|true|
|drawHorizontalLine|determines to show or hide the horizontal grid lines|true|
|horizontalInterval|interval space of grid|1.0|
|getDrawingHorizontalLine|a function to get the line style of each grid line by giving the related axis value|defaultGridLine|
|checkToShowHorizontalLine|a function to check whether to show or hide the horizontal grid by giving the related axis value |showAllGrids|
|drawVerticalLine|determines to show or hide the vertical grid lines|false|
|verticalInterval|interval space of grid|1.0|
|getDrawingVerticalLine|a function to get the line style of each grid line by giving the related axis value|defaultGridLine|
|checkToShowVerticalLine|a function to determine whether to show or hide the vertical grid by giving the related axis value |showAllGrids|



### FlSpot
|PropName|Description|default value|
|:-------|:----------|:------------|
|x|represents x on the coordinate system (x starts from left)|null|
|y|represents y on the coordinate system (y starts from bottom)|null|



### FlLine
|propName|Description|default valkue|
|:-------|:----------|:------------|
|color|determines the color of line|Colors.black|
|strokeWidth|determines the stroke width of the line|2|


### TouchedSpot
|PropName|Description|default value|
|:-------|:----------|:------------|
|spot|the touched [FlSpot](#FlSpot)|null|
|offset|[Offset](https://api.flutter.dev/flutter/dart-ui/Offset-class.html) of the touched spot|null|



### FlAxisTitleData

Can be used to display a title text for each axis. Titles for the vertical axes (left and right) will be rotated 90 degrees.

|PropName		|Description	|default value|
|:---------------|:---------------|:-------|
|show| determines to show or hide the titles for the axes|true|
|leftTitle| an [AxisTitle](#AxisTitle) that holds data to draw the title of the left axis | `AxisTitle(reservedSize: 16)`|
|topTitle| an [AxisTitle](#AxisTitle) that holds data to draw the title of the top axis | `AxisTitle(reservedSize: 16)`|
|rightTitle| an [AxisTitle](#AxisTitle) that holds data to draw the title of the right axis | `AxisTitle(reservedSize: 16)`|
|bottomTitle| an [AxisTitle](#AxisTitle) that holds data to draw the title of the bottom axis | `AxisTitle(reservedSize: 16)`|



### AxisTitle
|PropName		|Description	|default value|
|:---------------|:---------------|:-------|
|showTitle| determines to show or hide the title | `false`|
|titleText| the text to draw as a description for this axis| `''`|
|reservedSize| a reserved space for the text| `14`|
|margin| margin between the axis text and inner elements ([SideTitles](#SideTitles) or the chart) | `4`|
|textStyle| [TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html) to determine the style of the text | `TextStyle(color: Colors.black, fontSize: 11)`|
|textAlign| [TextAlign](https://api.flutter.dev/flutter/dart-ui/TextAlign-class.html) to determine the alignment of the text | `TextAlign.center`|
