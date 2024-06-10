import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formularios_front/app/app_module.dart';
import 'package:formularios_front/app/domain/entities/field_entity.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/domain/entities/justificative_entity.dart';
import 'package:formularios_front/app/domain/entities/section_entity.dart';
import 'package:formularios_front/app/domain/enum/form_status_enum.dart';
import 'package:formularios_front/app/domain/enum/priority_enum.dart';
import 'package:formularios_front/app/presentation/form/controllers/form_controller.dart';
import 'package:formularios_front/app/presentation/form/widgets/fields/check_box_group_field.dart';
import 'package:formularios_front/app/presentation/stores/providers/form_user_provider.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'check_box_group_field_test.mocks.dart';

@GenerateMocks([FormUserProvider, FormController, SectionEntity])
void main() {
  group('CustomCheckBoxGroupFormField Tests', () {
    late MockFormController mockController;

    CheckBoxGroupFieldEntity field = CheckBoxGroupFieldEntity(
      key: 'checkBoxField',
      placeholder: 'Select options',
      options: ['Option 1', 'Option 2', 'Option 3'],
      isRequired: true,
    );
    SectionEntity section = SectionEntity(
      sectionId: 'section-01',
      fields: [field],
    );

    FormEntity form = FormEntity(
      formTitle: 'Poda de Árvore 6',
      formId: 'ID1142342524247',
      creatorUserId: '2',
      userId: '1',
      vinculationFormId: null,
      template: 'Poda de Árvore 6',
      area: 'area',
      system: 'system',
      street: 'street',
      city: 'city',
      number: 1,
      latitude: 1.0,
      longitude: 1.0,
      region: 'region',
      description: 'description',
      priority: PriorityEnum.HIGH,
      status: FormStatusEnum.NOT_STARTED,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      conclusionDate: 1,
      justificative: JustificativeEntity(
        options: [
          JustificativeOptionEntity(
            option: 'option',
            requiredImage: true,
            requiredText: true,
          ),
        ],
        selectedOption: null,
        text: null,
        image: null,
      ),
      comments: 'comments',
      sections: [section],
      canVinculate: true,
    );
    setUp(
      () {
        Modular.bindModule(HomeModule());
        mockController = MockFormController();
        when(mockController.form).thenReturn(form);
        Modular.replaceInstance<FormController>(mockController);
      },
    );
    testWidgets('Teste do CustomCheckBoxGroupFormField',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomCheckBoxGroupFormField(
              field: field,
              onChanged: (value) {
                mockController.setFieldValue(
                    section.sectionId, field.key, value);
              },
              sectionEntity: section, formController: mockController,
            ),
          ),
        ),
      );

      expect(find.text('Select options'), findsOneWidget);

      expect(find.text('Option 1'), findsOneWidget);
      expect(find.text('Option 2'), findsOneWidget);
      expect(find.text('Option 3'), findsOneWidget);

      expect(find.byType(CheckboxListTile), findsNWidgets(3));
    });
  });
}
