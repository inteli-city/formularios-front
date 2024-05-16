import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formularios_front/app/data/models/form_model.dart';
import 'package:formularios_front/app/data/repositories/form_mock_repository.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/domain/enum/form_status_enum.dart';
import 'package:formularios_front/app/domain/enum/priority_enum.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'form_mock_repository_test.mocks.dart';

@GenerateMocks([FormMockRepository])
void main() {
  FormMockRepository repository = MockFormMockRepository();
  FormEntity entity0 = FormEntity(
    externFormId: 'ID1142342524249',
    internFormId: '5',
    creatorUserId: '5',
    userId: '2',
    coordinatorsId: ['coordinatorsId'],
    vinculationFormId: null,
    template: 'PV',
    area: 'area',
    system: 'GAIA',
    street: 'street',
    city: 'city',
    number: 1,
    latitude: 1.0,
    longitude: 1.0,
    region: 'region',
    description: 'description',
    priority: PriorityEnum.HIGH,
    status: FormStatusEnum.CONCLUIDO,
    expirationDate: 1,
    creationDate: 1,
    startDate: 1,
    endDate: 1,
    justificative: 'justificative',
    comments: 'comments',
    sections: [],
  );

  setUp(() {
    repository = MockFormMockRepository();
    when(repository.formList).thenReturn([entity0]);
  });

  test('should return 3 forms', () {
    expect(repository.formList, [entity0]);
  });

  test('should return all forms by userId', () async {
    when(repository.getUserForms(userId: entity0.userId)).thenAnswer(
      (_) async => Right([entity0]),
    );

    var result = await repository.getUserForms(userId: entity0.userId);

    expect(result.isRight(), true);

    expect(
      result.fold((left) => null, (forms) => forms),
      isA<List<FormEntity>>(),
    );
    expect(
      result.fold((left) => null, (forms) => forms.length),
      1,
    );
  });

  test('should update a form status by externFormId', () async {
    FormStatusEnum status = FormStatusEnum.EM_ANDAMENTO;
    FormModel formModel = FormModel.entityToModel(entity0);
    FormModel copyFormModel = formModel.copyWith(status: status);

    when(repository.updateFormStatus(
      status: status,
      externFormId: entity0.externFormId,
    )).thenAnswer(
      (_) async {
        return Right(copyFormModel);
      },
    );

    var result = await repository.updateFormStatus(
      status: FormStatusEnum.EM_ANDAMENTO,
      externFormId: entity0.externFormId,
    );

    expect(result.isRight(), true);

    expect(
      result.fold((left) => null, (form) => form),
      isA<FormEntity>(),
    );
    expect(
      result.fold((left) => null, (form) => form.status),
      FormStatusEnum.EM_ANDAMENTO,
    );
  });
}