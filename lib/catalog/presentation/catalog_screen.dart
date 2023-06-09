import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:fast_shopping/catalog/application/bloc/catalog_bloc.dart';
import 'package:fast_shopping/catalog/presentation/product_widget.dart';
import 'package:fast_shopping/home/presentation/home_screen.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

@injectable
class CatalogScreen extends StatefulWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  _CatalogScreenState createState() => _CatalogScreenState();
}

class _CatalogScreenState extends State<CatalogScreen> {
  late final CatalogBloc bloc;

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<CatalogBloc>();
    bloc.add(const GetProducts());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogBloc, CatalogState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.user == null) {
            return const Scaffold(
              backgroundColor: Color(0xFFD5F4E9),
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            );
          }

          return GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: Scaffold(
              backgroundColor: const Color(0xFFD5F4E9),
              body: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  children: [searchFieldWidget, cardsWidget(state)],
                ),
              ),
            ),
          );
        });
  }

  Widget cardsWidget(CatalogState state) {
    List<FSProduct> newLists = [];

    if (textEditingController.text.isNotEmpty) {
      newLists = sortList(
          state.products, textEditingController.text.trim().toLowerCase());
    } else {
      newLists = state.products;
    }

    if (newLists.isEmpty) {
      return Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Text(
          'Nothing found',
          style: GoogleFonts.raleway(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      );
    }
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 30),
        itemCount: newLists.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () async {
            final jwt = JWT(
              // Payload
              {
                'id': newLists[index].id,
              },

              issuer: 'https://github.com/jonasroussel/dart_jsonwebtoken',
            );
            String token = jwt.sign(SecretKey('secret passphrase'));
            context.push('/generator', extra: token);
          },
          child: ProductWidget(
            product: newLists[index],
            isAdmin: state.user!.isAdmin,
            onPressed: () {
              bloc.add(BuyProduct(newLists[index].id));
            },
            onDeletePressed: () {
              bloc.add(DeleteProduct(newLists[index].id));
            },
          ),
        ),
      ),
    );
  }

  Widget get searchFieldWidget {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width - 80,
          child: TextField(
            controller: textEditingController,
            onEditingComplete: () {
              FocusScope.of(context).unfocus();
            },
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              fillColor: const Color(0xFF9ED8C3),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              hintText: 'Search',
              hintStyle: GoogleFonts.raleway(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
              suffixIcon: textEditingController.text.isEmpty
                  ? const Icon(
                      Icons.search,
                      color: Colors.white,
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          textEditingController.clear();
                        });
                      },
                      icon: const Icon(Icons.close),
                      color: Colors.white,
                    ),
            ),
            onChanged: (value) {
              setState(() {});
            },
            keyboardType: TextInputType.text,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {
            openScanner(context);
          },
          child: Image.asset(
            'assets/icons/qr_code.png',
            height: 24,
            width: 24,
          ),
        ),
      ],
    );
  }

  List<FSProduct> sortList(List<FSProduct> cards, String text) {
    List<FSProduct> newList = [];
    for (final card in cards) {
      if (card.id.toLowerCase().contains(text) ||
          card.description.toLowerCase().contains(text) ||
          card.name.contains(text)) {
        newList.add(card);
      }
    }
    return newList;
  }
}
