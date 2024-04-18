import 'package:flutter/material.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/domain/failures/failures.dart';
import 'package:formularios_front/app/presentation/states/form_user_state.dart';
import 'package:formularios_front/app/presentation/stores/providers/form_user_provider.dart';
import 'package:formularios_front/app/presentation/widgets/bottom_navigation_widget.dart';
import 'package:formularios_front/app/presentation/widgets/form_card.dart';
import 'package:formularios_front/app/presentation/widgets/order_tab_section.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var state = context.watch<FormUserProvider>().state;
    return Scaffold(
      body: state is FormUserErrorState
          ? errorBuild(state.error)
          : state is FormUserSuccessState
              ? successBuild(state.forms)
              : const CircularProgressIndicator(),
      bottomNavigationBar: const BottomNavigationWidget(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        shape: const CircleBorder(),
        onPressed: () {},
        child: const Icon(
          Icons.abc,
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget successBuild(List<FormEntity> forms) {
    return Column(
      children: [
        const OrderTabSection(),
        Expanded(
          child: ListView.builder(
            itemCount: forms.length,
            itemBuilder: (context, index) => FormCard(
              form: forms[index],
            ),
          ),
        )
      ],
    );
  }

  Widget errorBuild(Failure error) {
    return Center(
      child: Text(error.toString()),
    );
  }
}
