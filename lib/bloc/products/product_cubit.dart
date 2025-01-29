// Product Cubit
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  // void fetchProducts() async {
  //   try {
  //     emit(UserLoading());
  //     // Simulate network call
  //     await Future.delayed(Duration(seconds: 2));
  //     final users = [
  //       User(id: '1', name: 'John Doe', email: 'john.doe@example.com'),
  //       User(id: '2', name: 'Jane Smith', email: 'jane.smith@example.com'),
  //     ];
  //     emit(UserLoaded(users));
  //   } catch (e) {
  //     emit(UserError('Failed to fetch users'));
  //   }
  // }
}
