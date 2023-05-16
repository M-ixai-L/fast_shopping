import 'package:fast_shopping/reqister/application/bloc/register_bloc.dart';
import 'package:fast_shopping/widgets/fs_button.dart';
import 'package:fast_shopping/widgets/fs_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key, this.uid}) : super(key: key);

  final String? uid;

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController firstNameTextEditingController =
      TextEditingController();
  final FocusNode firstNameFocus = FocusNode();

  TextEditingController lastNameTextEditingController = TextEditingController();
  final FocusNode lastNameFocus = FocusNode();

  TextEditingController emailNameTextEditingController =
      TextEditingController();
  final FocusNode emailFocus = FocusNode();

  TextEditingController passwordTextEditingController = TextEditingController();
  final FocusNode passwordFocus = FocusNode();

  TextEditingController repeatPasswordTextEditingController =
      TextEditingController();
  final FocusNode repeatPasswordFocus = FocusNode();

  bool visibilityPassword = false;

  bool visibilityRepeatPassword = false;

  late final RegisterBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<RegisterBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: BlocListener<RegisterBloc, RegisterBlocState>(
          listener: (_, state) {
            if (state.user != null) {
              context.pushReplacement('/home');
            }
          },
          bloc: bloc,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: ListView(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Enter data for you profile',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.background,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      FSTextFormField(
                        title: 'First name',
                        textEditingController: firstNameTextEditingController,
                        focusNode: firstNameFocus,
                        nextFocusNode: lastNameFocus,
                        textInputAction: TextInputAction.next,
                      ),
                      FSTextFormField(
                        title: 'Last name',
                        textEditingController: lastNameTextEditingController,
                        focusNode: lastNameFocus,
                        nextFocusNode: emailFocus,
                        textInputAction: TextInputAction.next,
                      ),
                      FSTextFormField(
                        title: 'Email',
                        textEditingController: emailNameTextEditingController,
                        focusNode: emailFocus,
                        nextFocusNode: passwordFocus,
                        textInputAction: TextInputAction.next,
                      ),
                      if (widget.uid == null)
                        FSTextFormField(
                          title: 'Password',
                          textEditingController: passwordTextEditingController,
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
                          focusNode: passwordFocus,
                          nextFocusNode: repeatPasswordFocus,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please fill password';
                            } else if (value.trim() == '') {
                              return 'Please fill password';
                            }
                            if (value.length < 6) {
                              return 'The password must contain more than 6 characters';
                            }
                            return null;
                          },
                        ),
                      if (widget.uid == null)
                        FSTextFormField(
                          title: 'Repeat password',
                          suffixIcon: IconButton(
                            icon: Icon(visibilityRepeatPassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                visibilityRepeatPassword =
                                    !visibilityRepeatPassword;
                              });
                            },
                          ),
                          isPassword: !visibilityRepeatPassword,
                          textEditingController:
                              repeatPasswordTextEditingController,
                          focusNode: repeatPasswordFocus,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please repeat password';
                            } else if (value.trim() == '') {
                              return 'Please repeat password';
                            }
                            if (value != passwordTextEditingController.text) {
                              return 'Passwords don\'t match';
                            }
                            return null;
                          },
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                FSButton(
                  onPressed: () {
                    if (widget.uid == null) {
                      if (_formKey.currentState!.validate()) {
                        FocusScope.of(context).requestFocus(FocusNode());
                        bloc.add(RegisterBlocEvent.registerNewUser(
                          emailNameTextEditingController.text,
                          passwordTextEditingController.text,
                          firstNameTextEditingController.text,
                          lastNameTextEditingController.text,
                        ));
                      }
                    } else {
                      bloc.add(RegisterBlocEvent.registerNewUserWithUid(
                        emailNameTextEditingController.text,
                        widget.uid!,
                        firstNameTextEditingController.text,
                        lastNameTextEditingController.text,
                      ));
                    }
                  },
                  text: 'Sign up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
