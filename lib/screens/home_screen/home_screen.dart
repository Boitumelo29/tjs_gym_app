import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> showingTool = [4];

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = const TextStyle(color: Colors.grey, fontSize: 12);

    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text(
          "Sun",
          style: style,
        );
        break;
      case 2:
        text = Text(
          "Mon",
          style: style,
        );
        break;
      case 3:
        text = Text(
          "Tue",
          style: style,
        );
        break;
      case 4:
        text = Text(
          "Wed",
          style: style,
        );
        break;
      case 5:
        text = Text(
          "Thu",
          style: style,
        );
        break;
      case 6:
        text = Text(
          "Fri",
          style: style,
        );
        break;
      case 7:
        text = Text(
          "Sat",
          style: style,
        );
        break;

      default:
        text = const Text("");
        break;
    }

    return SideTitleWidget(space: 10, child: text, axisSide: meta.axisSide);
  }

  SideTitles get rightTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: rightTitleWidgets,
      );

  Widget rightTitleWidgets(double value, TitleMeta meta) {
    String? text;
    switch (value.toInt()) {
      case 0:
        text = "0h";
        break;
      case 2:
        text = "2h";
        break;
      case 4:
        "4h";
        break;
      case 6:
        "6h";
        break;
      case 10:
        "10h";
        break;
      default:
        return Container();
    }

    return Text(
      text ?? "",
      style: TextStyle(color: Colors.grey, fontSize: 12),
    );
  }

  List<LineChartBarData> get lineBarData => [lineBarData_1];

  LineChartBarData get lineBarData_1 => LineChartBarData(
          isCurved: true,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: const Alignment(0.1, 0.8),
            colors: <Color>[
              Colors.yellow[100]!,
              Colors.yellow[200]!,
              Colors.yellow[300]!,
            ],
          ),
          barWidth: 2,
          isStrokeCapRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(show: true, color: Colors.black),
          spots: const [
            FlSpot(1, 2),
            FlSpot(2, 4),
            FlSpot(3, 5),
            FlSpot(4, 6),
            FlSpot(5, 7),
            FlSpot(6, 8),
          ]);

  @override
  Widget build(BuildContext context) {
   // final toolTipOnBar = lineBarData[4];
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  const Text("Your Progress"),
                  const SizedBox(
                    width: 150,
                  ),
                  Container(
                    height: 30,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: const Alignment(0, 0.8),
                            colors: <Color>[
                              Colors.yellow[100]!,
                              Colors.yellow[200]!,
                              Colors.yellow[300]!,
                            ])),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        borderRadius: BorderRadius.circular(20),
                        items: ["Weekly", "Monthly"]
                            .map((e) =>
                                DropdownMenuItem(value: e, child: Text(e)))
                            .toList(),
                        onChanged: (Object? value) {},
                        icon: const Icon(Icons.date_range),
                        hint: const Text("Weekly"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // LineChart(
            //   LineChartData(
            //     showingTooltipIndicators: [],
            //     lineBarsData: lineBarData,
            //     minX: -0.01,
            //     maxY: 10.01,
            //     titlesData: FlTitlesData(
            //         show: true,
            //         leftTitles: const AxisTitles(),
            //         topTitles: const AxisTitles(),
            //         bottomTitles: AxisTitles(sideTitles: bottomTitles),
            //         rightTitles: AxisTitles(sideTitles: rightTitles)),
            //     gridData: FlGridData(
            //         show: true,
            //         drawHorizontalLine: true,
            //         horizontalInterval: 2,
            //         drawVerticalLine: false,
            //         getDrawingHorizontalLine: (value) {
            //           return const FlLine(
            //               color: Colors.blueGrey, strokeWidth: 2);
            //         }),
            //     // lineTouchData: LineTouchData(
            //     //   enabled: true,
            //     //   handleBuiltInTouches: false,
            //     //   touchCallback:
            //     //       (FlTouchEvent event, LineTouchResponse? response) {
            //     //     if (response == null || response.lineBarSpots == null) {
            //     //       return;
            //     //     }
            //     //     if (event is FlTapEvent) {
            //     //       final spotIndex = response.lineBarSpots!.first.spotIndex;
            //     //       setState(() {
            //     //         showingTooltipOnSpots.clear();
            //     //         showingTooltipOnSpots.add(spotIndex);
            //     //       });
            //     //     }
            //     //   },
            //     // ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
