import 'package:demo1/core/injector.config.dart';
import 'package:demo1/core/injector.dart';
import 'package:injectable/injectable.dart';

@InjectableInit(
    asExtension: false,
    generateForDir: ['test', 'lib'],
    preferRelativeImports: true)
Future<void> configureTestDependencies(
        {Environment environment = test}) async =>
    getIt.init(environment: environment.name);
