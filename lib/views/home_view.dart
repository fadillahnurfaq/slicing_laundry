import 'package:flutter/material.dart';
import 'package:slicing_laundry/models/location_model.dart';
import 'package:slicing_laundry/models/order_model.dart';
import 'package:slicing_laundry/views/order_detail_view.dart';
import 'package:slicing_laundry/widgets/gap.dart';
import 'package:slicing_laundry/widgets/text_label.dart';

import '../controllers/home_controller.dart';
import '../injection.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = locator<HomeController>();

    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Positioned(
                top: -40,
                right: 0,
                child: Image.asset(
                  "assets/washing_machine_illustration.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextLabel(
                          text: "Welcome Back,",
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          size: 18.0,
                        ),
                        TextLabel(
                          text: "Fadillah Nur Faqih",
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          size: 18.0,
                        ),
                      ],
                    ),
                    Image.asset(
                      "assets/user.png",
                      height: 60.0,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(10.0),
              ),
            ),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextLabel(
                    text: "New Location",
                    size: 18.0,
                  ),
                  const VerticalGap20(),
                  SizedBox(
                    height: 90.0,
                    child: ListView.separated(
                      itemCount: controller.locations.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final LocationModel data = controller.locations[index];
                        return _contentLocation(data);
                      },
                      separatorBuilder: (_, __) {
                        return const SizedBox(
                          width: 15.0,
                        );
                      },
                    ),
                  ),
                  const VerticalGap10(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextLabel(
                        text: "Latest Orders",
                        size: 18.0,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {},
                        child: const TextLabel(
                          text: "View All",
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                  ListView.separated(
                    itemCount: controller.orders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final OrderModel data = controller.orders[index];
                      return _contentOrder(data, context);
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(
                        height: 10.0,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _contentLocation(final LocationModel data) {
    return Container(
      width: 200.0,
      height: 80.0,
      decoration: BoxDecoration(
        color: data.color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              data.imagePath,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextLabel(
                  text: data.address,
                  size: 16.0,
                  color: Colors.white,
                ),
                TextLabel(
                  text: data.state,
                  size: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _contentOrder(final OrderModel data, BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange.withOpacity(.3),
                    ),
                    child: const Icon(
                      Icons.history,
                    ),
                  ),
                  const HorizontalGap10(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLabel(
                        text: data.type,
                        size: 18.0,
                      ),
                      const VerticalGap5(),
                      Row(
                        children: [
                          TextLabel(
                            text: "Placed On: ",
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(.6),
                          ),
                          TextLabel(
                            text: data.placedDate,
                          ),
                        ],
                      ),
                      const VerticalGap5(),
                      Row(
                        children: [
                          TextLabel(
                            text: "Delivery On: ",
                            fontWeight: FontWeight.w400,
                            color: Colors.black.withOpacity(.6),
                          ),
                          TextLabel(
                            text: data.deliveryDate,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(15.0),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const OrderDetailView(),
                ));
              },
            ),
          ),
        )
      ],
    );
  }
}
