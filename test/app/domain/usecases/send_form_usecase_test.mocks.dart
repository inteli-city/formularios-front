// Mocks generated by Mockito 5.4.4 from annotations
// in formularios_front/test/app/domain/usecases/send_form_usecase_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:formularios_front/app/domain/entities/form_entity.dart' as _i6;
import 'package:formularios_front/app/domain/entities/section_entity.dart'
    as _i8;
import 'package:formularios_front/app/domain/enum/form_status_enum.dart' as _i7;
import 'package:formularios_front/app/domain/failures/failures.dart' as _i5;
import 'package:formularios_front/app/domain/repositories/form_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [IFormRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockIFormRepository extends _i1.Mock implements _i3.IFormRepository {
  MockIFormRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.FormEntity>>> getUserForms() =>
      (super.noSuchMethod(
        Invocation.method(
          #getUserForms,
          [],
        ),
        returnValue:
            _i4.Future<_i2.Either<_i5.Failure, List<_i6.FormEntity>>>.value(
                _FakeEither_0<_i5.Failure, List<_i6.FormEntity>>(
          this,
          Invocation.method(
            #getUserForms,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.FormEntity>>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, List<_i6.FormEntity>>>
      getUserFormsLocally() => (super.noSuchMethod(
            Invocation.method(
              #getUserFormsLocally,
              [],
            ),
            returnValue:
                _i4.Future<_i2.Either<_i5.Failure, List<_i6.FormEntity>>>.value(
                    _FakeEither_0<_i5.Failure, List<_i6.FormEntity>>(
              this,
              Invocation.method(
                #getUserFormsLocally,
                [],
              ),
            )),
          ) as _i4.Future<_i2.Either<_i5.Failure, List<_i6.FormEntity>>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>> updateFormStatus({
    required _i7.FormStatusEnum? status,
    required String? formId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateFormStatus,
          [],
          {
            #status: status,
            #formId: formId,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.FormEntity>(
          this,
          Invocation.method(
            #updateFormStatus,
            [],
            {
              #status: status,
              #formId: formId,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>> updateFormLocally(
          {required _i6.FormEntity? form}) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateFormLocally,
          [],
          {#form: form},
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.FormEntity>(
          this,
          Invocation.method(
            #updateFormLocally,
            [],
            {#form: form},
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>>);

  @override
  _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>> postForm({
    required String? formId,
    required List<_i8.SectionEntity>? sections,
    String? vinculationFormId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postForm,
          [],
          {
            #formId: formId,
            #sections: sections,
            #vinculationFormId: vinculationFormId,
          },
        ),
        returnValue: _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>>.value(
            _FakeEither_0<_i5.Failure, _i6.FormEntity>(
          this,
          Invocation.method(
            #postForm,
            [],
            {
              #formId: formId,
              #sections: sections,
              #vinculationFormId: vinculationFormId,
            },
          ),
        )),
      ) as _i4.Future<_i2.Either<_i5.Failure, _i6.FormEntity>>);
}
