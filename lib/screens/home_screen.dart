import 'package:caffeina/screens/hot_coffees.dart';
import 'package:caffeina/constants/app_colors.dart';
import 'package:caffeina/screens/cold_coffees.dart';
import 'package:caffeina/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:badges/src/badge.dart';
import 'package:icon_badge/icon_badge.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  late TabController _tabController;
  FocusNode _textFormFeildFocusNode = FocusNode();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _textFormFeildFocusNode.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    _tabController= TabController(length: 3, initialIndex:0, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        if (_textFormFeildFocusNode.hasFocus) {
          _textFormFeildFocusNode.unfocus();
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          // leading: Icon(Icons.menu),
          title: Text('Caffenia'),
          actions: [
            // IconButton(onPressed: (){}, icon:  Icon(Icons.shopping_cart),)

            IconBadge(
              icon: Icon(Icons.shopping_cart),
              itemCount: 0,
              badgeColor: Colors.red,
              itemColor: Colors.white,
              // hideZero: true,
              onTap: () {
                print('test');
              },
            ),
          ],
        ),
          drawer: Drawer(
              elevation: 15,
              backgroundColor: AppColors.whiteColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    child: UserAccountsDrawerHeader(
                      accountName: Text(
                        'Iqra Imran',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      accountEmail: Text('iqraimran074@gmail.com'),
                      decoration: BoxDecoration(color: Colors.black54),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                            },
                            child: ListTile(
                              leading: Icon(Icons.home,color: AppColors.blackColor,),
                              title: Text(
                                'Home',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.favorite_rounded,color: AppColors.blackColor,),
                              title: Text(
                                'Favorites',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                            },
                            child: ListTile(
                              leading: Icon(Icons.person,color: AppColors.blackColor,),
                              title: Text(
                                'Profile',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.archive,color: AppColors.blackColor,),
                              title: Text(
                                'Archive',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.share,color: AppColors.blackColor),
                              title: Text(
                                'Share',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.delete,color: AppColors.blackColor,),
                              title: Text(
                                'Trash',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                          Divider(thickness: 2,color: Colors.grey,indent: 18,endIndent: 18,),
                          InkWell(
                            onTap: (){},
                            child: ListTile(
                              leading: Icon(Icons.logout_sharp,color: AppColors.blackColor,),
                              title: Text(
                                'Log Out',
                                style: TextStyle(color: AppColors.blackColor),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
        body: Column(
          children: [
            // top text
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text('Its great day for coffee',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            ),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                focusNode: _textFormFeildFocusNode,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'search here',
                  enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: AppColors.hintTextColor)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.hintTextColor),
                    borderRadius: BorderRadius.circular(30),
                  )

                ),
              ),
            ),
            // tabs
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10),
              child: Container(
                child: TabBar(
                  indicatorColor: AppColors.starColor,
                    controller: _tabController,
                    tabs: [
                  Tab(text: 'Hot Coffee',),
                  Tab(text: 'Cold Coffee',),
                ]),
              ),
            ),
            SizedBox(height: 20,),
            // tab bar view
            Expanded(
              child: Container(
                width: double.maxFinite,
                height: 300,
                child: TabBarView(
                    controller: _tabController,
                    children: [
                     HomeGridView(),
                      ColdCoffee(),
                ]),
              ),
            )

          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items:<BottomNavigationBarItem> [
              BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 30,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: (){
                FocusScope.of(context).requestFocus(_textFormFeildFocusNode);
                },
                  icon: Icon(Icons.search,size: 30),),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add,size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications,size: 30),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                }, icon: Icon(Icons.person,size: 30)),
                label: '',
              ),
            ],
            selectedItemColor: AppColors.starColor,
            unselectedItemColor: AppColors.hintTextColor,
          ),
        ),
      ),
    );
  }
}
