import 'package:fast_shopping/me/application/bloc/me_bloc.dart';
import 'package:fast_shopping/widgets/fs_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';

class MeScreen extends StatefulWidget {
  const MeScreen({Key? key}) : super(key: key);

  @override
  _MeScreenState createState() => _MeScreenState();
}

class _MeScreenState extends State<MeScreen> {
  late final MeBloc bloc;

  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<MeBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD5F4E9),
      body: BlocBuilder<MeBloc, MeState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.isLoading) {
            return const SizedBox();
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Text(
                      state.user?.email ?? '',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      state.user?.firstName ?? '',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      state.user?.lastName ?? '',
                      style: GoogleFonts.raleway(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: FSButton(
                      color: Theme.of(context).colorScheme.error,
                      onPressed: () {
                        bloc.add(const SignOut());
                      },
                      text: 'Sign out',
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
