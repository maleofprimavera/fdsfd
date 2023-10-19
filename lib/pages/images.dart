import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_ui/components/nav_bar.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});
  @override
  Widget build(BuildContext context) {
    NavBar navBar = NavBar();

    return Scaffold(
        appBar: AppBar(
          title: Text('Images'),
          centerTitle: true,
          leading: TextButton(
            child: Text('Back'),
            onPressed: () {},
          ),
          actions: [
            TextButton(
              child: Text('Next'),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // first row
              Container(
                height: 128,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Color.fromRGBO(246, 246, 246, 1),
                      ),
                    ),),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 2,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(246, 246, 246, 1))
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(

                height: 198,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                  color: Color.fromRGBO(246, 246, 246, 1),),
                ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 128,
                child: Row(
                  children: [
                    Flexible(
                        flex: 10,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(246, 246, 246, 1))
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 11,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(246, 246, 246, 1))
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 128,
                child: Row(
                  children: [
                    Flexible(
                        flex: 8,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(246, 246, 246, 1))
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 3,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color.fromRGBO(246, 246, 246, 1))
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 128,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Color.fromRGBO(246, 246, 246, 1),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                        flex: 2,
                        child: Container(
                          color: Color.fromRGBO(246, 246, 246, 1),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      bottomNavigationBar: navBar,
    );
  }
}
