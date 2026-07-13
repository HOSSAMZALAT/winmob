import 'package:flutter/material.dart';

class DashboardItem extends StatelessWidget {

  final IconData icon;
  final String title;
  final Color color;
  final VoidCallback onTap;

  const DashboardItem({

    super.key,

    required this.icon,
    required this.title,
    required this.color,
    required this.onTap,

  });

  @override
  Widget build(BuildContext context) {

    return InkWell(

      onTap: onTap,

      borderRadius: BorderRadius.circular(20),

      child: Card(

        elevation: 8,

        shape: RoundedRectangleBorder(

          borderRadius:
          BorderRadius.circular(20),

        ),

        child: Column(

          mainAxisAlignment:
          MainAxisAlignment.center,

          children: [

            CircleAvatar(

              radius:35,

              backgroundColor:
              color.withOpacity(.15),

              child: Icon(

                icon,

                size:40,

                color:color,

              ),

            ),

            const SizedBox(height:15),

            Text(

              title,

              style: const TextStyle(

                fontSize:18,

                fontWeight:
                FontWeight.bold,

              ),

            ),

          ],

        ),

      ),

    );

  }

}