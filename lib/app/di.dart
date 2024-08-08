import 'dart:async';

import 'package:assessment_test/app/ticker.dart';
import 'package:assessment_test/presentation/main/bloc/main_bloc.dart';
import 'package:get_it/get_it.dart';


final instance = GetIt.instance;

Future<void> initAppModules() async {
  instance.registerLazySingleton<Ticker>(() => const Ticker());
  instance.registerFactory<MainBloc>(() => MainBloc(instance()));
}