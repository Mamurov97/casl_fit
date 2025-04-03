import 'package:casl_fit/application/home/profile/weight_height/weight_height_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freedom_table/freedom_table.dart';
import '../../../../infrastructure/dto/models/home/plan/weight_height_response.dart';
import '../../../assets/asset_index.dart';
import 'data_table_cell.dart';

class WeightHeightTable extends StatelessWidget {
  const WeightHeightTable({
    super.key,
    required this.data,
    this.weightHeightEnum,
  });

  final List<WeightHeightResponse> data;
  final WeightHeightEnum? weightHeightEnum;

  @override
  Widget build(BuildContext context) {
    final sortedData = List<WeightHeightResponse>.from(data)
      ..sort((a, b) {
        DateTime dateA = _parseDate(a.date ?? '01.01.1970');
        DateTime dateB = _parseDate(b.date ?? '01.01.1970');
        return dateB.compareTo(dateA);
      });

    List<List<FreedomTableBodyCell>> generateBodyCells(int count) {
      return List<List<FreedomTableBodyCell>>.generate(count, (index) {
        return [
          FreedomTableBodyCell(
            colspan: 1,
            rowspan: 1,
            child: InkWell(
              onTap: () {},
              child: DataTableCell(
                  color: index % 2 == 0 ? AppTheme.colors.secondary.withOpacity(0.7) : AppTheme.colors.secondary.withOpacity(1),
                  name: DateFormat("dd.MM.yyyy").format(_parseDate(sortedData[index].date ?? DateTime.now().toString())),
                  style: AppTheme.data.textTheme.titleMedium!.copyWith(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 14.spMin,
                  )),
            ),
          ),
          FreedomTableBodyCell(
            colspan: 1,
            rowspan: 1,
            child: InkWell(
              onTap: () {},
              child: DataTableCell(
                  color: index % 2 == 0 ? AppTheme.colors.secondary.withOpacity(0.7) : AppTheme.colors.secondary.withOpacity(1),
                  name: '${sortedData[index].size} ${weightHeightEnum == WeightHeightEnum.weight ? "kg" : "sm"}',
                  style: AppTheme.data.textTheme.titleMedium!.copyWith(
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontSize: 14.spMin,
                  )),
            ),
          ),
        ];
      });
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: FreedomTable(
              minCellWidthInFlexMode: 0.25.sw,
              key: GlobalKey(),
              theme: FreedomTableTheme(backgroundColor: AppTheme.colors.secondary, dividerColor: Colors.transparent),
              headers: [
                FreedomTableHeaderCell(
                  flex: 1,
                  child: DataTableCell(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.bold,
                    ),
                    name: 'Sana',
                  ),
                ),
                FreedomTableHeaderCell(
                  flex: 1,
                  child: DataTableCell(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.spMin,
                      fontWeight: FontWeight.bold,
                    ),
                    name: weightHeightEnum == WeightHeightEnum.weight ? 'Vazn' : "Bo'y",
                  ),
                ),
              ],
              initBodyCells: [...generateBodyCells(sortedData.length)],
            ),
          ),
        ],
      ),
    );
  }

  bool checkStatus(WeightHeightResponse data) {
    var now = DateTime.now();
    var time = _parseDate(data.date ?? '01.01.1970');
    return now.year == time.year && now.month == time.month && now.day == time.day;
  }

  DateTime _parseDate(String dateString) {
    var dateParts = dateString.split('.');
    if (dateParts.length == 3) {
      var day = int.parse(dateParts[0]);
      var month = int.parse(dateParts[1]);
      var year = int.parse(dateParts[2]);
      return DateTime(year, month, day);
    }
    return DateTime(1970, 1, 1);
  }
}
