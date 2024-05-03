import 'package:flutter/material.dart';
import 'package:formularios_front/app/domain/enum/form_status_enum.dart';
import 'package:formularios_front/app/injector.dart';
import 'package:formularios_front/app/presentation/controllers/filter_form_controller.dart';
import 'package:formularios_front/app/presentation/controllers/select_chip_controller.dart';
import 'package:formularios_front/app/presentation/controllers/sort_forms_controller.dart';
import 'package:formularios_front/app/presentation/stores/providers/form_user_provider.dart';
import 'package:formularios_front/app/presentation/widgets/dialogs/filter_order_dialog.dart';
import 'package:formularios_front/app/presentation/widgets/dialogs/sort_forms_dialog.dart';
import 'package:formularios_front/app/shared/helpers/utils/screen_helper.dart';
import 'package:formularios_front/app/shared/themes/app_colors.dart';
import 'package:formularios_front/app/shared/themes/app_dimensions.dart';
import 'package:badges/badges.dart' as badges;
import 'package:formularios_front/app/shared/themes/app_text_styles.dart';
import 'package:formularios_front/generated/l10n.dart';

class FilterTabWidget extends StatefulWidget {
  const FilterTabWidget({super.key});

  @override
  State<FilterTabWidget> createState() => _FilterTabWidgetState();
}

class _FilterTabWidgetState extends State<FilterTabWidget> {
  FilterFormsController filterController =
      injector.get<FilterFormsController>();
  SortFormsController sortController = injector.get<SortFormsController>();
  SelectChipController selectChipController =
      injector.get<SelectChipController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: ScreenHelper.height(context) * 0.1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              FormStatusEnum.values.length,
              (index) => _choiceChip(
                index,
                FormStatusEnum.values[index],
              ),
            ),
          ),
        ),
        const SizedBox(height: AppDimensions.paddingMedium),
        _buildSearchFilterTab(),
      ],
    );
  }

  Widget _buildSearchFilterTab() {
    return Padding(
      padding: const EdgeInsets.only(left: AppDimensions.paddingSmall),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 16,
              ),
            ),
            onPressed: () async {
              await showModalBottomSheet(
                useRootNavigator: true,
                context: context,
                builder: (context) => const SortFormsDialog(),
              );
              setState(() {});
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: AppDimensions.paddingSmall),
                  child: Text(
                    sortController.selectedOrder != null
                        ? sortController.selectedOrder!.enumString
                        : S.of(context).sort,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: AppDimensions.paddingMedium,
          ),
          badges.Badge(
            showBadge: filterController.activeFiltersAmount != 0,
            position: badges.BadgePosition.topEnd(),
            badgeStyle: badges.BadgeStyle(
              badgeColor: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.all(
                AppDimensions.paddingSmall * 0.8,
              ),
            ),
            badgeContent: Text(
              filterController.activeFiltersAmount.toString(),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
            child: IconButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return const FilterOrderDialog();
                  },
                );
                setState(() {});
              },
              icon: const Icon(Icons.filter_list),
            ),
          ),
          const Spacer(),
          Tooltip(
            padding: const EdgeInsets.all(AppDimensions.paddingSmall),
            showDuration: const Duration(seconds: 2),
            textAlign: TextAlign.center,
            exitDuration: const Duration(seconds: 1),
            waitDuration: const Duration(milliseconds: 500),
            message: S.of(context).priorityTooltip,
            triggerMode: TooltipTriggerMode.longPress,
            child: IconButton(
              alignment: Alignment.center,
              iconSize: AppDimensions.iconSmall,
              style: ButtonStyle(
                  shape: const MaterialStatePropertyAll(CircleBorder()),
                  backgroundColor: MaterialStatePropertyAll(
                      Theme.of(context).colorScheme.primary)),
              onPressed: () {},
              color: AppColors.primaryBlue,
              padding: const EdgeInsets.all(AppDimensions.paddingMedium),
              icon: Icon(
                Icons.question_mark,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _choiceChip(int index, FormStatusEnum statusEnum) {
    var filterController = injector.get<FilterFormsController>();
    return ChoiceChip(
      labelPadding: EdgeInsets.zero,
      label: SizedBox(
        width: ScreenHelper.width(context) * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              statusEnum.enumString,
              style: AppTextStyles.bodyText1.copyWith(
                fontWeight: FontWeight.bold,
                color: selectChipController.getSelectedChip(index)
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              style: AppTextStyles.titleMedium.copyWith(
                color: selectChipController.getSelectedChip(index)
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
              '(${injector.get<FormUserProvider>().getFormsCountByStatus(statusEnum)})',
            ),
          ],
        ),
      ),
      selected: selectChipController.getSelectedChip(index),
      onSelected: (bool selected) {
        setState(() {
          for (int i = 0; i < selectChipController.isSelectedList.length; i++) {
            bool value = (i == index && selected);
            selectChipController.setChipValue(i, value);
          }
          filterController.setStatus(selected ? statusEnum : null);
          injector.get<FormUserProvider>().filterForms(
                city: filterController.filteredCity,
                enumStatus: filterController.filteredStatus,
                street: filterController.filteredStreet,
                system: filterController.filteredSystem,
                template: filterController.filteredTemplate,
              );
        });
      },
      selectedColor: Theme.of(context).colorScheme.primary,
      checkmarkColor: AppColors.green,
      showCheckmark: false,
      backgroundColor: Theme.of(context).colorScheme.secondary,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.paddingSmall,
        vertical: AppDimensions.paddingMedium,
      ),
      elevation: 5,
      pressElevation: 5,
      shadowColor: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 2,
          color: Theme.of(context).colorScheme.primary,
        ),
        borderRadius: BorderRadius.circular(AppDimensions.radiusExtraLarge),
      ),
    );
  }
}