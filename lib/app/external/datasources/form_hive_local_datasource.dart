import 'package:formularios_front/app/data/adapters/form_adapter.dart';
import 'package:formularios_front/app/data/datasources/form_local_datasource.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FormHiveLocalDatasource extends IFormLocalDatasource {
  final Box storage;

  FormHiveLocalDatasource(this.storage);

  @override
  Future<void> deleteForm({required String formId}) async {
    var forms = FormAdapter.fromJsonList(await storage.get('forms'));

    var index = forms.indexWhere((element) => element.formId == formId);

    forms.removeAt(index);

    await saveForms(forms: forms.map((e) => FormAdapter.toJson(e)).toList());
  }

  @override
  Future<List<FormEntity>> getForms() async {
    List form = storage.get('forms');

    return FormAdapter.fromJsonList(form);
  }

  @override
  Future<void> saveForms({required List forms}) async {
    await storage.put('forms', forms);
  }

  @override
  Future<void> updateForm({required FormEntity form}) async {
    List forms = await storage.get('forms');

    var index =
        forms.indexWhere((element) => element['form_id'] == form.formId);

    forms.removeAt(index);

    forms.insert(index, FormAdapter.toJson(form));

    await saveForms(forms: forms);
  }
}
