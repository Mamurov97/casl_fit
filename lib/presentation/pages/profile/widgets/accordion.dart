import 'package:casl_fit/infrastructure/dto/models/home/profile/profile_response.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:flutter/material.dart';

import 'custom_expansion_tile.dart';
import 'definition_item.dart';

class CustomExpansionTileWidget extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final bool isExpanded;
  final VoidCallback onExpand;

  const CustomExpansionTileWidget({
    required this.title,
    required this.children,
    required this.isExpanded,
    required this.onExpand,
    super.key,
  });

  @override
  _CustomExpansionTileWidgetState createState() => _CustomExpansionTileWidgetState();
}

class _CustomExpansionTileWidgetState extends State<CustomExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0).copyWith(right: 0.0),
      child: CustomExpansionTile(
        initiallyExpanded: widget.isExpanded,
        onExpansionChanged: (expanded) {
          if (expanded) {
            widget.onExpand();
          }
        },
        tilePadding: const EdgeInsets.symmetric(horizontal: 8.0),
        title: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 12.sp),
        ),
        children: widget.children,
      ),
    );
  }
}

class DefinitionTable extends StatelessWidget //__
{
  final List<Tarif> definitions;
  final int index;

  const DefinitionTable({super.key, required this.definitions, required this.index});

  @override
  Widget build(context) //__
  {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(label: Text('Nomi', style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          DataColumn(label: Text('Qiymati', style: TextStyle(color: Colors.white, fontSize: 12.sp))),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Tarif', style: TextStyle(color: Colors.white, fontSize: 12.sp))),
            DataCell(Text(definitions.isNotEmpty ? definitions[index].tarif ?? "" : "", style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          ]),
          DataRow(cells: [
            DataCell(Text('Boshlanish vaqti', style: TextStyle(color: Colors.white, fontSize: 12.sp))),
            DataCell(Text(definitions.isNotEmpty ? definitions[index].boshlanishVaqt?.split(" ")[0] ?? "" : "", style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          ]),
          DataRow(cells: [
            DataCell(Text('Tugash vaqti', style: TextStyle(color: Colors.white, fontSize: 12.sp))),
            DataCell(Text(definitions.isNotEmpty ? definitions[index].tugashVaqt ?? "" : "", style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          ]),
          DataRow(cells: [
            DataCell(Text('Qoldiq', style: TextStyle(color: Colors.white, fontSize: 12.sp))),
            DataCell(Text(definitions.isNotEmpty ? definitions[index].qoldiq?.toString() ?? "" : "", style: TextStyle(color: Colors.white, fontSize: 12.sp))),
          ]),
        ],
      ),
    );
  }
}

class DefinitionLimitsCard extends StatelessWidget {
  final Tarif definition;

  const DefinitionLimitsCard({super.key, required this.definition});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.w),
  margin:  EdgeInsets.symmetric(vertical: 12.h,horizontal: 0.w).copyWith(left: 12.w),
      decoration: BoxDecoration(
        color: AppTheme.colors.secondary.withOpacity(0.8),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DefinitionItem(icon: AppIcons.beginTime, title: "Boshlanish vaqti", value: definition.boshlanishVaqt?.split(" ")[0] ?? ""),
          DefinitionItem(icon: AppIcons.endTime, title: "Tugash vaqti", value: definition.tugashVaqt?.split(" ")[0] ?? ""),
          DefinitionItem(icon: AppIcons.remainDay, title: "Qoldiq", value: "${definition.qoldiq} kun"),
        ],
      ),
    );
  }
}
