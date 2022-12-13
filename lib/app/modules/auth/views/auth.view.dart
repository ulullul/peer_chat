import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:get/get.dart';

import '../controllers/auth.controller.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign up'),
        centerTitle: true,
      ),
      body: FormBuilder(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FormBuilderTextField(
                name: AuthForm.fullName.name,
                decoration: const InputDecoration(hintText: 'Full name'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
              ),
              const SizedBox(height: 15),
              FormBuilderTextField(
                name: AuthForm.login.name,
                decoration: const InputDecoration(hintText: 'Login'),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.maxLength(30),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              FormBuilderTextField(
                name: AuthForm.password.name,
                decoration: const InputDecoration(hintText: 'Password'),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8),
                  FormBuilderValidators.maxLength(30),
                ]),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: controller.submit,
                child: const Text('Sign up'),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: controller.import,
                child: Text('Import account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
