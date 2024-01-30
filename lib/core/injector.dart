import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection({Environment environment = dev}) async =>
    getIt.init(environment: environment.name);
