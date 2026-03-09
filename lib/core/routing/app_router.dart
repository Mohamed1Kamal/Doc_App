import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/routing/routes.dart';
import 'package:flutter_projects/feature/home/ui/home_screen.dart';
import 'package:flutter_projects/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_projects/feature/login/ui/login_view.dart';
import 'package:flutter_projects/feature/search_doctors/logic/cubit/search_doctors_cubit.dart';
import 'package:flutter_projects/feature/search_doctors/ui/search_doctors.dart';

import '../../feature/home/logic/home_cubit.dart';
import '../../feature/onboarding/presentation/onboarding_view.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(builder: (_) => const OnboardingView());
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())
              ..getSpecializationsDate()
              ..getDoctorsDate(),
            child: const HomeScreen(),
          ),
        );
      case Routes.searchDoctors:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchDoctorsCubit(getIt()),
            child: const SearchDoctors(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text("No route defined for ${settings.name}")),
          ),
        );
    }
  }
}
