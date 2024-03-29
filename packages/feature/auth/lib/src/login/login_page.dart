import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:feature_auth/src/login/component/login_form.dart';
import 'package:feature_auth/src/login/login_page_controller.dart';
import 'package:core_styleguide/core_styleguide.dart';
import 'package:feature_auth/src/login/component/align_right_text_bottom.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({
    super.key,
    required VoidCallback onLoginSucceeded,
    required VoidCallback goEntrancePage,
  })  : _onLoginSucceeded = onLoginSucceeded,
        _goEntrancePage = goEntrancePage;

  final VoidCallback _onLoginSucceeded;
  final VoidCallback _goEntrancePage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginPageController);
    final controller = ref.watch(loginPageController.notifier);

    return _StatelessLoginPage(
      isSuccessSignIn: state.isLogin,
      isSignInProcessing: state.isLoginProcessing,
      emailController: controller.emailController,
      passwordController: controller.passwordController,
      onPasswordFieldSubmitted: controller.onPasswordFieldSubmitted,
      onSignInButtonPressed: controller.onSignInButtonPressed,
      onLoginSucceeded: _onLoginSucceeded,
      goEntrancePage: _goEntrancePage,
    );
  }
}

class _StatelessLoginPage extends StatelessWidget {
  const _StatelessLoginPage({
    required this.isSuccessSignIn,
    required this.isSignInProcessing,
    required this.emailController,
    required this.passwordController,
    required this.onPasswordFieldSubmitted,
    required this.onSignInButtonPressed,
    required this.onLoginSucceeded,
    required this.goEntrancePage,
  });

  final bool isSuccessSignIn;
  final bool isSignInProcessing;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final Future<void> Function() onPasswordFieldSubmitted;
  final Future<void> Function() onSignInButtonPressed;
  final VoidCallback onLoginSucceeded;
  final VoidCallback goEntrancePage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('サインイン')),
      body: Padding(
        padding: const EdgeInsets.all(Space.x3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('NITO はログインが必要です。'),
            const NitoGap.heightX3(),
            LoginForm(
              isSuccessSignIn: isSuccessSignIn,
              isSignInProcessing: isSignInProcessing,
              emailController: emailController,
              passwordController: passwordController,
              onPasswordFieldSubmitted: onPasswordFieldSubmitted,
              onSignInButtonPressed: onSignInButtonPressed,
              onLoginSucceeded: onLoginSucceeded,
            ),
            const NitoGap.heightX3(),
            AlignRightTextBottom(
              text: '仲間入りしたい方はこちら！',
              onPressed: goEntrancePage,
            ),
          ],
        ),
      ),
    );
  }
}
