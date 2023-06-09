import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:fast_shopping/basket/presentation/basket_screen.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/catalog/presentation/catalog_screen.dart';
import 'package:fast_shopping/history/presentation/history_screen.dart';
import 'package:fast_shopping/home/application/bloc/home_bloc.dart';
import 'package:fast_shopping/me/presentation/me_screen.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:fast_shopping/widgets/fs_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_flat_bottom_bar/material_flat_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var activeIndex = 0;

  List<Widget> screens = [
    const CatalogScreen(),
    const BasketScreen(),
    const HistoryScreen(),
    const MeScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SafeArea(
      child: MaterialFlatBottomBarScaffold(
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
              builder: (BuildContext context) => screens[index]);
        },
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            ProductRepository productRepository = context.read<GetIt>().get();
            final user = await productRepository.getUser();
            if (user.isAdmin) {
              _showDialog(context);
            } else {
              openScanner(context);
            }
          },
          backgroundColor: colorScheme.background,
          child: SvgPicture.asset(
            'assets/icons/add.svg',
            color: colorScheme.primary,
          ),
        ),
        backgroundColor: colorScheme.primary,
        tabBar: MaterialFlatBottomTabBar(
          backgroundColor: colorScheme.primary,
          items: <MaterialFlatBottomTabBarItem>[
            buildItem('CATALOGUE', 'document-search'),
            buildItem('BASKET', 'basket'),
            buildItem('HISTORY', 'flashback'),
            buildItem('ME', 'me'),
          ],
        ),
      ),
    );
  }

  MaterialFlatBottomTabBarItem buildItem(
    String title,
    String icon,
  ) {
    return MaterialFlatBottomTabBarItem(
      titleBuilder: (bool current) {
        return Text(
          title,
          style: GoogleFonts.raleway(
            fontSize: 9,
            color: Theme.of(context).colorScheme.background,
            fontWeight: FontWeight.w700,
          ),
        );
      },
      iconBuilder: (bool current) {
        return SvgPicture.asset(
          'assets/icons/$icon.svg',
          height: 24,
          color: Theme.of(context).colorScheme.background,
        );
      },
      backgroundColor: (bool current) {
        return current
            ? Colors.black.withOpacity(0.2)
            : Theme.of(context).colorScheme.primary;
      },
    );
  }

  Future<void> _showDialog(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController costController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: const Text('Create new product'),
          content: Material(
            color: Colors.transparent,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  FSTextFormField(
                    title: 'Name',
                    textColor: Colors.black,
                    textEditingController: nameController,
                  ),
                  FSTextFormField(
                    title: 'Description',
                    textColor: Colors.black,
                    textEditingController: descriptionController,
                  ),
                  FSTextFormField(
                    title: 'Cost',
                    textColor: Colors.black,
                    textEditingController: costController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill cost';
                      } else if (value.trim() == '') {
                        return 'Please fill cost';
                      }
                      try {
                        int.parse(value);
                      } catch (_) {
                        return 'Cost is number';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Save'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.of(context).pop();

                  FSProduct product = FSProduct(
                    id: 'id',
                    name: nameController.text,
                    description: descriptionController.text,
                    cost: costController.text,
                  );

                  context
                      .read<GetIt>()
                      .get<ProductRepository>()
                      .addProduct(product);
                }
              },
            ),
          ],
        );
      },
    );
  }
}

Future<void> openScanner(BuildContext context) async {
  var result = await context.push<String>('/scanner');
  if (result != null) {
    try {
      final jwt = JWT.verify(result, SecretKey('secret passphrase'));
      return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          context.read<HomeBloc>().add(GetProduct(jwt.payload['id']));
          return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            return AlertDialog(
              content: state.isLoading || state.product == null
                  ? const SizedBox(
                      height: 100,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.white,
                        ),
                      ),
                    )
                  : SizedBox(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  state.product!.name,
                                  style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  state.product!.description,
                                  style: GoogleFonts.raleway(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  '${state.product!.cost} \$',
                                  style: GoogleFonts.raleway(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
              backgroundColor: const Color(0xFF4FFFC0),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.error,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 70,
                    height: 30,
                    child: Text(
                      'Cancel',
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: Theme.of(context).colorScheme.background,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.read<HomeBloc>().add(BuyProduct(jwt.payload['id']));
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    width: 120,
                    height: 30,
                    child: Text(
                      'Add to basket',
                      style: GoogleFonts.openSans(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            );
          });
        },
      );
    } on JWTError {
      print('jwt expired');
    }
  }
}
