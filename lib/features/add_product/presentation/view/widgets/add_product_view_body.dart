import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/image_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/presentation/view/widgets/is_featured_item_check_box.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const CustomTextFormField(
                    hintText: 'Product Name',
                    textInputType: TextInputType.text),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                    hintText: 'Product Price',
                    textInputType: TextInputType.number),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                    hintText: 'Product Code',
                    textInputType: TextInputType.number),
                SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  hintText: 'Product description',
                  textInputType: TextInputType.text,
                  maxLines: 5,
                ),
                SizedBox(
                  height: 16,
                ),
                IsFeaturedItemCheckBox(
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: 16,
                ),
                ImageField(
                  onFileChanged: (image) {},
                ),
              ],
            ),
          )),
    );
  }
}
