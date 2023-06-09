import 'dart:async';

import 'package:fast_shopping/basket/application/bloc/basket_bloc.dart';
import 'package:fast_shopping/catalog/presentation/product_widget.dart';
import 'package:fast_shopping/home/presentation/home_screen.dart';
import 'package:fast_shopping/models/fs_order.dart';
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
  State<StatefulWidget> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  late final BasketBloc bloc;

  TextEditingController textEditingController = TextEditingController();
  double summaryCost = 0.0;
  double oldSummaryCost = 0.0;
  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<BasketBloc>();
    bloc.add(const BasketEvent.getProducts());
    Timer.periodic(const Duration(milliseconds: 500), (timer) {
      if (oldSummaryCost != summaryCost) {
        setState(() {
          oldSummaryCost = summaryCost;
        });
      }
    });
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
                padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  children: [
                    searchFieldWidget,
                    SizedBox(height: 5),
                    Text(
                      'Summary cost: $summaryCost',
                      style: GoogleFonts.raleway(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    cardsWidget(state),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget cardsWidget(BasketState state) {
    List<FSOrder> newLists = [];

    if (textEditingController.text.isNotEmpty) {
      newLists = sortList(state.products, state.orders,
          textEditingController.text.trim().toLowerCase());
    } else {
      newLists = state.orders;
    }
    summaryCost = 0;
    if (state.products.isNotEmpty) {
      for (final order in newLists) {
        FSProduct product = state.products
            .firstWhere((element) => element.id == order.productId);
        summaryCost += double.parse(product.cost);
      }
    }
    if (newLists.length == 0) {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
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
          itemBuilder: (context, index) {
            if (state.products.isNotEmpty) {
              FSProduct? product = state.products.firstWhere(
                  (element) => element.id == newLists[index].productId);

              return ProductWidget(
                product: product,
                isAdmin: true,
                onPressedText: 'PAY',
                date: newLists[index].date,
                onPressed: () {
                  bloc.add(PayProduct(newLists[index].orderId));
                },
                onDeletePressed: () {
                  bloc.add(DeleteProduct(newLists[index].orderId));
                },
              );
            }
          }),
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

  List<FSOrder> sortList(
      List<FSProduct> products, List<FSOrder> orders, String text) {
    List<FSOrder> newList = [];
    for (final card in orders) {
      FSProduct product =
          products.firstWhere((element) => element.id == card.productId);
      if (product.id.toLowerCase().contains(text) ||
          product.description.toLowerCase().contains(text) ||
          product.name.contains(text)) {
        newList.add(card);
      }
    }
    return newList;
  }
}
