
import 'dart:core';
import 'dart:core' as debug;
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/core/di/dependency_injection.dart';
import 'package:flutter_projects/core/helper/constants.dart';
import 'package:flutter_projects/core/helper/shared_pref_helper.dart';
import 'package:flutter_projects/core/routing/app_router.dart';
import 'package:flutter_projects/doc_app.dart';

import 'core/helper/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await setupGetIt();
  await checkIfLoggedInAndNotFirstTimeUser();
  runApp(DocApp(appRouter: AppRouter()));
}

Future<void> checkIfLoggedInAndNotFirstTimeUser() async {
  String? token = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  bool? isFirstTimeUserValue = await SharedPrefHelper.getBool(
    SharedPrefKeys.isFirstTimeUser,
  );
  debug.print('main : isFirstTimeUserValue: $isFirstTimeUserValue');

  if (isFirstTimeUserValue == false) {
    isFirstTimeUser = false;
    if (token.isNotEmpty) {
      isLoggedInUser = true;
    } else {
      isLoggedInUser = false;
    }
  } 
}
