import 'package:flutter/material.dart';
import 'package:slicing_laundry/widgets/gap.dart';
import 'package:slicing_laundry/widgets/text_label.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/washing_machine_illustration.png",
            ),
          ),
          Positioned(
            top: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TextLabel(
                        text: "Details About",
                        color: Colors.white,
                        size: 20.0,
                        fontWeight: FontWeight.w300,
                      ),
                      const Row(
                        children: [
                          TextLabel(
                            text: "Order",
                            color: Colors.white,
                            size: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                          TextLabel(
                            text: " #521",
                            color: Colors.white,
                            size: 20.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ],
                      ),
                      const VerticalGap15(),
                      Container(
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const VerticalGap10(),
                              const TextLabel(
                                text: "Order Details",
                                size: 16.0,
                              ),
                              const VerticalGap5(),
                              TextLabel(
                                text: "WASHING AND FOLDING",
                                size: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(.5),
                              ),
                              const VerticalGap5(),
                              Column(
                                children: List.generate(5, (index) => _order()),
                              ),
                              const VerticalGap20(),
                              TextLabel(
                                text: "IRONING",
                                size: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(.5),
                              ),
                              const VerticalGap5(),
                              _order(),
                              const VerticalGap5(),
                              const Divider(),
                              const VerticalGap5(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TextLabel(
                                    text: "Subtotal",
                                    size: 16.0,
                                  ),
                                  TextLabel(
                                    text: "\$ 200.00",
                                    size: 15.0,
                                    color: Colors.black.withOpacity(.7),
                                  ),
                                ],
                              ),
                              const VerticalGap5(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const TextLabel(
                                    text: "Delivery",
                                    size: 16.0,
                                  ),
                                  TextLabel(
                                    text: "\$ 225.00",
                                    size: 15.0,
                                    color: Colors.black.withOpacity(.7),
                                  ),
                                ],
                              ),
                              const VerticalGap20(),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextLabel(
                                    text: "Total",
                                    size: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  TextLabel(
                                    text: "\$ 225.00",
                                    size: 15.0,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                              const VerticalGap10(),
                            ],
                          ),
                        ),
                      ),
                      const VerticalGap10(),
                      Container(
                        width: MediaQuery.of(context).size.width - 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const TextLabel(
                                    text: "Your clothes are now washing.",
                                    size: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  const VerticalGap15(),
                                  TextLabel(
                                    text: "Estimated Delivery",
                                    size: 13.0,
                                    color: Colors.black.withOpacity(.5),
                                  ),
                                  const VerticalGap5(),
                                  const TextLabel(
                                    text: "24 January 2021",
                                    size: 13.0,
                                  ),
                                ],
                              ),
                              Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: Image.asset("assets/washlogo.png"))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _order() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const TextLabel(
                text: "3",
                size: 15.0,
              ),
              TextLabel(
                text: "x T-shirts(man)",
                size: 15.0,
                color: Colors.black.withOpacity(.5),
              ),
            ],
          ),
          TextLabel(
            text: "\$ 30.00",
            size: 15.0,
            color: Colors.black.withOpacity(.7),
          ),
        ],
      ),
    );
  }
}
