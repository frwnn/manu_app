import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'coffee_details_page.dart';
import '/models/Product.dart';

class CoffeeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: InkWell(
        child: ListView.builder(
            //Listview builder menu
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: demo_product.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoffeeDetailsPage(
                                  product: demo_product[index])));
                    },
                    child: Container(
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
                                    image:
                                        AssetImage(demo_product[index].image),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  demo_product[index].title,
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  demo_product[index].ingre,
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
                                              .format(
                                                  demo_product[index].price),
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
