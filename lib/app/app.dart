import 'package:billy/app/theme.dart';
import 'package:billy/common/literals/env.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  final Env env;

  App({Key key, @required this.env}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [],
      child: MultiBlocProvider(
        providers: [],
        child: MaterialApp(
          localizationsDelegates: [],
          title: 'Flutter Demo',
          theme: basicTheme,
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: Routes.landing,
        ),
      ),
    );
  }
}
