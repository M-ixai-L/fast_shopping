import 'package:fast_shopping/injections/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@InjectableInit()
void configureDependencies(GetIt getIt) => getIt.init;
