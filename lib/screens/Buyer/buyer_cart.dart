import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});


  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 233, 227),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 54, 244),
        title: Text('Cart'),
      ),
     body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical:9.0),
          child: Card(
          
      
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product price',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        Text(
                          '\$99.99',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Image.asset(
                    'assets/product.png',
                    fit: BoxFit.cover,
                  ),
      
                

      
      
       Column(
  children: [

    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
         
          ElevatedButton(
            onPressed: () {
              // Add your invest button logic here
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Buy'),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              minimumSize: Size(200,50),
            ),
          ),
        ],
      ),
    ),





 Row(
children: [

Padding(
  padding: EdgeInsets.symmetric(vertical: 18.0),
  child:   Column( 
  
  
  
  children: [
  
     SizedBox(height: 20),
  
       
   
 
  
  ],
  
  
  
  ),
),
 
],

  
 ),
    
  ],
)

      
      
      
                ],
      
                
              ),
        
          ),
           
           
      
        ),
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