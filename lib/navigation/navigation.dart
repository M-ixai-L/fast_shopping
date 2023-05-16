import 'package:fast_shopping/email_password_login/presentation/email_password_login_screen.dart';
import 'package:fast_shopping/home/presentation/home_screen.dart';
import 'package:fast_shopping/login/presentation/login_screen.dart';
import 'package:fast_shopping/reqister/presentation/register_screen.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const EmailPasswordLoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) {
        if (state.extra != null && state.extra is String) {
          return RegisterScreen(uid: state.extra as String);
        }
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) {
        //context.replace('');
        return const HomeScreen();
      },
    ),
  ],
);
