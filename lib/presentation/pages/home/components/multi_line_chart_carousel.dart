import 'package:carousel_slider/carousel_slider.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../components/basic_widgets.dart';

class MultiLineChartCarousel extends StatelessWidget {
  final List<List<FlSpot>> dataSets = [
    [
      const FlSpot(0, 1),
      const FlSpot(1, 3),
      const FlSpot(2, 5),
      const FlSpot(3, 8),
      const FlSpot(4, 7),
      const FlSpot(5, 13),
      const FlSpot(6, 10),
      const FlSpot(7, 10),
      const FlSpot(8, 8),
      const FlSpot(9, 6),
      const FlSpot(10, 8),
      const FlSpot(11, 11),
      const FlSpot(12, 9),
      const FlSpot(13, 10),
    ],
  ];

  final List<String> hours = ['09:00', '10:00', '11:00', '12:00', '13:00', '14:00', '15:00', '16:00', '17:00', '18:00', '19:00', '20:00', '21:00', '22:00'];
  final List<String> day = ['08.04.2025', '09.04.2025', '10.04.2025'];

  MultiLineChartCarousel({super.key});

  late final TransformationController _transformationController = TransformationController(Matrix4.diagonal3Values(
    1.8,
    1.8,
    1,
  ));

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: AppTheme.colors.secondary.withValues(alpha: 0.9),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 16.h, right: 12.w, left: 4.w, bottom: 8.0),
        child: SizedBox(
          height: 0.32.sh,
          width: 1.sw,
          child: LineChart(
            curve: Curves.bounceInOut,
            transformationConfig: FlTransformationConfig(
              scaleAxis: FlScaleAxis.horizontal,
              minScale: 1.0,
              maxScale: 25.0,
              panEnabled: true,
              scaleEnabled: true,
              transformationController: _transformationController,
            ),
            LineChartData(
              backgroundColor: AppTheme.colors.secondary,
              gridData: const FlGridData(show: true),
              borderData: FlBorderData(show: true),
              titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    axisNameSize: 100,
                    sideTitles: SideTitles(
                      reservedSize:26.h ,
                      //  reservedSize: 40,
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        if (index >= 0 && index < hours.length) {
                          return Transform.rotate(
                            angle: -0.785398,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0,),
                              child: Text(
                                hours[index],
                                style: AppTheme.data.textTheme.titleMedium?.copyWith(
                                  fontSize: 10.sp,
                                  color: AppTheme.colors.white,
                                ),
                              ),
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 3,
                      getTitlesWidget: (value, meta) {
                        return value != 0
                            ? Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text('${value.toInt()}', style: AppTheme.data.textTheme.titleMedium?.copyWith(fontSize:12.sp, color: AppTheme.colors.white)),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  )),
              lineBarsData: [
                LineChartBarData(
                    spots: dataSets[0],
                    isCurved: true,
                    color: AppTheme.colors.primary,
                    barWidth: 2,
                    belowBarData: BarAreaData(show: true),
                    isStrokeCapRound: true,
                    shadow: const Shadow(blurRadius: 12.0, color: Colors.black, offset: Offset(2, 3)),
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) {
                        return FlDotCirclePainter(
                          radius: 4,
                          color: AppTheme.colors.primary,
                          strokeWidth: 1,
                          strokeColor: AppTheme.colors.primary,
                        );
                      },
                    ),
                    showingIndicators: List.generate(dataSets[0].length, (i) => i),
                    curveSmoothness: 0.4),
              ],
              minX: 0,
              maxX: 13,
              minY: 0,
              maxY: 15,
            ),
          ),
        ),
      )
      ,
    );
  }
}
