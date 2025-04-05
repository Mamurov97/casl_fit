import 'package:casl_fit/application/tariff/tariff_bloc.dart';
import 'package:casl_fit/domain/common/enums/bloc_status.dart';
import 'package:casl_fit/presentation/assets/asset_index.dart';
import 'package:casl_fit/presentation/components/basic_widgets.dart';
import 'package:casl_fit/presentation/pages/tariff/components/tariff_item.dart';
import 'package:casl_fit/presentation/routes/index_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllTariffPage extends StatefulWidget {
  const AllTariffPage({super.key});

  @override
  State<AllTariffPage> createState() => _AllTariffPageState();
}

class _AllTariffPageState extends State<AllTariffPage> {
  @override
  void initState() {
    super.initState();
    context.read<TariffBloc>().add(const GetTariffs());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('profile.definition'.tr()),
      ),
      body: BlocBuilder<TariffBloc, TariffState>(
        builder: (context, state) {
          if (state.allTariffStatus.isLoading) return const CircularIndicator();
          if (state.allTariffStatus.isEmpty) return const ComingSoonPage();
          if (state.allTariffStatus.isError) {
            return ErrorPage(
              onPressed: () => context.read<TariffBloc>().add(const GetTariffs()),
              error: state.errorMessage,
            );
          }
          if (state.allTariffStatus.isSuccess) {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.tariffs?.length,
              itemBuilder: (context, index) {
                return TariffItem(
                  isArrow: true,
                  item: state.tariffs?[index],
                  onPressed: () => context.push("${Routes.root.path}${Routes.tariff.path}${Routes.allTariff.path}${Routes.tariffDetail.path}", extra: state.tariffs?[index]),
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
