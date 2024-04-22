import 'package:ewalle/constants/gap.dart';
import 'package:ewalle/features/home/presentation/widgets/send_money_to_person.dart';
import 'package:ewalle/features/home/presentation/widgets/services_home.dart';
import 'package:ewalle/features/menu/presentation/menu_screen.dart';
import 'package:ewalle/theme/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset("assets/svg/ellips.svg"),
                  gapW8,
                  Text(
                    "eWalle",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Spacer(),
                  SvgPicture.asset("assets/svg/union.svg"),
                ],
              ),
              gapH32,
              Text(
                "Account overview",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              gapH12,
              Container(
                padding: EdgeInsets.all(25),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    color: backgroundColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "20,600",
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        gapH8,
                        Text(
                          "Current balance",
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          color: primaryColor),
                      child: Icon(Icons.add),
                    )
                  ],
                ),
              ),
              gapH32,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Send money",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SvgPicture.asset("assets/svg/scan.svg"),
                ],
              ),
              gapH12,
              SizedBox(
                height: 150,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: ShapeDecoration(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100))),
                            color: primaryColor),
                        child: const Icon(Icons.add),
                      ),
                    ),
                    gapW20,
                    SendMoneyToPerson(image: "assets/persons/1.jpg",name: "Mike",),
                    gapW12,
                    SendMoneyToPerson(image: "assets/persons/2.jpg",name: "Joseph",),
                    gapW12,
                    SendMoneyToPerson(image: "assets/persons/3.jpg",name: "Ashley",),
                    gapW12,
                  ],
                ),
              ),
              gapH32,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Services",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  SvgPicture.asset("assets/svg/service.svg"),
                ],
              ),
              gapH12,
              ServicesHome(services: [
                ServiceFake(name: "Send\nMoney", image: "assets/svg/services/send_money.svg"),
                ServiceFake(name: 'Receive\nMoney', image: "assets/svg/services/receive_money.svg"),
                ServiceFake(name: 'Mobile\nPrepaid', image: "assets/svg/services/mobile.svg"),
                ServiceFake(name: 'Electricity\nBill', image: "assets/svg/services/electrical_bill.svg"),
                ServiceFake(name: 'Cashback\nOffer', image: "assets/svg/services/cashback.svg"),
                ServiceFake(name: 'Movie\nTickets', image: "assets/svg/services/movie_tickets.svg"),
                ServiceFake(name: 'Flight\nTickets', image: "assets/svg/services/flight.svg"),
                ServiceFake(name: 'More\nOptions', image: "assets/svg/services/union.svg"),
              ],)
            ],
          ),
        ),
      )),
    );
  }
}


