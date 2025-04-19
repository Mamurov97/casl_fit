import 'package:casl_fit/infrastructure/dto/models/home/profile/weight_height_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WeightGraph extends StatefulWidget {
  final List<WeightHeightResponse> data;

  const WeightGraph({super.key, required this.data});

  @override
  State<WeightGraph> createState() => _WeightGraphState();
}

class _WeightGraphState extends State<WeightGraph> {
  List<int> showingTooltipOnSpots = [];
  List<FlSpot> spots = [];
  double minWeight = double.infinity;
  double maxWeight = double.negativeInfinity;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    spots = [];
    minWeight = double.infinity;
    maxWeight = double.negativeInfinity;
    showingTooltipOnSpots = [];

    List<WeightHeightResponse> sortedData = sortDataByDate(widget.data);

    minWeight = 0;
    maxWeight = 0;

    if (sortedData.isNotEmpty) {
      for (int i = 0; i < sortedData.length; i++) {
        double weight = double.tryParse(sortedData[i].size ?? '0') ?? 0;
        spots.add(FlSpot((i + 1).toDouble(), weight));

        if (weight < minWeight) minWeight = weight;
        if (weight > maxWeight) maxWeight = weight;

        showingTooltipOnSpots.add(i);
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
      }
    });
  }

  Widget bottomTitleWidgets(double value, TitleMeta meta, double chartWidth) {
    final style = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.red,
      fontFamily: 'Digital',
      fontSize: 18 * chartWidth / 500,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '00:00';
        break;
      case 1:
        text = '04:00';
        break;
      case 2:
        text = '08:00';
        break;
      case 3:
        text = '12:00';
        break;
      case 4:
        text = '16:00';
        break;
      case 5:
        text = '20:00';
        break;
      case 6:
        text = '23:59';
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      meta: meta,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<WeightHeightResponse> sortedData = sortDataByDate(widget.data);
    if (sortedData.isEmpty) {
      return const Center(child: Text("No Data Available"));
    }

    final lineBarsData = [
      LineChartBarData(
        spots: spots,
        isCurved: true,
        curveSmoothness: 0.25,
        belowBarData: BarAreaData(),
        color: AppTheme.colors.primary,
        dotData: FlDotData(
          show: true,
          getDotPainter: (spot, percent, line, index) {
            return FlDotCirclePainter(
              radius: 4.r,
              color: Colors.red,
              strokeWidth: 2,
              strokeColor: Colors.white,
            );
          },
        ),
        barWidth: 2.w,
      ),
    ];

    return SizedBox(
      height: 0.4.sh,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 28.0),
        child: SingleChildScrollView(
          controller: _scrollController,
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            width: (sortedData.length * 120.w).toDouble(),
            child: Padding(
              padding: EdgeInsets.only(top: 50.h, right: 32.w, bottom: 12.h),
              child: LineChart(
                LineChartData(
                  gridData: const FlGridData(show: true),
                  showingTooltipIndicators: showingTooltipOnSpots.map((index) {
                    return ShowingTooltipIndicators([
                      LineBarSpot(
                        lineBarsData[0],
                        0,
                        spots[index],
                      ),
                    ]);
                  }).toList(),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 50,
                        interval: 50,
                        getTitlesWidget: (value, meta) {
                          return SideTitleWidget(
                           // axisSide: meta.axisSide,
                            meta: meta,
                            child: Text(value.toInt().toString(), style: const TextStyle(color: Colors.white, fontSize: 10)),
                          );
                        },
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        getTitlesWidget: (value, meta) {
                          int index = value.toInt() - 1;
                          if (index >= 0 && index < sortedData.length) {
                            return SideTitleWidget(
                              meta: meta,
                              angle: -0.3,
                              child: Text(
                                DateFormat("dd.MM.yyyy").format(_parseDate(sortedData[index].date ?? DateTime.now().toString())),
                                style: const TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            );
                          }
                          return  SideTitleWidget(
                        //    axisSide: AxisSide.bottom,
                            meta: meta,
                            child: const Text('', style: TextStyle(color: Colors.white, fontSize: 12)),
                          );
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border(
                      bottom: BorderSide(color: Colors.grey.withValues(alpha: 0.3), width: 1),
                      left: const BorderSide(width: 1),
                    ),
                  ),
                  minX: spots.isNotEmpty ? spots.first.x : 0,
                  maxX: spots.isNotEmpty ? spots.last.x : 1,
                  minY: minWeight,
                  maxY: maxWeight,
                  lineBarsData: lineBarsData,
                  lineTouchData: LineTouchData(
                    enabled: false,
                    handleBuiltInTouches: false,
                    touchTooltipData: LineTouchTooltipData(
                      tooltipMargin: 4.h,
                      tooltipHorizontalAlignment: FLHorizontalAlignment.right,
                      tooltipPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                      getTooltipColor: (touchedSpot) => Colors.grey.withValues(alpha: 0.4),
                      getTooltipItems: (List<LineBarSpot> touchedBarSpots) {
                        return touchedBarSpots.map((barSpot) {
                          final int index = barSpot.x.toInt();
                          String weight;
                          if (index == 0) {
                            weight = '0';
                          } else {
                            weight = sortedData[index - 1].size ?? '0';
                          }
                          return LineTooltipItem(
                            weight,
                            const TextStyle(color: Colors.red),
                          );
                        }).toList();
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<WeightHeightResponse> sortDataByDate(List<WeightHeightResponse> data) {
    data.sort((a, b) {
      DateTime dateA = _parseDate(a.date ?? '01.01.1970'); // Default to a far past date if null
      DateTime dateB = _parseDate(b.date ?? '01.01.1970');
      return dateA.compareTo(dateB);
    });
    return data;
  }

  DateTime _parseDate(String dateString) {
    var dateParts = dateString.split('.');
    if (dateParts.length == 3) {
      var day = int.parse(dateParts[0]);
      var month = int.parse(dateParts[1]);
      var year = int.parse(dateParts[2]);
      return DateTime(year, month, day);
    }
    return DateTime(1970, 1, 1); // Default date
  }
}
