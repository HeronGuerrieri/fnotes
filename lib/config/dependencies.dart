import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../data/repositories/locale/locale_repository_local.dart';
import '../data/services/cache/custom_shared_preferences_impl.dart';

List<SingleChildWidget> get dependencies {
  return [
    Provider(create: (context) => CustomSharedPreferencesImpl()),
    ChangeNotifierProvider(
      create: (context) => LocaleRepositoryLocal(
        customSharedPreferences: context.read(),
      ),
    ),
  ];
}
