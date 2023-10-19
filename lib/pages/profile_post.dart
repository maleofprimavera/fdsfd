import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_ui/components/nav_bar.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  State<Profile> createState() => _ProfileState();
}

int selection_id = 1;

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

    NavBar navBar = NavBar();
    return Scaffold(
        appBar: AppBar(
          title:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            TextButton(onPressed: () {}, child: Text('Settings')),
            Text('Profile'),
            TextButton(onPressed: () {}, child: Text('Logout'))
          ]),
        ),
        body: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 250,
                  color: Colors.green,
                ),
                Positioned(
                  top: 250-100,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 80,
                  ),
                ),
                Container(
                  child: Column(
                    children: [Container(), Container(), Container()],
                  ),
                )
              ],
            ),
            SizedBox(height: 80,),
            Column(
                children: [
                  Text('Victoria Robertson'),
                  Text('A mantra goes here')
                ],
            ),
    CustomSlidingSegmentedControl<int>(
      fixedWidth: 150,
      initialValue: 1,
      children: {
        1: Text('Post', style: TextStyle(color: (selection_id == 1) ? Colors.green : Colors.black),),
        2: Text('Photos',style: TextStyle(color: (selection_id == 2) ? Colors.green : Colors.black),),
      },
      decoration: BoxDecoration(
        color: Color.fromRGBO(246, 246, 246, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      thumbDecoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.3),
            blurRadius: 4.0,
            spreadRadius: 1.0,
            offset: Offset(
              0.0,
              2.0,
            ),
          ),
        ],
      ),
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInToLinear,
      onValueChanged: (v) {
        print(v);
        setState(() {
          selection_id = v;
        });
      },
    ),
      SizedBox(
        height: 320 ,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 6,
            itemBuilder: ( context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                  ),
                  Text('Header')
                ],
              );
            }),
      );

          ],
        ),
        bottomNavigationBar: navBar);
  }
}
Widget PostView() {
  return SizedBox(
    height: 320 ,
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 6,
        itemBuilder: ( context, index) {
          return ListTile(
            title: Text('Header'),
            subtitle: Text(
                "He'll want to use your yacht, and I don't want this thing smelling like fish."),
            trailing: Text('8m ago'),
          );
        }),
  );
}
