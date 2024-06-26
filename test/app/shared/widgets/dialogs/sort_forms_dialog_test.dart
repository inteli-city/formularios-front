import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formularios_front/app/app_module.dart';
import 'package:formularios_front/app/presentation/home/controllers/sort_forms_controller.dart';
import 'package:formularios_front/app/presentation/home/stores/forms_provider.dart';
import 'package:formularios_front/app/shared/widgets/dialogs/sort_forms_dialog.dart';
import 'package:formularios_front/generated/l10n.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:formularios_front/app/domain/enum/order_enum.dart';
import 'package:provider/provider.dart';

import 'sort_forms_dialog_test.mocks.dart';

@GenerateMocks([SortFormsController, FormsProvider])
void main() {
  group('SortFormsDialog UI Test', () {
    late SortFormsController mockController;
    late FormsProvider formsProvider;

    setUp(() {
      Modular.bindModule(AppModule());
      Modular.bindModule(HomeModule());
      mockController = MockSortFormsController();
      formsProvider = MockFormsProvider();

      Modular.replaceInstance<SortFormsController>(mockController);
      Modular.replaceInstance<FormsProvider>(formsProvider);
    });

    testWidgets('Displays all order options', (WidgetTester tester) async {
      await S.load(const Locale.fromSubtags(languageCode: 'en'));

      when(mockController.selectedOrder).thenReturn(OrderEnum.MAIS_ANTIGO);
      when(mockController.setSelectedOrder(OrderEnum.MAIS_ANTIGO))
          .thenReturn(null);
      when(formsProvider.orderForms(OrderEnum.MAIS_ANTIGO))
          .thenReturn(null);

      await tester.pumpWidget(
        MaterialApp(
          home: MultiProvider(
              providers: [
                Provider<SortFormsController>(create: (_) => mockController),
                ChangeNotifierProvider<FormsProvider>(
                    create: (_) => formsProvider),
              ],
              child: const Scaffold(
                  body: SizedBox(
                height: double.infinity,
                child: SortFormsDialog(),
              ))),
        ),
      );

      await tester.pumpAndSettle();

      for (final order in OrderEnum.values) {
        expect(find.text(order.enumString), findsOneWidget);
      }
    });
  });
}
