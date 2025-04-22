import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_text_style.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/custom_chechbox.dart';

class IsFeaturedItemCheckBox extends StatefulWidget {
  const IsFeaturedItemCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<IsFeaturedItemCheckBox> createState() => _IsFeaturedItemCheckBoxState();
}

class _IsFeaturedItemCheckBoxState extends State<IsFeaturedItemCheckBox> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'is Featured Item?',
                    style: TextStyles.semiBold13.copyWith(
                      color: const Color(0xFF949D9E),
                    )),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        CustomChechbox(
          onChanged: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
      ],
    );
  }
}
