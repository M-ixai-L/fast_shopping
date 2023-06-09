import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:fast_shopping/basket/application/bloc/basket_bloc.dart';
import 'package:fast_shopping/catalog/infrastructure/product_repository.dart';
import 'package:fast_shopping/models/fs_user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockProductRepository extends Mock implements ProductRepository {}

main() {
  late ProductRepository productRepository;
  late BasketBloc bloc;
  Stream<FSUser> _userStream = Stream<FSUser>.empty();

  FSUser fsUser = FSUser(
    uid: '123',
    image: '',
    email: 'email',
    firstName: 'firstName',
    lastName: 'lastName',
    products: [],
  );

  setUp(() async {
    productRepository = MockProductRepository();
    when(() => productRepository.getUser()).thenAnswer((_) async => fsUser);
    when(() => productRepository.getUserStream(any())).thenAnswer(
      (_) => _userStream,
    );
    when(() => productRepository.updateUser(fsUser)).thenAnswer(
      (_) async => {},
    );
    bloc = BasketBloc(productRepository: productRepository);
  });

  blocTest<BasketBloc, BasketState>(
    'emits user when Delete product',
    build: () => bloc,
    act: (BasketBloc bloc) {
      when(() => productRepository.deleteProduct(any()))
          .thenAnswer((_) async => {});
      bloc.add(const DeleteProduct('123'));
    },
    verify: (_) {
      verify(() => productRepository.updateUser(fsUser)).called(1);
    },
  );

  blocTest<BasketBloc, BasketState>(
    'emits user when Pay product',
    build: () => bloc,
    act: (BasketBloc bloc) {
      bloc.add(const GetUser());
    },
    verify: (_) {
      verify(() => productRepository.getUser()).called(2);
      verify(() => productRepository.getUserStream('123')).called(2);
    },
  );
  blocTest<BasketBloc, BasketState>(
    'emits user when Update product',
    build: () => bloc,
    act: (BasketBloc bloc) {
      bloc.add(const GetUser());
    },
    verify: (_) {
      verify(() => productRepository.getUser()).called(2);
      verify(() => productRepository.getUserStream('123')).called(2);
    },
  );
}
