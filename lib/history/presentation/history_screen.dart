import 'package:fast_shopping/catalog/presentation/product_widget.dart';
import 'package:fast_shopping/history/application/bloc/history_bloc.dart';
import 'package:fast_shopping/models/fs_order.dart';
import 'package:fast_shopping/models/fs_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';

@injectable
class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  late final HistoryBloc bloc;

  TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    bloc = context.read<GetIt>().get<HistoryBloc>();
    bloc.add(const HistoryEvent.getProducts());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryBloc, HistoryState>(
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

  Widget cardsWidget(HistoryState state) {
    List<FSOrder> newLists = [];

    if (textEditingController.text.isNotEmpty) {
      newLists = sortList(state.products, state.orders,
          textEditingController.text.trim().toLowerCase());
    } else {
      newLists = state.orders;
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
          itemBuilder: (context, index) {
            if (state.products.isNotEmpty) {
              FSProduct? product = state.products.firstWhere(
                  (element) => element.id == newLists[index].productId);
              return ProductWidget(
                product: product,
                date: newLists[index].date,
                isAdmin: true,
                onDeletePressed: () {
                  bloc.add(DeleteProduct(newLists[index].orderId));
                },
              );
            }
          }),
    );
  }

  // String dataForProduct(List<Map<String, FSProduct>> list, FSProduct product){
  //   //state.dates.
  //   for (Map<String, String> basket in user.productsHistory!) {
  //     for (FSProduct product in event.product) {
  //       if (basket['id'] == product.id) {
  //         sortList.add(product);
  //         dates.add({basket['date']!: product});
  //       }
  //     }
  //   }
  //   return ' ';
  // }
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
