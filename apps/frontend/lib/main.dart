import 'package:core_network/core_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:frontend/src/app.dart';
import 'package:frontend/src/utils/flutter_liff.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // NOTE: Webページで '#' が混在するのを防ぐ
  usePathUrlStrategy();

  // NOTE: env ファイルの読み込み
  await dotenv.load();

  // NOTE: LIFF
  await useLiff(
    liffId: dotenv.get('LIFF_ID', fallback: '.env に LIFF_ID を指定してください。'),
  );

  // Supabase の初期化
  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(
     ProviderScope(
      overrides: [
        ...supabaseOverrideNetworkProvider,
      ],
      child: const App(),
    ),
  );
}
