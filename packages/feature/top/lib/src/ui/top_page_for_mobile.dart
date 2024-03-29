import 'package:feature_top/src/ui/top_page_body.dart';
import 'package:flutter/material.dart';

class TopPageForMobile extends StatelessWidget {
  const TopPageForMobile({
    super.key,
    required VoidCallback onSettingsActionPressed,
    required VoidCallback onScheduleListButtonPressed,
  })  : _onSettingsActionPressed = onSettingsActionPressed,
        _onScheduleListButtonPressed = onScheduleListButtonPressed;

  final VoidCallback _onSettingsActionPressed;
  final VoidCallback _onScheduleListButtonPressed;

  @override
  Widget build(BuildContext context) {
    // MEMO: styleGuide側で共通のScaffoldにしてもいい
    return Scaffold(
      // TODO(Daichi): Themeでスタイルを決める
      appBar: AppBar(
        // TODO(Daichi): l10nに修正
        title: const Text('トップ'),
        actions: [
          IconButton(
              onPressed: _onSettingsActionPressed,
              icon: const Icon(Icons.settings))
        ],
      ),
      body: TopPageBody(
        onScheduleListButtonPressed: _onScheduleListButtonPressed,
      ),
    );
  }
}
