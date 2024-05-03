// Mocks generated by Mockito 5.4.4 from annotations
// in formularios_front/test/app/domain/widgets/search_filter_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i13;
import 'dart:ui' as _i17;

import 'package:auto_injector/src/auto_injector_base.dart' as _i18;
import 'package:auto_injector/src/bind.dart' as _i20;
import 'package:auto_injector/src/param.dart' as _i19;
import 'package:dartz/dartz.dart' as _i3;
import 'package:formularios_front/app/domain/entities/form_entity.dart' as _i15;
import 'package:formularios_front/app/domain/enum/form_status_enum.dart' as _i6;
import 'package:formularios_front/app/domain/enum/order_enum.dart' as _i9;
import 'package:formularios_front/app/domain/failures/failures.dart' as _i14;
import 'package:formularios_front/app/domain/repositories/form_repository.dart'
    as _i2;
import 'package:formularios_front/app/domain/usecases/fetch_user_forms_usecase.dart'
    as _i12;
import 'package:formularios_front/app/presentation/controllers/filter_form_controller.dart'
    as _i5;
import 'package:formularios_front/app/presentation/controllers/select_chip_controller.dart'
    as _i7;
import 'package:formularios_front/app/presentation/controllers/sort_forms_controller.dart'
    as _i8;
import 'package:formularios_front/app/presentation/states/form_user_state.dart'
    as _i4;
import 'package:formularios_front/app/presentation/stores/providers/form_user_provider.dart'
    as _i16;
import 'package:formularios_front/generated/l10n.dart' as _i10;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i11;

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

class _FakeIFormRepository_0 extends _i1.SmartFake
    implements _i2.IFormRepository {
  _FakeIFormRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFormUserState_2 extends _i1.SmartFake implements _i4.FormUserState {
  _FakeFormUserState_2(
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
    implements _i5.FilterFormsController {
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
  set filteredStatus(_i6.FormStatusEnum? _filteredStatus) => super.noSuchMethod(
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
  void setStatus(_i6.FormStatusEnum? value) => super.noSuchMethod(
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
    implements _i7.SelectChipController {
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
    implements _i8.SortFormsController {
  MockSortFormsController() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set selectedOrder(_i9.OrderEnum? _selectedOrder) => super.noSuchMethod(
        Invocation.setter(
          #selectedOrder,
          _selectedOrder,
        ),
        returnValueForMissingStub: null,
      );

  @override
  void setSelectedOrder(_i9.OrderEnum? value) => super.noSuchMethod(
        Invocation.method(
          #setSelectedOrder,
          [value],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [S].
///
/// See the documentation for Mockito's code generation for more information.
class MockS extends _i1.Mock implements _i10.S {
  MockS() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get noFormsFound => (super.noSuchMethod(
        Invocation.getter(#noFormsFound),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#noFormsFound),
        ),
      ) as String);

  @override
  String get filters => (super.noSuchMethod(
        Invocation.getter(#filters),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#filters),
        ),
      ) as String);

  @override
  String get clearFilters => (super.noSuchMethod(
        Invocation.getter(#clearFilters),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#clearFilters),
        ),
      ) as String);

  @override
  String get confirm => (super.noSuchMethod(
        Invocation.getter(#confirm),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.getter(#confirm),
        ),
      ) as String);

  @override
  String entityErrorMessage(
    Object? placeholders,
    Object? entityErrorMessage,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #entityErrorMessage,
          [
            placeholders,
            entityErrorMessage,
          ],
        ),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.method(
            #entityErrorMessage,
            [
              placeholders,
              entityErrorMessage,
            ],
          ),
        ),
      ) as String);

  @override
  String requestErrorMessage(
    Object? placeholders,
    Object? message,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestErrorMessage,
          [
            placeholders,
            message,
          ],
        ),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.method(
            #requestErrorMessage,
            [
              placeholders,
              message,
            ],
          ),
        ),
      ) as String);

  @override
  String noItemsFoundErrorMessage(
    Object? placeholders,
    Object? message,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #noItemsFoundErrorMessage,
          [
            placeholders,
            message,
          ],
        ),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.method(
            #noItemsFoundErrorMessage,
            [
              placeholders,
              message,
            ],
          ),
        ),
      ) as String);

  @override
  String orderEnumSchema(Object? schema) => (super.noSuchMethod(
        Invocation.method(
          #orderEnumSchema,
          [schema],
        ),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.method(
            #orderEnumSchema,
            [schema],
          ),
        ),
      ) as String);

  @override
  String priorityEnumSchema(Object? schema) => (super.noSuchMethod(
        Invocation.method(
          #priorityEnumSchema,
          [schema],
        ),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.method(
            #priorityEnumSchema,
            [schema],
          ),
        ),
      ) as String);

  @override
  String formStatusEnumSchema(Object? schema) => (super.noSuchMethod(
        Invocation.method(
          #formStatusEnumSchema,
          [schema],
        ),
        returnValue: _i11.dummyValue<String>(
          this,
          Invocation.method(
            #formStatusEnumSchema,
            [schema],
          ),
        ),
      ) as String);
}

/// A class which mocks [FetchUserFormsUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockFetchUserFormsUsecase extends _i1.Mock
    implements _i12.FetchUserFormsUsecase {
  MockFetchUserFormsUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.IFormRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeIFormRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.IFormRepository);

  @override
  _i13.Future<_i3.Either<_i14.Failure, List<_i15.FormEntity>>> call(
          {required String? userId}) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {#userId: userId},
        ),
        returnValue:
            _i13.Future<_i3.Either<_i14.Failure, List<_i15.FormEntity>>>.value(
                _FakeEither_1<_i14.Failure, List<_i15.FormEntity>>(
          this,
          Invocation.method(
            #call,
            [],
            {#userId: userId},
          ),
        )),
      ) as _i13.Future<_i3.Either<_i14.Failure, List<_i15.FormEntity>>>);
}

