import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/tariff/tariff_bloc.dart';
import '../../components/basic_widgets.dart';
import '../../components/screens/empty_page.dart';
import 'components/tariff_item.dart';

class CurrentTariffPage extends StatelessWidget {
  const CurrentTariffPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocBuilder<TariffBloc, TariffState>(
          builder: (context, state) {
            if (state.currentTariffStatus.isLoading) return const CircularIndicator();
            if (state.currentTariffStatus.isEmpty) return const EmptyPage();
            if (state.currentTariffStatus.isError) {
              return ErrorPage(
                onPressed: () => context.read<TariffBloc>().add(const GetCurrentTariffs()),
                error: state.errorMessage,
              );
            }

            return ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: TariffItem(
                    item: state.currentTariff?[index],
                    onPressed: () => context.push("${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}${Routes.tariffDetail.path}", extra: state.currentTariff?[index]),
                    isArrow: true,
                  ),
                );
              },
              itemCount: state.currentTariff?.length,
            );
          },
        ),
      ),
    );
  }
}
