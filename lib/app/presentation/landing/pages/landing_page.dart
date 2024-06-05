import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:formularios_front/app/presentation/stores/providers/user_provider.dart';
import 'package:formularios_front/app/presentation/landing/widgets/bottom_navigation_widget.dart';
import 'package:formularios_front/app/shared/themes/app_dimensions.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => Modular.get<UserProvider>()..loginUser(),
        ),
      ],
      child: Scaffold(
        body: const SafeArea(
          left: false,
          right: false,
          bottom: false,
          child: RouterOutlet(),
        ),
        extendBody: true,
        bottomNavigationBar: const BottomNavigationWidget(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.primary,
          hoverColor: Theme.of(context).colorScheme.primary,
          shape: const CircleBorder(),
          onPressed: () {},
          child: Icon(
            Icons.rotate_right,
            size: AppDimensions.iconLarge,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}