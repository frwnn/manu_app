import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'coffee_details_page.dart';

class CoffeeCard extends StatelessWidget {
  List<String> images = [
    "images/eskopi.JPG",
    "images/espandan.JPG",
    "images/mspice.JPG",
    "images/chino.JPG",
  ]; //List string bahan listview builder

  List<String> ingredients = [
    "Dengan Susu & Gula Aren",
    "Dengan Sirup Pandan",
    "Dengan Rempah",
    "Dengan Susu Segar"
  ];
  List<String> menus = [
    "Es Kopi Manu",
    "Es Kopi Pandan",
    "Manu Spice",
    "Baby Chino"
  ];

  List<int> price = [21000, 21000, 28000, 20000];

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
        },
        child: ListView.builder(
            //Listview builder menu
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Container(
                    height: 250,
                    width: 160,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 135,
                          width: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage(images[index]),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                menus[index],
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                ingredients[index],
                                style: TextStyle(
                                    color: Color(0xff919293), fontSize: 11),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        r'Rp. ',
                                        style: TextStyle(
                                            color: Color(0xffd17842),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        NumberFormat.currency(
                                                locale: 'id',
                                                symbol: "",
                                                decimalDigits: 0)
                                            .format(price[index]),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Color(0xffd17842),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      ))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff242931),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              );
            }),
      ),
    );
  }
}