/// A class which mocks [FormUserProvider].
///
/// See the documentation for Mockito's code generation for more information.
class MockFormUserProvider extends _i1.Mock implements _i16.FormUserProvider {
  MockFormUserProvider() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.FormUserState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeFormUserState_2(
          this,
          Invocation.getter(#state),
        ),
      ) as _i4.FormUserState);

  @override
  set state(_i4.FormUserState? _state) => super.noSuchMethod(
        Invocation.setter(
          #state,
          _state,
        ),
        returnValueForMissingStub: null,
      );

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
  bool get hasListeners => (super.noSuchMethod(
        Invocation.getter(#hasListeners),
        returnValue: false,
      ) as bool);

  @override
  void setState(_i4.FormUserState? value) => super.noSuchMethod(
        Invocation.method(
          #setState,
          [value],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void fetchUserForms() => super.noSuchMethod(
        Invocation.method(
          #fetchUserForms,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String getFormsCountByStatus(_i6.FormStatusEnum? status) =>
      (super.noSuchMethod(
        Invocation.method(
          #getFormsCountByStatus,
          [status],
        ),
        returnValue: _i11.dummyValue<String>(
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
    required _i6.FormStatusEnum? enumStatus,
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
  void orderForms(_i9.OrderEnum? orderEnum) => super.noSuchMethod(
        Invocation.method(
          #orderForms,
          [orderEnum],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addListener(_i17.VoidCallback? listener) => super.noSuchMethod(
        Invocation.method(
          #addListener,
          [listener],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeListener(_i17.VoidCallback? listener) => super.noSuchMethod(
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

/// A class which mocks [AutoInjector].
///
/// See the documentation for Mockito's code generation for more information.
class MockAutoInjector extends _i1.Mock implements _i18.AutoInjector {
  MockAutoInjector() {
    _i1.throwOnMissingStub(this);
  }

  @override
  int get bindLength => (super.noSuchMethod(
        Invocation.getter(#bindLength),
        returnValue: 0,
      ) as int);

  @override
  void addInjector(_i18.AutoInjector? injector) => super.noSuchMethod(
        Invocation.method(
          #addInjector,
          [injector],
        ),
        returnValueForMissingStub: null,
      );

  @override
  bool isAdded<T>({String? key}) => (super.noSuchMethod(
        Invocation.method(
          #isAdded,
          [],
          {#key: key},
        ),
        returnValue: false,
      ) as bool);

  @override
  bool isInstantiateSingleton<T>({String? key}) => (super.noSuchMethod(
        Invocation.method(
          #isInstantiateSingleton,
          [],
          {#key: key},
        ),
        returnValue: false,
      ) as bool);

  @override
  void replaceInstance<T>(
    T? instance, {
    String? key,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #replaceInstance,
          [instance],
          {#key: key},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void commit() => super.noSuchMethod(
        Invocation.method(
          #commit,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void uncommit() => super.noSuchMethod(
        Invocation.method(
          #uncommit,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void dispose([void Function(dynamic)? instanceCallback]) =>
      super.noSuchMethod(
        Invocation.method(
          #dispose,
          [instanceCallback],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void disposeRecursive() => super.noSuchMethod(
        Invocation.method(
          #disposeRecursive,
          [],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void disposeInjectorByTag(
    String? injectorTag, [
    void Function(dynamic)? instanceCallback,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #disposeInjectorByTag,
          [
            injectorTag,
            instanceCallback,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addDisposeListener(_i18.VoidCallback? callback) => super.noSuchMethod(
        Invocation.method(
          #addDisposeListener,
          [callback],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void removeDisposeListener(_i18.VoidCallback? callback) => super.noSuchMethod(
        Invocation.method(
          #removeDisposeListener,
          [callback],
        ),
        returnValueForMissingStub: null,
      );

  @override
  T get<T>({
    _i19.ParamTransform? transform,
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
          {
            #transform: transform,
            #key: key,
          },
        ),
        returnValue: _i11.dummyValue<T>(
          this,
          Invocation.method(
            #get,
            [],
            {
              #transform: transform,
              #key: key,
            },
          ),
        ),
      ) as T);

  @override
  T call<T>({
    _i19.ParamTransform? transform,
    String? key,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
          {
            #transform: transform,
            #key: key,
          },
        ),
        returnValue: _i11.dummyValue<T>(
          this,
          Invocation.method(
            #call,
            [],
            {
              #transform: transform,
              #key: key,
            },
          ),
        ),
      ) as T);

  @override
  void add<T>(
    Function? constructor, {
    _i20.BindConfig<T>? config,
    String? key,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #add,
          [constructor],
          {
            #config: config,
            #key: key,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addInstance<T>(
    T? instance, {
    _i20.BindConfig<T>? config,
    String? key,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #addInstance,
          [instance],
          {
            #config: config,
            #key: key,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addSingleton<T>(
    Function? constructor, {
    _i20.BindConfig<T>? config,
    String? key,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #addSingleton,
          [constructor],
          {
            #config: config,
            #key: key,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addLazySingleton<T>(
    Function? constructor, {
    _i20.BindConfig<T>? config,
    String? key,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #addLazySingleton,
          [constructor],
          {
            #config: config,
            #key: key,
          },
        ),
        returnValueForMissingStub: null,
      );
}
