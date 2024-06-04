import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:formularios_front/app/domain/entities/field_entity.dart';
import 'package:formularios_front/app/domain/entities/section_entity.dart';
import 'package:formularios_front/app/presentation/form/controllers/form_controller.dart';
import 'package:formularios_front/app/presentation/mixins/validation_mixin.dart';

class CustomCheckBoxGroupFormField extends StatelessWidget
    with ValidationMixin {
  final CheckBoxGroupFieldEntity field;
  final Function(String) onChanged;
  final SectionEntity sectionEntity;

  CustomCheckBoxGroupFormField({
    super.key,
    required this.field,
    required this.onChanged,
    required this.sectionEntity,
  });

  @override
  Widget build(BuildContext context) {
    final formController = Modular.get<FormController>();
    List<String>? selectedOptions =
        formController.formData[sectionEntity.sectionId];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(field.placeholder),
        ...field.options.map((option) {
          return CheckboxListTile(
            title: Text(option),
            value: selectedOptions?.contains(option),
            onChanged: (newValue) {
              if (newValue == true) {
                selectedOptions?.add(option);
              } else {
                selectedOptions?.remove(option);
              }
            },
            controlAffinity: ListTileControlAffinity.leading,
            contentPadding: EdgeInsets.zero,
          );
        }),
      ],
    );
  }
}
