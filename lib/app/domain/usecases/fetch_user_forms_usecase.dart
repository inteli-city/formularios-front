import 'package:dartz/dartz.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:gates_microapp_flutter/shared/helpers/errors/errors.dart';
import 'package:formularios_front/app/domain/repositories/form_repository.dart';

abstract class IFetchUserFormsUsecase {
  Future<Either<Failure, List<FormEntity>>> call();
}

class FetchUserFormsUsecase implements IFetchUserFormsUsecase {
  final IFormRepository repository;

  FetchUserFormsUsecase({required this.repository});

  @override
  Future<Either<Failure, List<FormEntity>>> call() async {
    return await repository.getUserForms();
  }
}
