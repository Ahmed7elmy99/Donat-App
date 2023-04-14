//import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class DonersPage extends StatefulWidget {
  DonersPage({super.key});

  @override
  State<DonersPage> createState() => _DonersPageState();
}

class _DonersPageState extends State<DonersPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //automaticallyImplyLeading: false,
          backgroundColor: Color(0xffF15C62),
          title: Text(
            "المتبرعين",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          titleSpacing: 140,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => buildDoner(),
            separatorBuilder: (context, index) => Divider(),
            itemCount: 15));
  }

  Widget buildDoner() => Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "اسم المتبرع",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "المحافطة",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "+201012345678",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            width: 70,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      //بيخلي الصورة مدورة
                      backgroundColor: Color(0xffFFBBBB),
                      backgroundImage: AssetImage("assets/icons/donor3.png"),
                      radius: 30,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(bottom: 2, end: 3),
                      child: Container(
                        margin: EdgeInsets.only(top: 5),
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage:
                              AssetImage("assets/icons/blood-drop.png"),
                          child: Text("A",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          backgroundColor: Color(0xffFFBBBB),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ]),
      );
}
