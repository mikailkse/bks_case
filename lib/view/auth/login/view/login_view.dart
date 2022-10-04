import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/bottommodal/bottom_modal.dart';
import '../../../../core/components/buttons/elevatedbutton/endavour_elevated_button.dart';
import '../../../../core/components/container/home_background_container.dart';
import '../../../../core/components/text/button/button_large_text.dart';
import '../../../../core/components/textformfield/custom_text_form_field.dart';
import '../../../../core/constants/color/app_colors.dart';
import '../viewmodel/login_view_model.dart';

class LoginView extends StatefulWidget {
  static const routeName = 'loginView';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: HomeBackgroundContainer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: EndeavourElevatedButton(
        onPressed: () => buildTextFormContainerModal(context),
        child: ButtonLargeText(
          text: 'Giriş Yap',
          color: AppColors.white,
        ),
      ),
    );
  }

  Future<dynamic> buildTextFormContainerModal(BuildContext context) {
    return customBottomModal(
      context,
      (builder) => Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox(
          height: context.height / 1.5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    buildLoginForm(context),
                  ],
                ),
              ),
              const Spacer(),
              EndeavourElevatedButton(
                onPressed: () =>
                    context.read<LoginViewModel>().loginCheck(context),
                child: const Text('Devam'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  // Login formları

  Widget buildLoginForm(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, viewModel, child) => Form(
        key: viewModel.formState,
        child: Column(
          children: [
            Padding(
              padding: context.paddingLow,
              child: CustomTextFormField(
                controller: viewModel.loginEmailController,
                labelText: 'Kullanıcı Adı ',
                hintText: 'Kullanıcı Adı giriniz',
                prefixIcon: Icon(Icons.account_circle, color: AppColors.grey),
              ),
            ),
            Padding(
              padding: context.paddingLow,
              child: CustomTextFormField(
                controller: viewModel.loginPasswordController,
                labelText: 'Parola',
                hintText: 'Parolanızı girin',
                obscureText: viewModel.isLockOpen,
                suffixIcon: IconButton(
                  onPressed: () => viewModel.isLockStateChange(),
                  padding: EdgeInsets.zero,
                  icon: Icon(
                    viewModel.isLockOpen
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: AppColors.grey,
                  ),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
