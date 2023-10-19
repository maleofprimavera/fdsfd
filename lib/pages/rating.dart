import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(93, 176, 117, 1),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey, offset: Offset(5, 5), blurRadius: 10.0)
              ]),
          margin: EdgeInsets.symmetric(horizontal: 30),
          alignment: Alignment.center,
          // margin: EdgeInsets.only(left: 20, right: 20,top: 200),
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star,
                          color: Color.fromRGBO(255, 184, 78, 1), size: 40),
                      Icon(Icons.star,
                          color: Color.fromRGBO(255, 184, 78, 1), size: 40),
                      Icon(Icons.star,
                          color: Color.fromRGBO(255, 184, 78, 1), size: 40),
                      Icon(Icons.star,
                          color: Color.fromRGBO(255, 184, 78, 1), size: 40),
                      Icon(Icons.star,
                          color: Color.fromRGBO(255, 184, 78, 1), size: 40),
                      Icon(Icons.star,
                          color: Color.fromRGBO(255, 184, 78, 1), size: 40),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Rate our app',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Text(
                        'Consequat velit qui adipisicing sunt do reprehenderit ad laborum tempor ullamco exercitation. Ullamco tempor adipisicing et voluptate duis sit esse aliqua esse ex dolore esse. Consequat velit qui adipisicing sunt.',
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('I love it!'),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateColor.resolveWith(
                          (states) => Color.fromRGBO(93, 176, 117, 1),
                        )),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    ),
                    Container(
                      width: 250,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Don’t like the app? Let us know.'),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
