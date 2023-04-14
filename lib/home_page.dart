import 'package:flutter/material.dart';


import 'donors_page.dart';
import 'logupscreen.dart';
import 'widgets/bottom navigation bar widget.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        //  pages.elementAt(selectedIndex)
          CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffFFBBBB),
            leading: Icon(
              Icons.menu,
              size: 35,
            ),
            expandedHeight: 200,
            //floating: false,
            //pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Color(0xffF15C62),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text("اسم المتبرع",
                      style: TextStyle(color: Colors.white, fontSize: 25)),
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffFFBBBB),
                    backgroundImage: AssetImage("assets/icons/donor3.png"),
                    radius: 25,
                  ),
                ],
              ),
              titlePadding: EdgeInsets.only(right: 20, bottom: 70),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRect(
                //borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffFFBBBB),
                      border: Border(
                          right:
                              BorderSide(width: 7, color: Color(0xffF15C62)))),
                  child: Row(children: [
                    Container(
                      child: Image.asset("assets/icons/blood-donation.png"),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "التبرع بالدم",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15C62)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "التبرع بالدم يجعلك بطلا لشخص محتاج",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffF15C62)),
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, //عشان لو النص طويل يعمل مكانه نقط
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRect(
                //borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffFFE4C0),
                      border: Border(
                          right:
                              BorderSide(width: 7, color: Color(0xffF15C62)))),
                  child: Row(children: [
                    Container(
                      child: Image.asset("assets/icons/men.png"),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "البحث عن متبرع",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15C62)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "نحن هنا لمساعدتك في ايجاد المتبرع المناسب",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffF15C62)),
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, //عشان لو النص طويل يعمل مكانه نقط
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRect(
                //borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffF0FFC2),
                      border: Border(
                          right:
                              BorderSide(width: 7, color: Color(0xffF15C62)))),
                  child: Row(children: [
                    Container(
                      child: Image.asset("assets/icons/blood.png"),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "طلبات دم عاجلة",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Tajawal",
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15C62)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "يمكنك ارسال طلب عاجل او الرد عليه",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffF15C62)),
                              textAlign: TextAlign.right,
                              maxLines: 3,
                              overflow: TextOverflow
                                  .ellipsis, //عشان لو النص طويل يعمل مكانه نقط
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRect(
                //borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffBFFFF0),
                      border: Border(
                          right:
                              BorderSide(width: 7, color: Color(0xffF15C62)))),
                  child: Row(children: [
                    Container(
                      child: Image.asset("assets/icons/blood-bank.png"),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "اقرب مستشفى",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15C62)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "ابحث عن اقرب مستشفى للتبرع بالدم",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffF15C62)),
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, //عشان لو النص طويل يعمل مكانه نقط
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRect(
                //borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffAEEBC1),
                      border: Border(
                          right:
                              BorderSide(width: 7, color: Color(0xffF15C62)))),
                  child: Row(children: [
                    Container(
                      child: Image.asset("assets/icons/medicine.png"),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "اختبر نفسك",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15C62)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "هل انت جاهز للتبرع ؟",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffF15C62)),
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, //عشان لو النص طويل يعمل مكانه نقط
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ClipRect(
                //borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                      color: Color(0xffFFE6AB),
                      border: Border(
                          right:
                              BorderSide(width: 7, color: Color(0xffF15C62)))),
                  child: Row(children: [
                    Container(
                      child: Image.asset("assets/icons/blood-type.png"),
                      margin: EdgeInsets.only(left: 20),
                    ),
                    Container(
                      width: 200,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "فصائل الدم",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xffF15C62)),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "تعرف المزيد حول الدم وانواعه",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xffF15C62)),
                              textAlign: TextAlign.right,
                              maxLines: 2,
                              overflow: TextOverflow
                                  .ellipsis, //عشان لو النص طويل يعمل مكانه نقط
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ],
        
      ),
       
    
    );
  }
}
