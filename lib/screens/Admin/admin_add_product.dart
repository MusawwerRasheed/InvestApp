import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    var _productImage;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 151, 189, 15),
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              
              
              decoration: InputDecoration(
                labelText: 'Product Name',border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  // _productName = value;
                });
              },
            ),
            SizedBox(height: 6.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Product Price',border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,

              onChanged: (value) {
                setState(() {
                  // _productPrice = double.tryParse(value);
                });
              },
            ),

 SizedBox(height: 6.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Profit percentage',border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,

              onChanged: (value) {
                setState(() {
                  // _productPrice = double.tryParse(value);
                });
              },
            ),


            SizedBox(height: 6.0),
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: _productImage != null
                  ? Image.file(
                      _productImage,
                      fit: BoxFit.cover,
                    )
                  : Center(
                      child: Text('No image selected.'),
                    ),
            ),
            SizedBox(height: 6.0),
            ElevatedButton(
              onPressed: (){},
              child: Text('Select Image'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
            
            ElevatedButton(
  
              onPressed: (){},
              child: Text('Post Product'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
          ],
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
  


}