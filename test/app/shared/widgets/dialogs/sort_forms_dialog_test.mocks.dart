// Mocks generated by Mockito 5.4.4 from annotations
// in formularios_front/test/app/shared/widgets/dialogs/sort_forms_dialog_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i8;
import 'dart:ui' as _i12;

import 'package:formularios_front/app/domain/entities/form_entity.dart' as _i3;
import 'package:formularios_front/app/domain/entities/section_entity.dart'
    as _i11;
import 'package:formularios_front/app/domain/enum/form_status_enum.dart' as _i9;
import 'package:formularios_front/app/domain/enum/order_enum.dart' as _i5;
import 'package:formularios_front/app/presentation/home/controllers/sort_forms_controller.dart'
    as _i4;
import 'package:formularios_front/app/presentation/home/states/form_user_state.dart'
    as _i2;
import 'package:formularios_front/app/presentation/home/stores/forms_provider.dart'
    as _i6;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i10;

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

class _FakeFormUserState_0 extends _i1.SmartFake implements _i2.FormUserState {
  _FakeFormUserState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFormEntity_1 extends _i1.SmartFake implements _i3.FormEntity {
  _FakeFormEntity_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [SortFormsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockSortFormsController extends _i1.Mock
    implements _i4.SortFormsController {
  MockSortFormsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set selectedOrder(_i5.OrderEnum? _selectedOrder) => super.noSuchMethod(
        Invocation.setter(
          #selectedOrder,
          _selectedOrder,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setSelectedOrder(_i5.OrderEnum? value) => super.noSuchMethod(
        Invocation.method(
          #setSelectedOrder,
          [value],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [FormsProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockFormsProvider extends _i1.Mock implements _i6.FormsProvider {
  MockFormsProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FormUserState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeFormUserState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.FormUserState);

  @override
  set state(_i2.FormUserState? _state) => super.noSuchMethod(
        Invocation.setter(
          #state,
          _state,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get pendingRequestsCount => (super.noSuchMethod(
        Invocation.getter(#pendingRequestsCount),
        returnValue: 0,
      ) as int);

  @override
  List<String> get templates => (super.noSuchMethod(
        Invocation.getter(#templates),
        returnValue: <String>[],
      ) as List<String>);

  @override
  List<String> get streets => (super.noSuchMethod(
        Invocation.getter(#streets),
        returnValue: <String>[],
      ) as List<String>);

  @override
  List<String> get systems => (super.noSuchMethod(
        Invocation.getter(#systems),
        returnValue: <String>[],
      ) as List<String>);

  @override
  List<String> get cities => (super.noSuchMethod(
        Invocation.getter(#cities),
        returnValue: <String>[],
      ) as List<String>);

  @override
  List<(String, String, _i7.LatLng)> get locations => (super.noSuchMethod(
        Invocation.getter(#locations),
        returnValue: <(String, String, _i7.LatLng)>[],
      ) as List<(String, String, _i7.LatLng)>);

  @override
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  _i3.FormEntity getFormByExternId(String? externId) => (super.noSuchMethod(
        Invocation.method(
          #getFormByExternId,
          [externId],
        ),
        returnValue: _FakeFormEntity_1(
          this,
          Invocation.method(
            #getFormByExternId,
            [externId],
          ),
        ),
      ) as _i3.FormEntity);

  @override
  void setState(_i2.FormUserState? value) => super.noSuchMethod(
        Invocation.method(
          #setState,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i8.Future<void> fetchFormsLocally() => (super.noSuchMethod(
        Invocation.method(
          #fetchFormsLocally,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<void> syncForms() => (super.noSuchMethod(
        Invocation.method(
          #syncForms,
          [],
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  String getFormsCountByStatus(_i9.FormStatusEnum? status) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFormsCountByStatus,
          [status],
        ),
        returnValue: _i10.dummyValue<String>(
          this,
          Invocation.method(
            #getFormsCountByStatus,
            [status],
          ),
        ),
      ) as String);

  @override
  void filterForms({
    required String? template,
    required String? street,
    required String? city,
    required String? system,
    required _i9.FormStatusEnum? enumStatus,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #filterForms,
          [],
          {
            #template: template,
            #street: street,
            #city: city,
            #system: system,
            #enumStatus: enumStatus,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void orderForms(_i5.OrderEnum? orderEnum) => super.noSuchMethod(
        Invocation.method(
          #orderForms,
          [orderEnum],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i8.Future<_i3.FormEntity?> updateFormStatus({
    required String? formId,
    required _i9.FormStatusEnum? status,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #updateFormStatus,
          [],
          {
            #formId: formId,
            #status: status,
          },
        ),
        returnValue: _i8.Future<_i3.FormEntity?>.value(),
      ) as _i8.Future<_i3.FormEntity?>);

  @override
  _i8.Future<void> sendForm({
    required String? formId,
    required List<_i11.SectionEntity>? sections,
    String? vinculationFormId,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #sendForm,
          [],
          {
            #formId: formId,
            #sections: sections,
            #vinculationFormId: vinculationFormId,
          },
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  _i8.Future<void> saveForm({required _i3.FormEntity? form}) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveForm,
          [],
          {#form: form},
        ),
        returnValue: _i8.Future<void>.value(),
        returnValueForMissingStub: _i8.Future<void>.value(),
      ) as _i8.Future<void>);

  @override
  void addListener(_i12.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i12.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #removeListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose() => super.noSuchMethod(
        Invocation.method(
          #dispose,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void notifyListeners() => super.noSuchMethod(
        Invocation.method(
          #notifyListeners,
          [],
        ),
        returnValueForMissingStub: null,
      );
}
