import 'dart:async';

import 'package:billy/common/bloc/bloc_delegator.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

void main() {
  Bloc.observer = BlocDelegator();
  WidgetsFlutterBinding.ensureInitialized();
  
  runZonedGuarded(() {
    runApp(App())
  }, (error, stacktrace) async {});
}