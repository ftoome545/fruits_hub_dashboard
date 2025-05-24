import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/utils/app_text_style.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/custom_chechbox.dart';

class IsOrganicCheckBox extends StatefulWidget {
  const IsOrganicCheckBox({super.key, required this.onChanged});

  final ValueChanged<bool> onChanged;

  @override
  State<IsOrganicCheckBox> createState() => _IsOrganicCheckBoxState();
}

class _IsOrganicCheckBoxState extends State<IsOrganicCheckBox> {
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
                    text: 'is Organic Item?',
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
