// Mocks generated by Mockito 5.4.4 from annotations
// in formularios_front/test/app/presentation/home/widgets/filter_tab_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i11;
import 'dart:ui' as _i16;

import 'package:formularios_front/app/domain/entities/form_entity.dart' as _i3;
import 'package:formularios_front/app/domain/entities/section_entity.dart'
    as _i13;
import 'package:formularios_front/app/domain/entities/template_entity.dart'
    as _i14;
import 'package:formularios_front/app/domain/enum/form_status_enum.dart' as _i5;
import 'package:formularios_front/app/domain/enum/order_enum.dart' as _i8;
import 'package:formularios_front/app/domain/enum/priority_enum.dart' as _i15;
import 'package:formularios_front/app/presentation/home/controllers/filter_form_controller.dart'
    as _i4;
import 'package:formularios_front/app/presentation/home/controllers/select_chip_controller.dart'
    as _i6;
import 'package:formularios_front/app/presentation/home/controllers/sort_forms_controller.dart'
    as _i7;
import 'package:formularios_front/app/presentation/home/states/form_user_state.dart'
    as _i2;
import 'package:formularios_front/app/presentation/home/stores/forms_provider.dart'
    as _i9;
import 'package:google_maps_flutter/google_maps_flutter.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i12;

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

/// A class which mocks [FilterFormsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockFilterFormsController extends _i1.Mock
    implements _i4.FilterFormsController {
  MockFilterFormsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set filteredTemplate(String? _filteredTemplate) => super.noSuchMethod(
        Invocation.setter(
          #filteredTemplate,
          _filteredTemplate,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set filteredStreet(String? _filteredStreet) => super.noSuchMethod(
        Invocation.setter(
          #filteredStreet,
          _filteredStreet,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set filteredCity(String? _filteredCity) => super.noSuchMethod(
        Invocation.setter(
          #filteredCity,
          _filteredCity,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set filteredSystem(String? _filteredSystem) => super.noSuchMethod(
        Invocation.setter(
          #filteredSystem,
          _filteredSystem,
        ),
        returnValueForMissingStub: null,
      );

  @override
  set filteredStatus(_i5.FormStatusEnum? _filteredStatus) => super.noSuchMethod(
        Invocation.setter(
          #filteredStatus,
          _filteredStatus,
        ),
        returnValueForMissingStub: null,
      );

  @override
  int get activeFiltersAmount => (super.noSuchMethod(
        Invocation.getter(#activeFiltersAmount),
        returnValue: 0,
      ) as int);

  @override
  void setTemplate(String? value) => super.noSuchMethod(
        Invocation.method(
          #setTemplate,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setStreet(String? value) => super.noSuchMethod(
        Invocation.method(
          #setStreet,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setCity(String? value) => super.noSuchMethod(
        Invocation.method(
          #setCity,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setSystem(String? value) => super.noSuchMethod(
        Invocation.method(
          #setSystem,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setStatus(_i5.FormStatusEnum? value) => super.noSuchMethod(
        Invocation.method(
          #setStatus,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void clearFilters() => super.noSuchMethod(
        Invocation.method(
          #clearFilters,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SelectChipController].
///
/// See the documentation for Mockito's code generation for more information.
class MockSelectChipController extends _i1.Mock
    implements _i6.SelectChipController {
  MockSelectChipController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<bool> get isSelectedList => (super.noSuchMethod(
        Invocation.getter(#isSelectedList),
        returnValue: <bool>[],
      ) as List<bool>);

  @override
  set isSelectedList(List<bool>? _isSelectedList) => super.noSuchMethod(
        Invocation.setter(
          #isSelectedList,
          _isSelectedList,
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool getSelectedChip(int? index) => (super.noSuchMethod(
        Invocation.method(
          #getSelectedChip,
          [index],
        ),
        returnValue: false,
      ) as bool);

  @override
  void setChipValue(
    int? index,
    bool? value,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #setChipValue,
          [
            index,
            value,
          ],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [SortFormsController].
///
/// See the documentation for Mockito's code generation for more information.
class MockSortFormsController extends _i1.Mock
    implements _i7.SortFormsController {
  MockSortFormsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set selectedOrder(_i8.OrderEnum? _selectedOrder) => super.noSuchMethod(
        Invocation.setter(
          #selectedOrder,
          _selectedOrder,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setSelectedOrder(_i8.OrderEnum? value) => super.noSuchMethod(
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
class MockFormsProvider extends _i1.Mock implements _i9.FormsProvider {
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
  List<(String, String, _i10.LatLng)> get locations => (super.noSuchMethod(
        Invocation.getter(#locations),
        returnValue: <(String, String, _i10.LatLng)>[],
      ) as List<(String, String, _i10.LatLng)>);

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
  _i11.Future<void> fetchFormsLocally() => (super.noSuchMethod(
        Invocation.method(
          #fetchFormsLocally,
          [],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);

  @override
  _i11.Future<void> syncForms() => (super.noSuchMethod(
        Invocation.method(
          #syncForms,
          [],
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);

  @override
  String getFormsCountByStatus(_i5.FormStatusEnum? status) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFormsCountByStatus,
          [status],
        ),
        returnValue: _i12.dummyValue<String>(
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
    required _i5.FormStatusEnum? enumStatus,
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
  void orderForms(_i8.OrderEnum? orderEnum) => super.noSuchMethod(
        Invocation.method(
          #orderForms,
          [orderEnum],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i11.Future<_i3.FormEntity?> updateFormStatus({
    required String? formId,
    required _i5.FormStatusEnum? status,
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
        returnValue: _i11.Future<_i3.FormEntity?>.value(),
      ) as _i11.Future<_i3.FormEntity?>);

  @override
  _i11.Future<void> sendForm({
    required String? formId,
    required List<_i13.SectionEntity>? sections,
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
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);

  @override
  _i11.Future<void> saveForm({required _i3.FormEntity? form}) =>
      (super.noSuchMethod(
        Invocation.method(
          #saveForm,
          [],
          {#form: form},
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);

  @override
  _i11.Future<void> createForm({
    required _i14.TemplateEntity? template,
    required String? area,
    required String? city,
    required String? street,
    required int? number,
    required double? latitude,
    required double? longitude,
    required String? region,
    required _i15.PriorityEnum? priority,
    required String? description,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #createForm,
          [],
          {
            #template: template,
            #area: area,
            #city: city,
            #street: street,
            #number: number,
            #latitude: latitude,
            #longitude: longitude,
            #region: region,
            #priority: priority,
            #description: description,
          },
        ),
        returnValue: _i11.Future<void>.value(),
        returnValueForMissingStub: _i11.Future<void>.value(),
      ) as _i11.Future<void>);

  @override
  void addListener(_i16.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i16.VoidCallback? listener) => super.noSuchMethod(
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
