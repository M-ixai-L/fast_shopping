import 'package:fast_shopping/basket/application/bloc/basket_bloc.dart';
import 'package:fast_shopping/catalog/application/bloc/catalog_bloc.dart';
import 'package:fast_shopping/email_password_login/bloc/email_password_login_bloc.dart';
import 'package:fast_shopping/fs_theme.dart';
import 'package:fast_shopping/login/application/index.dart';
import 'package:fast_shopping/me/application/bloc/me_bloc.dart';
import 'package:fast_shopping/navigation/navigation.dart';
import 'package:fast_shopping/reqister/application/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key, required this.getIt});
  final GetIt getIt;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<GetIt>(
      create: (BuildContext context) => widget.getIt,
      child: MultiBlocProvider(
        providers: <BlocProvider<dynamic>>[
          BlocProvider<LoginBloc>(
            lazy: false,
            create: (BuildContext context) {
              return widget.getIt.get<LoginBloc>();
            },
          ),
          BlocProvider<RegisterBloc>(
            lazy: false,
            create: (BuildContext context) {
              return widget.getIt.get<RegisterBloc>();
            },
          ),
          BlocProvider<EmailPasswordLoginBloc>(
            create: (BuildContext context) {
              return widget.getIt.get<EmailPasswordLoginBloc>();
            },
          ),
          BlocProvider<MeBloc>(
            create: (BuildContext context) {
              return widget.getIt.get<MeBloc>();
            },
          ),
          BlocProvider<CatalogBloc>(
            create: (BuildContext context) {
              return widget.getIt.get<CatalogBloc>();
            },
          ),
          BlocProvider<BasketBloc>(
            create: (BuildContext context) {
              return widget.getIt.get<BasketBloc>();
            },
          ),
        ],
        child: MaterialApp.router(
          theme: FSTheme.getMaterialTheme(),
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        ),
      ),
    );
  }
}
