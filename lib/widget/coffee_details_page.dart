import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_coffeeapp/models/Product.dart';
import 'package:intl/intl.dart';

class CoffeeDetailsPage extends StatelessWidget {
  const CoffeeDetailsPage({Key key, this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 440,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage(product.image),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    top: 320,
                    child: BlurryContainer(
                      padding: EdgeInsets.all(20),
                      height: 140,
                      bgColor: Color(0xff141921),
                      width: 377,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                product.ingre,
                                style: TextStyle(
                                  color: Color(0xff919296),
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "images/star.svg",
                                    height: 20,
                                    color: Color(0xffd17842),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "(6.983)",
                                    style: TextStyle(color: Color(0xff919296)),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "images/coffee-beans.svg",
                                          color: Color(0xffd17842),
                                          height: 15,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Coffee",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    height: 42,
                                    width: 42,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          "images/water-drop.svg",
                                          color: Color(0xffd17842),
                                          height: 15,
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Milk",
                                          style: TextStyle(
                                              color: Color(0xff919296),
                                              fontSize: 10,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    decoration: BoxDecoration(
                                        color: Color(0xff101419),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 37,
                                width: 120,
                                child: Center(
                                    child: Text(
                                  "Medium Roasted",
                                  style: TextStyle(
                                      color: Color(0xff919296),
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )),
                                decoration: BoxDecoration(
                                    color: Color(0xff101419),
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Kopi arabica engrekang dan mandailing menjadi salah satu ciri khas utama manu kopi dipadukan dengan susu dan gula aren.",
                      style: TextStyle(color: Color(0xff919296), fontSize: 15),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(
                          color: Color(0xff919296),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "S",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffd17842))),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "M",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          height: 37,
                          width: 110,
                          child: Center(
                              child: Text(
                            "L",
                            style: TextStyle(
                              color: Color(0xff919296),
                              fontSize: 18,
                            ),
                          )),
                          decoration: BoxDecoration(
                              color: Color(0xff101419),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Price",
                              style: TextStyle(
                                  color: Color(0xff919296),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                  r'Rp.',
                                  style: TextStyle(
                                      color: Color(0xffd17842), fontSize: 21),
                                ),
                                Text(
                                  NumberFormat.currency(
                                          locale: 'id',
                                          symbol: "",
                                          decimalDigits: 0)
                                      .format(product.price),
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 21),
                                )
                              ],
                            )
                          ],
                        ),
                        // ignore: deprecated_member_use
                        ButtonTheme(
                          minWidth: 200,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {},
                            color: Color(0xffd17842),
                            child: Text(
                              "Buy Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
