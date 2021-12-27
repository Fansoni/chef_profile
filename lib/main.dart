import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  List<String> imageList = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 350,
                width: double.infinity,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.redAccent,
              ),
              Positioned(
                top: 125,
                left: 15,
                right: 15,
                child: Material(
                  elevation: 3.0,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width - 30,
                  ),
                ),
              ),
              Positioned(
                top: 75,
                left: (MediaQuery.of(context).size.width/2) - 50,
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: DecorationImage(
                      image: AssetImage('assets/images/1.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 185,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Chris Pratt',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0
                          ),
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          'China',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0
                          ),
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            FlatButton(
                              onPressed: (){},
                              color: Colors.redAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                child: Center(
                                  child: Text(
                                    'Message',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0
                                    ),
                                  ),
                                ),
                              )
                            ),
                            SizedBox(width: 10.0,),
                            FlatButton(
                              onPressed: (){},
                              color: Colors.grey.withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                                child: Center(
                                  child: Text(
                                    'Following',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0
                                    ),
                                  ),
                                ),
                              )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                BuildCardMenu(
                  image: 'assets/images/2.jpg',
                  name: 'Berry banana milkshake',
                  period: 'Breakfast',
                  favorite: 1.2,
                  rating: 4,
                  views: 2.8,
                ),
                SizedBox(height: 10.0,),
                BuildCardMenu(
                  image: 'assets/images/3.jpg',
                  name: 'Fruit pancake',
                  period: 'Breakfast',
                  favorite: 2.8,
                  rating: 4,
                  views: 4.2,
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Works',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Container(
                  width: double.infinity,
                  height: 125,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Container(
                      height: 125,
                      width: 125,
                      margin: EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7.0),
                        image: DecorationImage(
                          image: AssetImage(imageList[index]),
                          fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Bought',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0
                      ),
                    ),
                    Text(
                      'see all',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BuildCardMenu extends StatelessWidget {
  final image, rating, views, favorite, name, period;
  const BuildCardMenu({
    Key key, this.image, this.rating, this.views, this.favorite, this.name, this.period,
  }) : super(key: key);

  List<Widget> _buidRating(rating){
    List<Widget> list = [];

    for(int i = 1; i <= 5; i++){
      if(rating >= i){
        list.add(Icon(Icons.star, color: Colors.yellow,));
      }else{
        list.add(Icon(Icons.star, color: Colors.grey.withOpacity(0.7),));
      }
    }

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7.0),
      ),
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 110,
              height: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                  image: AssetImage(this.image),
                  fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Container(
              width: MediaQuery.of(context).size.width - 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    this.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                    ),
                  ),
                  SizedBox(height: 6.0,),
                  Text(
                    this.period,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16.0
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(children: _buidRating(this.rating)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.remove_red_eye, color: Colors.grey.withOpacity(0.7)),
                      SizedBox(width: 8.0,),
                      Text('${this.views}'),
                      SizedBox(width: 10.0,),
                      (this.favorite > 0)?
                        Icon(Icons.favorite, color: Colors.redAccent)
                      :
                        Icon(Icons.favorite, color: Colors.grey.withOpacity(0.7))
                      ,
                      SizedBox(width: 8.0,),
                      Text('${this.favorite}'),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}