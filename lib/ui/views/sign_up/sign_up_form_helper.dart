import 'package:flutter/material.dart';
import 'package:musstarter/models/request/auth/sign_up_request.dart';
import 'package:musstarter/ui/views/sign_up/sign_up_viewmodel.dart';
import 'package:stacked/stacked.dart';

mixin SignUpFormHelper on StackedView<SignUpViewModel> {
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final birthdateController = TextEditingController();

  void clearForm() {
    fullNameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
  }

  void disposeForm() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    birthdateController.dispose();
  }

  SignUpRequest? validateForm() => formKey.currentState!.validate()
      ? SignUpRequest(
          username: usernameController.text,
          fullName: fullNameController.text,
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          birthdate: birthdateController.text)
      : null;
}
