import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formularios_front/app/app_module.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/domain/enum/form_status_enum.dart';
import 'package:formularios_front/app/domain/enum/priority_enum.dart';
import 'package:formularios_front/app/presentation/controllers/form_controller.dart';
import 'package:formularios_front/app/presentation/stores/providers/form_user_provider.dart';
import 'package:formularios_front/app/presentation/pages/form_details_page.dart';
import 'package:formularios_front/generated/l10n.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'form_details_page_test.mocks.dart';

@GenerateMocks([FormUserProvider, FormEntity, FormController])
void main() {
  MockFormEntity form = MockFormEntity();
  late FormUserProvider formUserProvider = MockFormUserProvider();
  late FormController formDetailsController = MockFormController();

  setUp(() {
    Modular.bindModule(AppModule());
    Modular.bindModule(HomeModule());

    Modular.replaceInstance<FormUserProvider>(formUserProvider);
    Modular.replaceInstance<FormController>(formDetailsController);

    when(form.system).thenReturn('system');
    when(form.template).thenReturn('Nome Template');
    when(form.street).thenReturn('Rua Samuel Morse');
    when(form.number).thenReturn(1);
    when(form.priority).thenReturn(PriorityEnum.HIGH);
    when(form.description).thenReturn('description');
    when(form.longitude).thenReturn(10.0);
    when(form.latitude).thenReturn(11.0);

    when(form.expirationDate).thenReturn(1715090009);
    when(form.creationDate).thenReturn(1715090009);

    when(form.formId).thenReturn('formId');
    when(form.vinculationFormId).thenReturn('vinculationForm3');
    when(form.creatorUserId).thenReturn('creatorUser4');

    when(formUserProvider.getFormByExternId(form.formId)).thenReturn(form);
    when(formDetailsController.form).thenReturn(form);
    when(formDetailsController.formId).thenReturn(form.formId);

    when(formDetailsController.creationDate)
        .thenReturn(form.creationDate.toString());
    when(formDetailsController.expirationDate)
        .thenReturn(form.expirationDate.toString());
  });

  group('Form Details Page', () {
    testWidgets('Form Details Page displays details correctly',
        (WidgetTester tester) async {
      TestWidgetsFlutterBinding.ensureInitialized();

      await tester.binding.setSurfaceSize(const Size(1500, 1500));
      await S.load(const Locale.fromSubtags(languageCode: 'en'));
      initializeDateFormatting('pt_BR', null);

      when(form.status).thenReturn(FormStatusEnum.NOT_STARTED);

      await tester.pumpWidget(ModularApp(
          module: AppModule(),
          child: const MaterialApp(
            home: FormDetailsPage(),
          )));
      await tester.pumpAndSettle();

      expect(find.text('${form.system} - ${form.template}'), findsOneWidget);
      expect(find.text('Rua Samuel Morse'), findsOneWidget);
      expect(find.text('1'), findsOneWidget);
      expect(find.text('description'), findsOneWidget);
      expect(find.text(FormStatusEnum.NOT_STARTED.enumString), findsOneWidget);
      expect(find.text(PriorityEnum.HIGH.enumString), findsOneWidget);

      expect(find.text('1715090009'), findsExactly(2));

      expect(find.text('formId'), findsOneWidget);
      expect(find.text('vinculationForm3'), findsOneWidget);
      expect(find.text('creatorUser4'), findsOneWidget);

      expect(find.text('10.0'), findsOneWidget);
      expect(find.text('11.0'), findsOneWidget);
    });

    testWidgets(
        'Form Details Page displays details correctly when status is NOT_STARTED',
        (WidgetTester tester) async {
      TestWidgetsFlutterBinding.ensureInitialized();

      await tester.binding.setSurfaceSize(const Size(1500, 1500));
      await S.load(const Locale.fromSubtags(languageCode: 'pt'));
      initializeDateFormatting('pt_BR', null);

      when(form.status).thenReturn(FormStatusEnum.NOT_STARTED);

      await tester.pumpWidget(ModularApp(
          module: AppModule(),
          child: const MaterialApp(
            home: FormDetailsPage(),
          )));

      await tester.pumpAndSettle();

      expect(find.text('Iniciar'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Vincular Formulário'), findsOneWidget);
    });

    testWidgets(
        'Form Details Page displays details correctly when status is IN_PROGRESS',
        (WidgetTester tester) async {
      TestWidgetsFlutterBinding.ensureInitialized();

      await tester.binding.setSurfaceSize(const Size(1500, 1500));
      await S.load(const Locale.fromSubtags(languageCode: 'pt'));
      initializeDateFormatting('pt_BR', null);

      when(form.status).thenReturn(FormStatusEnum.IN_PROGRESS);

      await tester.pumpWidget(ModularApp(
          module: AppModule(),
          child: const MaterialApp(
            home: FormDetailsPage(),
          )));

      await tester.pumpAndSettle();
      expect(find.text('Preencher'), findsOneWidget);
      expect(find.text('Retroceder'), findsOneWidget);
      expect(find.text('Cancelar'), findsOneWidget);
      expect(find.text('Vincular Formulário'), findsOneWidget);
    });

    testWidgets(
        'Form Details Page displays details correctly when status is CONCLUDED or CANCELED',
        (WidgetTester tester) async {
      TestWidgetsFlutterBinding.ensureInitialized();

      await tester.binding.setSurfaceSize(const Size(1500, 1500));
      await S.load(const Locale.fromSubtags(languageCode: 'pt'));
      initializeDateFormatting('pt_BR', null);

      when(form.status).thenReturn(FormStatusEnum.IN_PROGRESS);

      await tester.pumpWidget(ModularApp(
          module: AppModule(),
          child: const MaterialApp(
            home: FormDetailsPage(),
          )));

      await tester.pumpAndSettle();
      expect(find.byElementType(ElevatedButton), findsNothing);
    });
  });
}
