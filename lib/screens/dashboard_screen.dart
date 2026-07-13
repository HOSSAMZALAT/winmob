import 'package:flutter/material.dart';

import '../widgets/dashboard_item.dart';

class DashboardScreen extends StatelessWidget {

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        title: const Text("WinMob CRM"),

        centerTitle: true,

      ),

      drawer: Drawer(

        child: ListView(

          children: [

            const UserAccountsDrawerHeader(

              accountName:
              Text("Administrator"),

              accountEmail:
              Text("admin@egypt-aware.com"),

              currentAccountPicture:

              CircleAvatar(

                child: Icon(

                  Icons.person,

                  size:40,

                ),

              ),

            ),

            ListTile(

              leading:
              const Icon(Icons.home),

              title:
              const Text("Dashboard"),

              onTap: () {},

            ),

            ListTile(

              leading:
              const Icon(Icons.people),

              title:
              const Text("بيانات العملاء"),

              onTap: () {},

            ),

            ListTile(

              leading:
              const Icon(Icons.inventory),

              title:
              const Text("المنتجات"),

              onTap: () {},

            ),

            ListTile(

              leading:
              const Icon(Icons.settings),

              title:
              const Text("الإعدادات"),

              onTap: () {},

            ),

            const Divider(),

            ListTile(

              leading:
              const Icon(Icons.logout),

              title:
              const Text("تسجيل الخروج"),

              onTap: (){

                Navigator.pop(context);

              },

            ),

          ],

        ),

      ),

      body: Padding(

        padding:
        const EdgeInsets.all(15),

        child: GridView.count(

          crossAxisCount:2,

          crossAxisSpacing:15,

          mainAxisSpacing:15,

          children: [

            DashboardItem(

              icon:Icons.people,

              title:"بيانات العملاء",

              color:Colors.blue,

              onTap:(){

              },

            ),

            DashboardItem(

              icon:Icons.inventory,

              title:"منتجات",

              color:Colors.green,

              onTap:(){

              },

            ),

            DashboardItem(

              icon:Icons.receipt,

              title:"الفواتير",

              color:Colors.orange,

              onTap:(){

              },

            ),

            DashboardItem(

              icon:Icons.bar_chart,

              title:"التقارير",

              color:Colors.purple,

              onTap:(){

              },

            ),

            DashboardItem(

              icon:Icons.settings,

              title:"الإعدادات",

              color:Colors.teal,

              onTap:(){

              },

            ),

            DashboardItem(

              icon:Icons.logout,

              title:"تسجيل الخروج",

              color:Colors.red,

              onTap:(){

                Navigator.pop(context);

              },

            ),

          ],

        ),

      ),

    );

  }

}