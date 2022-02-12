import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:plant_shopping_app/pages/widgets/themes.dart';

class MyDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      
      
      child: Container(
        
        color: MyTheme.darkgreen.withOpacity(0.2),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader( 
              
              padding: EdgeInsets.zero,
              child:

               Container(
                  color: MyTheme.darkgreen, 
                 child: UserAccountsDrawerHeader(margin: EdgeInsets.zero,
                             accountName: Text("Sejal Kothari"),
                             accountEmail: Text("sejalkothari12@gmail.com"),
                             currentAccountPicture: CircleAvatar(  
                               backgroundImage: AssetImage('assets/images/me.jpeg'),
                             ),),
               ),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text("Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text("Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text("Contact us",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
             ListTile(
              leading: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.black,
              ),
              title: Text("Log out",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  )),
            ),
          ],
        )
        
      ),
      
    );
  }
}