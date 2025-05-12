import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_button.dart';
import 'package:fruits_hub_dashboard/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub_dashboard/features/add_product/domain/entities/add_product_input_entity.dart';
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

  late String name, code, description;
  late num price;
  File? image;
  bool isFeatured = false;

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
                CustomTextFormField(
                    onSaved: (value) {
                      name = value!;
                    },
                    hintText: 'Product Name',
                    textInputType: TextInputType.text),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                    onSaved: (value) {
                      price = num.parse(value!);
                    },
                    hintText: 'Product Price',
                    textInputType: TextInputType.number),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                    onSaved: (value) {
                      code = value!.toLowerCase();
                    },
                    hintText: 'Product Code',
                    textInputType: TextInputType.text),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  onSaved: (value) {
                    description = value!;
                  },
                  hintText: 'Product description',
                  textInputType: TextInputType.text,
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 16,
                ),
                IsFeaturedItemCheckBox(
                  onChanged: (value) {
                    isFeatured = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                ImageField(
                  onFileChanged: (image) {
                    this.image = image;
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                    onPressed: () {
                      if (image != null) {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          AddProductInputEntity(
                              name: name,
                              code: code,
                              description: description,
                              price: price,
                              image: image!,
                              isFeatured: isFeatured);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      } else {
                        showError(context);
                      }
                    },
                    text: 'Add Product'),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          )),
    );
  }

  void showError(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text('Please select an image'),
    ));
  }
}
