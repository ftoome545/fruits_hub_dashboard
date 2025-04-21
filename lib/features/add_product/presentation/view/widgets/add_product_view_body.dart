import 'package:flutter/material.dart';

class AddProductViewBody extends StatefulWidget {
  const AddProductViewBody({super.key});

  @override
  State<AddProductViewBody> createState() => _AddProductViewBodyState();
}

class _AddProductViewBodyState extends State<AddProductViewBody> {
  GlobalKey<FormState> _formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
          child: const Column()),
    );
  }
}
