import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'model.dart';
import 'carScreen.dart';

class shopScreen extends StatefulWidget {
  shopScreen({Key key}) : super(key: key);

  @override
  _shopScreenState createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  PageController pageController;
  int selectedPage = 0;
  @override
  void initState() {
    // TODO: implement initState

    tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  carSelector(int index) {
    return AnimatedBuilder(
      animation: pageController,
      builder: (BuildContext context, Widget widget) {
        double val = 1;
        if (pageController.position.haveDimensions) {
          val = pageController.page - index;
          val = (1 - (val.abs() * 0.3)).clamp(0.1, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(val) * 500,
            width: Curves.easeInOut.transform(val) * 400,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => CarScreen(car: cars[index])));
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Hero(
                        tag: cars[index].imageUrl,
                        child: Image(
                          height: 240.0,
                          width: 240.0,
                          image: AssetImage('assets/images/car_$index.jpg'),
                          fit: BoxFit.fill,
                        )),
                  ),
                  Positioned(
                    top: 30.0,
                    right: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'FROM',
                          style: TextStyle(
                              fontFamily: 'Noto',
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                        (cars[index].price % 2 == 0)
                            ? Text(
                                cars[index].price.toString() + ' Lakhs',
                                style: TextStyle(
                                    fontFamily: 'Noto',
                                    fontSize: 15.0,
                                    color: Colors.white),
                              )
                            : Text(
                                cars[index].price.toString() + ' Crores',
                                style: TextStyle(
                                    fontFamily: 'Noto',
                                    fontSize: 15.0,
                                    color: Colors.white),
                              )
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 40.0,
                    left: 15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          cars[index].category,
                          style: TextStyle(
                              fontFamily: 'Noto',
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                        Text(
                          cars[index].name,
                          style: TextStyle(
                              fontFamily: 'Noto',
                              fontWeight: FontWeight.w100,
                              fontSize: 15.0,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 4.0,
              child: RawMaterialButton(
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                elevation: 2.0,
                fillColor: Colors.white,
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.black,
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
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 45.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.grey[800],
                  ),
                  Icon(
                    Icons.shopping_cart,
                    size: 30,
                    color: Colors.white54,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "Top Car's",
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white60,
                    fontFamily: 'Noto'),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey[800],
              labelPadding: EdgeInsets.symmetric(horizontal: 30.0),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Sedan',
                    style: TextStyle(
                      fontFamily: 'Noto',
                      fontSize: 17,
                      color: Colors.white30,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'SUV',
                    style: TextStyle(
                      fontFamily: 'Noto',
                      fontSize: 17,
                      color: Colors.white30,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Sport',
                    style: TextStyle(
                      fontFamily: 'Noto',
                      fontSize: 17,
                      color: Colors.white30,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Hyper',
                    style: TextStyle(
                      fontFamily: 'Noto',
                      fontSize: 17,
                      color: Colors.white30,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Limited Edition',
                    style: TextStyle(
                      fontFamily: 'Noto',
                      fontSize: 17,
                      color: Colors.white30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 550,
              width: double.infinity,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (int index) {
                  setState(() {
                    selectedPage = index;
                  });
                },
                itemCount: cars.length,
                itemBuilder: (BuildContext context, int index) {
                  return carSelector(index);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Description',
                    style: TextStyle(
                        fontFamily: 'Noto',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white),
                  ),
                  Text(
                    cars[selectedPage].description,
                    style: TextStyle(
                      fontFamily: 'Noto',
                      fontSize: 15.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}