import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/routing/routes.dart';
import 'package:flutter_projects/feature/home/ui/bottom_app_bar_screen.dart';
import 'package:flutter_projects/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter_projects/feature/login/ui/login_view.dart';
import 'package:flutter_projects/feature/medical_record/ui/medical_record_screen.dart';
import 'package:flutter_projects/feature/payment/ui/payment_screen.dart';
import 'package:flutter_projects/feature/personal_info/ui/personal_info.dart';
import 'package:flutter_projects/feature/register/logic/cubit/cubit.dart';
import 'package:flutter_projects/feature/register/ui/register_view.dart';
import 'package:flutter_projects/feature/search_doctors/logic/cubit/search_doctors_cubit.dart';
import 'package:flutter_projects/feature/search_doctors/ui/search_doctors.dart';
import 'package:flutter_projects/feature/settings/ui/faq/faq_screen.dart';
import 'package:flutter_projects/feature/settings/ui/languages/languages_screen.dart';
import 'package:flutter_projects/feature/settings/ui/notification/notification_screen.dart';
import 'package:flutter_projects/feature/settings/ui/security/securtity_screen.dart';
import 'package:flutter_projects/feature/settings/ui/settings_screen.dart';

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
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())
              ..getSpecializationsDate(),
              
            child: const BottomAppBarScreen(),
          ),
        );
      case Routes.searchDoctors:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => SearchDoctorsCubit(getIt()),
            child: const SearchDoctors(),
          ),

        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>RegisterCubit(getIt()),
            child: const RegisterView(),
          ),
        );
      case Routes.personalInfoScreen:
        return MaterialPageRoute(
          builder: (_) => const PersonalInfoScreen(),
        );
      case Routes.medicalRecordScreen:
        return MaterialPageRoute(
          builder: (_) => const MedicalRecordScreen(),
        );
        case Routes.paymentScreen:
        return MaterialPageRoute( 
          builder: (_) => PaymentScreen(),
        );
         case Routes.settingsScreen:
        return MaterialPageRoute( 
          builder: (_) =>  SettingsScreen(),
        );
         case Routes.notificationScreen:
        return MaterialPageRoute( 
          builder: (_) =>  NotificationScreen(),
        );
        case Routes.securityScreen:
        return MaterialPageRoute( 
          builder: (_) =>  SecurityScreen(),
        );
          case Routes.languagesScreen:
        return MaterialPageRoute( 
          builder: (_) =>  LanguageScreen(),
        );
         case Routes.faqscreen:
        return MaterialPageRoute( 
          builder: (_) =>  FAQScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text("No route defined for this path")),
          ),
        );}
  }
}
