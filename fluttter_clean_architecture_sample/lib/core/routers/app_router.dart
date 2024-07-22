import 'package:flutter/material.dart';
import 'package:fluttter_clean_architecture_sample/presentation/feedback/feedback_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/dashboard/dashboard_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/document/document_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/home/home_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/login/login_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/register/register_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/reminder/reminder_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/user_info/user_info_page.dart';
import 'package:fluttter_clean_architecture_sample/presentation/pages/work_management/work_management_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterPage());
      case '/user-info':
        return MaterialPageRoute(builder: (_) => UserInfoPage());
      case '/document':
        return MaterialPageRoute(builder: (_) => DocumentPage());
      case '/feedback':
        return MaterialPageRoute(builder: (_) => FeedbackPage());
      case '/work-management':
        return MaterialPageRoute(builder: (_) => WorkManagementPage());
      case '/reminder':
        return MaterialPageRoute(builder: (_) => ReminderPage());
      default:
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
