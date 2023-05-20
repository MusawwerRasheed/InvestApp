import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class Invest extends StatefulWidget {
  const Invest({super.key});



  @override
  State<Invest> createState() => _InvestState();

}



class _InvestState extends State<Invest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 233, 227),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 197, 186),
        title: Text('Invest'),
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
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              filled: true,
              fillColor: Colors.grey[200],
              hintText: 'Investment Amount',
              hintStyle: TextStyle(
                color: Colors.grey[500],
                fontSize: 14,
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {
            // Add your invest button logic here
          },
          child: Text('Invest'),
          style: ElevatedButton.styleFrom(
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    ),


 Row(
children: [

Padding(
  padding: EdgeInsets.symmetric(vertical: 18.0),
  child:   Column( 
  
  
  
  children: [
  
     SizedBox(height: 20),
  
      Row(
        children: [
          Text(
  
            'Product Value: ',
  
            style: TextStyle(
  
              color: Colors.black,
  
              fontSize: 16,
  
     
  
            ),
  
          ),

Text(
  
            '    \$99.00',
  
            style: TextStyle(
               fontWeight: FontWeight.bold,
              color: Colors.black,
  
              fontSize: 16,
  
     
  
            ),
  
          ),


        ],
      ),
  
      
  
        Row(
        children: [
          Text(
  
            ' Your Investment:',
  
            style: TextStyle(
  
              color: Colors.black,
  
              fontSize: 16,
  
     
  
            ),
  
          ),

Text(
  
            '  \$30.00',
  
            style: TextStyle(
               fontWeight: FontWeight.bold,
              color: Colors.black,
  
              fontSize: 16,
  
     
  
            ),
  
          ),


        ],
      ),



        Row(
        children: [
          Text(
  
            'Projected Profit: ',
  
            style: TextStyle(
  
              color: Colors.black,
  
              fontSize: 16,
  
     
  
            ),
  
          ),

Text(
  
            '  \$10.00',
  
            style: TextStyle(
               fontWeight: FontWeight.bold,
              color: Colors.black,
  
              fontSize: 16,
  
     
  
            ),
  
          ),


        ],
      ),
  
       
  
      
  
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
         
        backgroundColor: Color.fromARGB(255, 93, 81, 128), // Custom background color
        type: BottomNavigationBarType.shifting, // Custom type
        selectedItemColor: Color.fromARGB(255, 15, 85, 78), // Custom selected item color
        unselectedItemColor: Color.fromARGB(255, 255, 255, 255), // Custom unselected item color
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 61, 197, 186), // Custom background color
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