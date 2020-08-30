import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './model.dart';

class CarScreen extends StatefulWidget {
  final Cars car;
  final Cars index;
  CarScreen({this.car, this.index});

  @override
  _CarScreenState createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 60.0),
                  height: 500.0,
                  color: Colors.blue[900],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        widget.car.category.toUpperCase(),
                        style: TextStyle(
                            fontFamily: 'Noto',
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        widget.car.name,
                        style: TextStyle(
                            fontFamily: 'Noto',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30.0),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Starting from',
                        style: TextStyle(
                            fontFamily: 'Noto',
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      (widget.car.price % 2 == 0)
                          ? Text(
                              widget.car.price.toString() + ' Lakhs',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          : Text(
                              widget.car.price.toString() + ' Crores',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0,
                                  color: Colors.white),
                            ),
                      SizedBox(
                        height: 20.0,
                      ),
                      RawMaterialButton(
                        padding: EdgeInsets.all(15),
                        shape: CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black,
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                          size: 30,
                        ),
                        onPressed: () => {
                          Text(
                            'Sucessfully added to the cart',
                            style: TextStyle(
                                fontFamily: 'Noto',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20.0,
                  bottom: 30.0,
                  child: Hero(
                      tag: widget.car.imageUrl,
                      child: Image(
                        height: 280.0,
                        width: 280.0,
                        image: AssetImage(widget.car.imageUrl),
                        fit: BoxFit.fill,
                      )),
                ),
                Container(
                  height: 400,
                  transform: Matrix4.translationValues(0.0, -20.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          left: 30.0,
                          right: 30.0,
                          top: 40.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'All to know',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 24.0,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              widget.car.description,
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  fontSize: 15.0,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 40,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Specifications',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Engine Capacity',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  color: Colors.white,
                                  fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Engine Capacity: '+widget.car.engineCapacity.toString()+'CC',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  color: Colors.white,
                                  fontSize: 15.0),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Power Output: '+widget.car.power.toString()+' BHP',
                              style: TextStyle(
                                  fontFamily: 'Noto',
                                  color: Colors.white,
                                  fontSize: 15.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
