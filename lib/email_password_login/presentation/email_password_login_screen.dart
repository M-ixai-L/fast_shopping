import 'package:fast_shopping/email_password_login/bloc/email_password_login_bloc.dart';
import 'package:fast_shopping/widgets/fs_button.dart';
import 'package:fast_shopping/widgets/fs_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailPasswordLoginScreen extends StatefulWidget {
  const EmailPasswordLoginScreen({Key? key}) : super(key: key);

  @override
  _EmailPasswordLoginScreenState createState() =>
      _EmailPasswordLoginScreenState();
}

class _EmailPasswordLoginScreenState extends State<EmailPasswordLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController passwordTextEditingController = TextEditingController();

  TextEditingController emailTextEditingController = TextEditingController();

  late final EmailPasswordLoginBloc bloc;

  bool visibilityPassword = false;

  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<EmailPasswordLoginBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: BlocConsumer<EmailPasswordLoginBloc, EmailPasswordLoginState>(
          listener: (_, state) {
            if (state.isSuccess) {
              context.pushReplacement('/home');
            }
          },
          bloc: bloc,
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.primary,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Enter your email and password to log in',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        color: Theme.of(context).colorScheme.background,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          FSTextFormField(
                            title: 'Email',
                            textEditingController: emailTextEditingController,
                            // focusNode: firstNameFocus,
                            // nextFocusNode: lastNameFocus,
                            textInputAction: TextInputAction.next,
                          ),
                          FSTextFormField(
                            title: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(visibilityPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  visibilityPassword = !visibilityPassword;
                                });
                              },
                            ),
                            isPassword: !visibilityPassword,
                            textEditingController:
                                passwordTextEditingController,
                            // focusNode: firstNameFocus,
                            // nextFocusNode: lastNameFocus,
                            textInputAction: TextInputAction.next,
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: state.isError,
                      child: Text(
                        'Error, please try again!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.error,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    FSButton(
                      isLoading: state.isLoading,
                      onPressed: () {
                        setState(() {});
                        bloc.add(Login(
                          email: emailTextEditingController.text,
                          password: passwordTextEditingController.text,
                        ));
                      },
                      text: 'Log in',
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
