import 'package:fast_shopping/basket/application/bloc/basket_bloc.dart';
import 'package:fast_shopping/catalog/presentation/product_widget.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

@injectable
class BasketScreen extends StatefulWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  _BasketScreenState createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  late final BasketBloc bloc;

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<BasketBloc>();
    bloc.add(const BasketEvent.getProducts());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BasketBloc, BasketState>(
        listener: (_, state) {},
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
              backgroundColor: Color(0xFFD5F4E9),
              body: Padding(
                padding: const EdgeInsets.only(top: 30, left: 38, right: 38),
                child: Column(
                  children: [searchFieldWidget, cardsWidget(state)],
                ),
              ),
            ),
          );
        });
  }

  Widget cardsWidget(BasketState state) {
    List<FSProduct> newLists = [];

    if (textEditingController.text.isNotEmpty) {
      newLists = sortList(
          state.products, textEditingController.text.trim().toLowerCase());
    } else {
      newLists = state.products;
    }
    if (newLists.length == 0) {
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
        itemBuilder: (context, index) => ProductWidget(
          product: newLists[index],
          isAdmin: true,
          onPressedText: 'PAY',
          onPressed: () {
            bloc.add(PayProduct(newLists[index].id));
          },
          onDeletePressed: () {
            bloc.add(DeleteProduct(newLists[index].id));
          },
        ),
      ),
    );
  }

  Widget get searchFieldWidget {
    return TextField(
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
                icon: Icon(Icons.close),
                color: Colors.white,
              ),
      ),
      onChanged: (value) {
        setState(() {});
      },
      keyboardType: TextInputType.text,
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
