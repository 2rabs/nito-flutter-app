import 'package:core_styleguide/core_styleguide.dart';
import 'package:core_ui/core_ui.dart';
import 'package:feature_settings/src/ui/component/oss_licenses_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsMobileScreen extends StatelessWidget {
  const SettingsMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // MEMO: styleGuide側で共通のScaffoldにしてもいい
    return Scaffold(
      // TODO(Daichi): Themeでスタイルを決める
      appBar: AppBar(
        // TODO(Daichi): l10nに修正
        title: const Text('設定'),
        automaticallyImplyLeading: !kIsWeb,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Space.x2),
        child: Column(
          children: [
            LineLinkingSection(
              isLineLinked: true,
              onLineLinkingTogglePressed: () {},
            ),
            const OssLicensesSection(),
          ],
        ),
      ),
    );
  }
}
