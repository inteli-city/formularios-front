import 'package:dartz/dartz.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/domain/enum/form_status_enum.dart';
import 'package:formularios_front/app/domain/enum/priority_enum.dart';
import 'package:formularios_front/app/domain/failures/failures.dart';
import 'package:formularios_front/app/domain/repositories/form_repository.dart';

class FormMockRepository extends IFormRepository {
  List<FormEntity> formList = [
    FormEntity(
      externFormId: 'ID1142342524242',
      internFormId: '1',
      creatorUserId: '1',
      userId: '1',
      coordinatorsId: ['1314312731967', '1314312731967', '1314312731967'],
      vinculationFormId: '10',
      template: 'Poda de Árvore',
      area: 'area',
      system: 'Gaia',
      street: 'Rua Samuel Morse',
      city: 'São Paulo',
      number: 120,
      latitude: -23.61148,
      longitude: -46.69416,
      region: 'region',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing  elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.',
      priority: PriorityEnum.HIGH,
      status: FormStatusEnum.CONCLUIDO,
      expirationDate: 1715000631000,
      creationDate: 1704561963000,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '1',
      internFormId: '1',
      creatorUserId: '1',
      userId: '1',
      coordinatorsId: ['coordinatorsId'],
      vinculationFormId: null,
      template: 'Poda de Árvore 2',
      area: 'area',
      system: 'Gaia',
      street: 'Rua Samuel Morse 74',
      city: 'city',
      number: 1,
      latitude: 1.0,
      longitude: 1.0,
      region: 'region',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut purus elit, vestibulum ut, placerat ac, adipiscing vitae, felis.',
      priority: PriorityEnum.HIGH,
      status: FormStatusEnum.EM_ANDAMENTO,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '1',
      internFormId: '1',
      creatorUserId: '1',
      userId: '1',
      coordinatorsId: ['coordinatorsId'],
      vinculationFormId: null,
      template: 'Poda de Árvore 3',
      area: 'area',
      system: 'Gaia',
      street: 'Rua Samuel Morse 74',
      city: 'city',
      number: 1,
      latitude: 1.0,
      longitude: 1.0,
      region: 'region',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
      priority: PriorityEnum.HIGH,
      status: FormStatusEnum.EM_ANDAMENTO,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '1',
      internFormId: '1',
      creatorUserId: '1',
      userId: '1',
      coordinatorsId: ['coordinatorsId'],
      vinculationFormId: null,
      template: 'Poda de Árvore 4',
      area: 'area',
      system: 'Gaia',
      street: 'Rua Samuel Morse 74',
      city: 'city',
      number: 1,
      latitude: 1.0,
      longitude: 1.0,
      region: 'region',
      description: 'description',
      priority: PriorityEnum.HIGH,
      status: FormStatusEnum.EM_ANDAMENTO,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '2',
      internFormId: '2',
      creatorUserId: '2',
      userId: '1',
      coordinatorsId: ['coordinatorsId'],
      vinculationFormId: null,
      template: 'Poda de Árvore 5',
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
      status: FormStatusEnum.EM_ANDAMENTO,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '3',
      internFormId: '3',
      creatorUserId: '2',
      userId: '1',
      coordinatorsId: ['coordinatorsId'],
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
      status: FormStatusEnum.EM_ANDAMENTO,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '4',
      internFormId: '4',
      creatorUserId: '4',
      userId: '2',
      coordinatorsId: ['coordinatorsId'],
      vinculationFormId: null,
      template: 'Inspeção de PV',
      area: 'area',
      system: 'JUNDIAI',
      street: 'street',
      city: 'city',
      number: 1,
      latitude: 1.0,
      longitude: 1.0,
      region: 'region',
      description: 'description',
      priority: PriorityEnum.HIGH,
      status: FormStatusEnum.NAO_INICIADO,
      expirationDate: 1,
      creationDate: 1,
      startDate: 1,
      endDate: 1,
      justificative: 'justificative',
      comments: 'comments',
      sections: [],
    ),
    FormEntity(
      externFormId: '5',
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
    ),
  ];

  @override
  Future<Either<Failure, List<FormEntity>>> getUserForms(
      {required String userId}) async {
    await Future.delayed(const Duration(seconds: 2));

    return right(
      formList.where((element) => element.userId == userId).toList(),
    );
  }
}
