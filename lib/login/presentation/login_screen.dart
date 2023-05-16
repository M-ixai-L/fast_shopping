import 'package:fast_shopping/login/application/index.dart';
import 'package:fast_shopping/login/presentation/widgets/authorization_button.dart';
import 'package:fast_shopping/login/presentation/widgets/authorization_with_service_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final LoginBloc bloc;
  @override
  void initState() {
    bloc = context.read<GetIt>().get<LoginBloc>();
    bloc.add(const CheckAuthorization());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
        listener: (_, state) {
          if (state.user != null && state.checkCloudAuthentication) {
            context.push('/home');
          }
          if (state.user != null &&
              !state.checkCloudAuthentication &&
              !state.isLoading) {
            context.push('/register', extra: state.user!.uid);
          }
        },
        bloc: bloc,
        builder: (context, state) {
          if (state.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.background,
              ),
            );
          }
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.primary,
            body: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(left: 15, top: 190),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  appTitle,
                  Column(
                    children: [
                      actionsTitle,
                      actionsService,
                      authorizationButtons,
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget get appTitle {
    final textStyle = GoogleFonts.anonymousPro(
      textStyle: TextStyle(
        color: Theme.of(context).colorScheme.background,
        fontSize: 64,
        fontWeight: FontWeight.w700,
      ),
    );
    return Column(
      children: [
        Text(
          'Fast Shopping',
          style: textStyle,
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Text(
            'Buy everything on the way to the store and save time ',
            style: GoogleFonts.raleway(
              fontSize: 16,
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  Widget get actionsTitle {
    return Text(
      'Continue with',
      style: GoogleFonts.raleway(
        fontSize: 11,
        color: Theme.of(context).colorScheme.background,
        fontWeight: FontWeight.w700,
        letterSpacing: 1,
      ),
    );
  }

  Widget get actionsService {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AuthorizationWithServiceButton(
          icon: 'facebook',
          backgroundColor: Theme.of(context).colorScheme.surface,
          color: Theme.of(context).colorScheme.background,
          onTap: () {},
        ),
        AuthorizationWithServiceButton(
          icon: 'twitter',
          backgroundColor: const Color(0xFF51B2E0),
          color: Theme.of(context).colorScheme.background,
          onTap: () {},
        ),
        AuthorizationWithServiceButton(
          icon: 'google',
          backgroundColor: Theme.of(context).colorScheme.background,
          onTap: () {
            bloc.add(const SignInWithGoogle());
          },
        ),
        AuthorizationWithServiceButton(
          icon: 'linkedin',
          backgroundColor: const Color(0xFF007BB5),
          color: Theme.of(context).colorScheme.background,
          onTap: () {},
        ),
      ],
    );
  }

  Widget get authorizationButtons {
    return Padding(
      padding: const EdgeInsets.only(bottom: 76),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AuthorizationButton(
              title: 'Sign up',
              onTap: () {
                context.push('/register');
              }),
          Text(
            '/',
            style: GoogleFonts.raleway(
              fontSize: 11,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
          AuthorizationButton(
              title: 'Log in',
              onTap: () {
                context.push('/login');
              }),
        ],
      ),
    );
  }
}
