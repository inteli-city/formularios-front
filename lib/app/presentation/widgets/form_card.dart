import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:formularios_front/app/domain/entities/form_entity.dart';
import 'package:formularios_front/app/shared/themes/app_dimensions.dart';
import 'package:intl/intl.dart';

class FormCard extends StatefulWidget {
  final FormEntity form;

  const FormCard({super.key, required this.form});

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    Modular.to.pushNamed('/home/${widget.form.externFormId}');
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    FormEntity form = widget.form;
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(widget.form.expirationDate);
    String formattedDate = DateFormat('dd/MM/yyyy HH:mm:ss').format(dateTime);

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              AppDimensions.radiusLarge,
            ),
            side: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              style: BorderStyle.solid,
              width: AppDimensions.borderMedium,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(
                vertical: AppDimensions.paddingSmall,
                horizontal: AppDimensions.paddingMedium),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${form.system} - ${form.template} - ${form.externFormId}',
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.circle,
                      size: AppDimensions.iconSmall * 1.6,
                      color: form.priority.color,
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  '${form.city} - ${form.street}, ${form.number}',
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  formattedDate,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  form.description ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
