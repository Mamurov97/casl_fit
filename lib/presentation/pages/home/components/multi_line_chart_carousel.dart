import 'package:casl_fit/infrastructure/dto/models/home/daily_count_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MultiLineChartCarousel extends StatelessWidget {
  MultiLineChartCarousel({super.key, required this.dailyCountResponse, required this.startWorkTime, required this.endWorkTime});

  final Data? dailyCountResponse;
  final String startWorkTime;
  final String endWorkTime;
  late final TransformationController _transformationController = TransformationController(Matrix4.diagonal3Values(
    1.8,
    1.8,
    1,
  ));

  @override
  Widget build(BuildContext context) {
    List<String> hours = generateHourlyRange(startWorkTime, endWorkTime);
    List<Result> results = dailyCountResponse?.result ?? [];
    final List<FlSpot> flSpots = generateFlSpots(hours, results);
    final List<List<FlSpot>> dataSets = [flSpots];
    final double maxY = flSpots.map((spot) => spot.y).fold<double>(0, (prev, y) => y > prev ? y : prev);

    final bool hasNonZeroClient = dataSets[0].any((spot) => spot.y > 0);

    final lineBarsData = [
      LineChartBarData(
        spots: dataSets[0],
        isCurved: true,
        color: AppTheme.colors.primary,
        barWidth: 2,
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(
            colors: [
              AppTheme.colors.primary.withValues(alpha: 0.25),
              AppTheme.colors.primary.withValues(alpha: 0.05),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        isStrokeCapRound: true,
        // shadow: Shadow(blurRadius: 12.0, color: AppTheme.colors.primary, offset: const Offset(0, 5)),
        dotData: FlDotData(
          show: true,
          getDotPainter: (spot, percent, barData, index) {
            return FlDotCirclePainter(
              radius: 3.r,
              color: AppTheme.colors.primary,
              strokeWidth: 1,
              strokeColor: AppTheme.colors.primary,
            );
          },
        ),
        // showingIndicators: List.generate(dataSets[0].length, (i) => i),
        curveSmoothness: hasNonZeroClient ? 0.4 : 0.0,
      ),
    ];

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
              showingTooltipIndicators: List.generate(flSpots.length, (index) {
                return ShowingTooltipIndicators([
                  LineBarSpot(
                    lineBarsData[0],
                    index,
                    flSpots[index],
                  ),
                ]);
              }),
              lineTouchData: LineTouchData(
                enabled: false,
                touchTooltipData: LineTouchTooltipData(
                  tooltipBorderRadius: BorderRadius.circular(20.r),
                  tooltipMargin: 8.h,
                  tooltipPadding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
                  tooltipHorizontalAlignment: FLHorizontalAlignment.center,
                  getTooltipColor: (touchedSpot) => AppTheme.colors.primary,
                  getTooltipItems: (touchedSpots) {
                    return touchedSpots.map((touchedSpot) {
                      return LineTooltipItem(
                        touchedSpot.y.toStringAsFixed(0),
                        TextStyle(color: AppTheme.colors.black, fontSize: 10.sp, fontWeight: FontWeight.bold),
                      );
                    }).toList();
                  },
                ),
                getTouchedSpotIndicator: (LineChartBarData barData, List<int> spotIndexes) {
                  return spotIndexes.map((index) {
                    return TouchedSpotIndicatorData(
                      FlLine(color: AppTheme.colors.primary.withValues(alpha: 0.2), strokeWidth: 2),
                      FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                          radius: 0,
                          strokeWidth: 5,
                          strokeColor: AppTheme.colors.primary,
                        ),
                      ),
                    );
                  }).toList();
                },
              ),
              backgroundColor: AppTheme.colors.secondary,
              gridData: const FlGridData(show: true),
              borderData: FlBorderData(show: true),
              titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    axisNameSize: 100,
                    sideTitles: SideTitles(
                      reservedSize: 26.h,
                      //  reservedSize: 40,
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) {
                        int index = value.toInt();
                        if (index >= 0 && index < hours.length) {
                          return Transform.rotate(
                            angle: -0.785398,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                              ),
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
                      interval: (dailyCountResponse?.clientsTotal ?? 0) > 10 ? 5 : 1,
                      getTitlesWidget: (value, meta) {
                        return value != 0
                            ? Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text('${value.toInt()}', style: AppTheme.data.textTheme.titleMedium?.copyWith(fontSize: 12.sp, color: AppTheme.colors.white)),
                              )
                            : const SizedBox();
                      },
                    ),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  )),
              lineBarsData: lineBarsData,
              minX: 0,
              maxX: (hours.length).toDouble(),
              minY: 0,
              maxY: maxY + 7,
            ),
          ),
        ),
      ),
    );
  }
}

List<String> generateHourlyRange(String start, String end) {
  final startHour = int.parse(start.split(":")[0]);
  final endHour = int.parse(end.split(":")[0]);

  List<String> hours = [];

  for (int i = startHour; i <= endHour; i++) {
    final hourStr = i.toString().padLeft(2, '0');
    hours.add('$hourStr:00');
  }

  return hours;
}

String normalizeHour(String hour) {
  try {
    final parts = hour.split(':');
    final hourPart = parts[0].padLeft(2, '0');
    final minutePart = parts[1].padLeft(2, '0');
    return '$hourPart:$minutePart';
  } catch (e) {
    return '00:00';
  }
}

List<FlSpot> generateFlSpots(List<String> hours, List<Result> results) {
  return List.generate(hours.length, (index) {
    final hour = hours[index];
    final toHour = (index + 1 < hours.length) ? hours[index + 1] : hour;

    final match = results.firstWhere(
      (r) => normalizeHour(r.from ?? '') == hour && normalizeHour(r.to ?? '') == toHour,
      orElse: () => Result(from: hour, to: toHour, clients: 0),
    );
    return FlSpot(index.toDouble(), (match.clients ?? 0).toDouble());
  });
}
