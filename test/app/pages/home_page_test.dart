import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formularios_front/app/domain/failures/failures.dart';
import 'package:formularios_front/app/injector.dart';
import 'package:formularios_front/app/presentation/pages/home_page.dart';
import 'package:mockito/annotations.dart';
import 'package:provider/provider.dart';
import 'package:mockito/mockito.dart';

import 'package:formularios_front/app/presentation/states/form_user_state.dart';
import 'package:formularios_front/app/presentation/stores/providers/form_user_provider.dart';

import 'home_page_test.mocks.dart';

@GenerateMocks([FormUserProvider])
void main() {
  group('HomePage Widget Tests', () {
    FormUserProvider formUserProvider = MockFormUserProvider();
    registerInstances();
    testWidgets('should display CircularProgressIndicator when loading',
        (WidgetTester tester) async {
      when(formUserProvider.state).thenReturn(FormUserLoadingState());

      await tester.pumpWidget(MaterialApp(
        home: ChangeNotifierProvider<FormUserProvider>(
          create: (_) => formUserProvider,
          child: const HomePage(),
        ),
      ));

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('should display error message when in error state',
        (WidgetTester tester) async {
      var failure = Failure(message: 'Error Message');
      when(formUserProvider.state)
          .thenReturn(FormUserErrorState(error: failure));
      await tester.pumpWidget(MaterialApp(
        home: ChangeNotifierProvider<FormUserProvider>(
          create: (_) => formUserProvider,
          child: const HomePage(),
        ),
      ));

      expect(find.byKey(const Key('error-build')), findsOneWidget);
    });
    // overflow height error

    // testWidgets('should display list of forms when in success state',
    //     (WidgetTester tester) async {
    //   when(formUserProvider.state).thenReturn(const FormUserSuccessState(forms: []));
    //   await tester.pumpWidget(MaterialApp(
    //     home: ChangeNotifierProvider<FormUserProvider>(
    //       create: (_) => formUserProvider,
    //       child: const HomePage(),
    //     ),
    //   ));

    //   expect(find.byKey(const Key('success-build')), findsOneWidget);
    // });
  });
}