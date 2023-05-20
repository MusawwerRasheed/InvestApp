import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:investorapp/screens/products.dart';
import 'buyer_cart.dart';

class Buyer extends StatefulWidget {
  const Buyer({super.key});

  @override
  State<Buyer> createState() => _BuyerState();
}

class _BuyerState extends State<Buyer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
       appBar: AppBar( 
      backgroundColor: Color.fromARGB(255, 152, 54, 244),
        title: Text('Buyer'),
          
      ), 

        drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 152, 54, 244)),
              accountName: Text('Buyer'),
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
       
      body: GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Image.asset('assets/product.png' ,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'product Name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    
                      Row(
                        children: [

 Text(
                            'Price  ',
                            style: TextStyle(
                           
                              fontSize: 16.0,
                            ),

                          ),


                          Text(
                            '\$99.99',
                            style: TextStyle(
                           fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),

                          ),
                        ],
                      ),
   
                      Row(
                        children: [
                         
                           
                        ],
                      ),
                     
                        






                 ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Cart
      ()),
    );
  },
  style: ElevatedButton.styleFrom(
    primary: Colors.black,
    minimumSize: Size(120, 32),
  ),
  child: Text('Buy'),
),

   







                    ],
                  ),
                ),
              ],
            ),
          );
        },
    ), 
           
           
           
            bottomNavigationBar: BottomNavigationBar(
         
        backgroundColor: Colors.grey[900], // Custom background color
        type: BottomNavigationBarType.shifting, // Custom type
        selectedItemColor: Colors.white, // Custom selected item color
        unselectedItemColor: Colors.grey[400], // Custom unselected item color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 152, 54, 244), // Custom background color
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
}