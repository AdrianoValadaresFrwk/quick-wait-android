import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/pages/home_menu_page.dart';

class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomeMenuPage()),
      ];
}
