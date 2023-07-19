import 'package:flutter/material.dart';
import 'package:slicing_laundry/models/location_model.dart';
import 'package:slicing_laundry/models/order_model.dart';

class HomeController extends ChangeNotifier {
  final List<LocationModel> locations = [
    LocationModel(
      address: "Kings Street 20",
      color: const Color.fromRGBO(89, 69, 199, 1),
      state: "Bucharest",
      imagePath: "assets/house1.png",
    ),
    LocationModel(
      address: "Victory Square 18",
      color: const Color.fromRGBO(237, 116, 41, 1),
      state: "Bucharest",
      imagePath: "assets/house2.png",
    )
  ];

  final List<OrderModel> orders = [
    OrderModel(
      type: "Delivering Order",
      placedDate: "2023-06-09",
      deliveryDate: "2023-06-11",
    ),
    OrderModel(
      type: "Delivering Order",
      placedDate: "2023-06-12",
      deliveryDate: "2023-06-14",
    ),
    OrderModel(
      type: "Picking Up Order",
      placedDate: "2023-06-15",
      deliveryDate: "2023-06-18",
    ),
    OrderModel(
      type: "Picking Up Order",
      placedDate: "2023-07-10",
      deliveryDate: "2023-07-14",
    ),
  ];
}
