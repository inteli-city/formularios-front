import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formularios_front/app/app_module.dart';
import 'package:formularios_front/app/domain/entities/field_entity.dart';
import 'package:formularios_front/app/domain/entities/justificative_entity.dart';
import 'package:formularios_front/app/domain/entities/section_entity.dart';
import 'package:formularios_front/app/domain/enum/field_type_enum.dart';
import 'package:formularios_front/app/domain/usecases/fetch_forms_locally_usecase.dart';
import 'package:formularios_front/app/domain/usecases/fetch_user_forms_usecase.dart';
import 'package:formularios_front/app/domain/usecases/update_form_usecase.dart';
import 'package:formularios_front/app/presentation/home/stores/forms_provider.dart';
import 'package:gates_microapp_flutter/helpers/functions/global_snackbar.dart';
import 'package:logger/logger.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/domain/enum/form_status_enum.dart';
import 'package:formularios_front/app/domain/enum/priority_enum.dart';
import 'package:formularios_front/app/presentation/home/states/form_user_state.dart';
import 'package:dartz/dartz.dart';
import 'package:formularios_front/app/domain/failures/failures.dart';

import 'forms_provider_test.mocks.dart';

@GenerateMocks([
  FetchUserFormsUsecase,
  FetchFormsLocallyUsecase,
  IUpdateFormStatusUseCase,
])
void main() {
  late MockFetchUserFormsUsecase mockFetchUserFormsUsecase;
  late MockFetchFormsLocallyUsecase mockFetchFormsLocallyUsecase;
  late MockIUpdateFormStatusUseCase mockUpdateFormStatusUseCase;
  late FormsProvider provider;
  late Logger logger;

  setUp(() {
    Modular.bindModule(AppModule());
    logger = Logger();
    mockFetchUserFormsUsecase = MockFetchUserFormsUsecase();
    mockFetchFormsLocallyUsecase = MockFetchFormsLocallyUsecase();
    mockUpdateFormStatusUseCase = MockIUpdateFormStatusUseCase();
    provider = FormsProvider(
        mockFetchUserFormsUsecase, mockFetchFormsLocallyUsecase, logger);
  });
  Widget createWidgetForTesting({required Widget child}) {
    return MaterialApp(
      scaffoldMessengerKey: rootScaffoldMessengerKey,
      home: Scaffold(
        body: child,
      ),
    );
  }

  group('fetchUserForms', () {
    final forms = [
      FormEntity(
        formId: '1',
        creatorUserId: 'creatorUserId',
        userId: 'userId',
        vinculationFormId: 'vinculationFormId',
        template: 'template',
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
        status: FormStatusEnum.IN_PROGRESS,
        expirationDate: 1,
        creationDate: 1,
        startDate: 1,
        conclusionDate: 1,
        justificative: JustificativeEntity(
          justificationImage: null,
          options: [],
          selectedOption: '',
          justificationText: '',
        ),
        comments: 'comments',
        sections: [
          SectionEntity(sectionId: 'section-01', fields: [
            TextFieldEntity(
              fieldType: FieldTypeEnum.TEXT_FIELD,
              placeholder: 'TextField 01',
              isRequired: true,
              key: 'key-section-01-1',
            ),
            TextFieldEntity(
              fieldType: FieldTypeEnum.TEXT_FIELD,
              placeholder: 'TextField 02',
              isRequired: true,
              key: 'key-section-01-2',
            ),
          ])
        ],
        formTitle: 'formTitle',
        canVinculate: false,
      ),
    ];

    test('should set state to FormUserSuccessState when fetch is successful',
        () async {
      when(mockFetchUserFormsUsecase.call())
          .thenAnswer((_) async => Right(forms));

      await provider.syncForms();

      expect(provider.state, isA<FormUserSuccessState>());
      final state = provider.state as FormUserSuccessState;
      expect(state.forms, forms);
    });

    testWidgets('should set state to FormUserErrorState when fetch fails',
        (WidgetTester tester) async {
      final failure = Failure(message: 'Fetch failed');
      when(mockFetchUserFormsUsecase.call())
          .thenAnswer((_) async => Left(failure));

      await tester.pumpWidget(createWidgetForTesting(child: Container()));
      await provider.syncForms();

      expect(provider.state, isA<FormUserErrorState>());
      final state = provider.state as FormUserErrorState;
      expect(state.error, failure);
    });
  });

  group('updateFormStatus', () {
    final form = FormEntity(
      formId: '1',
      creatorUserId: 'creatorUserId',
      userId: 'userId',
      vinculationFormId: 'vinculationFormId',
      template: 'template',
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
      status: FormStatusEnum.IN_PROGRESS,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      conclusionDate: 1,
      justificative: JustificativeEntity(
          options: [],
          selectedOption: '',
          justificationText: '',
          justificationImage: null),
      comments: 'comments',
      sections: [
        SectionEntity(sectionId: 'section-01', fields: [
          TextFieldEntity(
            fieldType: FieldTypeEnum.TEXT_FIELD,
            placeholder: 'TextField 01',
            isRequired: true,
            key: 'key-section-01-1',
          ),
          TextFieldEntity(
            fieldType: FieldTypeEnum.TEXT_FIELD,
            placeholder: 'TextField 02',
            isRequired: true,
            key: 'key-section-01-2',
          ),
        ])
      ],
      formTitle: 'formTitle',
      canVinculate: false,
    );

    testWidgets(
        'should call updateFormStatus and fetchUserForms when update is successful',
        (WidgetTester tester) async {
      when(
        mockUpdateFormStatusUseCase.call(
          formId: anyNamed('formId'),
          status: anyNamed('status'),
        ),
      ).thenAnswer(
        (_) async => Right(form),
      );
      when(mockFetchUserFormsUsecase.call()).thenAnswer(
        (_) async => Right([form]),
      );

      await tester.pumpWidget(
        createWidgetForTesting(child: Container()),
      );
    });
  });
}