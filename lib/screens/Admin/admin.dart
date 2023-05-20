import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:investorapp/screens/Admin/admin_add_product.dart';
import 'package:investorapp/screens/Admin/admin_products.dart';
import 'package:investorapp/screens/products.dart';
import 'package:flutter/material.dart';
 



class Admin extends StatefulWidget {

  @override
  _AdminState createState() => _AdminState();

}

class _AdminState extends State<Admin> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        
        title: Text('Admin Dashboard'),
        backgroundColor: Color.fromARGB(255, 151, 189, 15),
       
      
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            color: Colors.white,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddProduct(),
              ),
            );
          },
          ),
        ],


      ),



drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 151, 189, 15)),
              accountName: Text('Admin'),
              accountEmail: Text(''),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/happy.png'),
                
              ),
              
            ),
             
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // TODO: Implement settings page navigation logic
              },
            ),
             ListTile(leading:Icon(Icons.logout), title:Text('Logout'), onTap: (){}),

          ],
        ),
      ),


      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Sales and Inventory',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                children: <Widget>[
                  _buildCard(
                    'Total Sales',
                    '\$75,000',
                    Colors.purple,
                    Icons.monetization_on,
                  ),

                  _buildCard(
                    'Unsold Products',
                    '200',
                    Colors.orange,
                    Icons.shopping_cart,
                  ),

                  _buildCard(
                    'Total Profit',
                    '\$12,500',
                    Colors.green,
                    Icons.attach_money,
                  ),

                  _buildCard(
                    'New Orders',
                    '15',
                    Colors.red,
                    Icons.shopping_bag,
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    
 bottomNavigationBar: BottomNavigationBar(
         
        backgroundColor: Colors.grey[900], // Custom background color
        type: BottomNavigationBarType.shifting, // Custom type
        selectedItemColor: Color.fromARGB(255, 255, 255, 255), // Custom selected item color
        unselectedItemColor: Color.fromARGB(255, 0, 0, 0), // Custom unselected item color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 151, 189, 15), // Custom background color
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.green, // Custom background color
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.red, // Custom background color
          ),
        ],
      ),

    );

    
  }

  Widget _buildCard(String title, String value, Color color, IconData icon) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(8.0),
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: 40.0,
          ),
          SizedBox(height: 8.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            value,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
            ),
          ),
          
        ],
      
      
      ),
  
  
  
    );
    






  }
  
}


