import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:investorapp/screens/Admin/admin.dart';
import 'package:investorapp/screens/Admin/admin_login.dart';
import 'package:investorapp/screens/Buyer/buyer_login.dart';
import 'package:investorapp/screens/Investor/investor_login.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
       backgroundColor: Color.fromARGB(255, 3, 3, 3),
      
      body: Center(
  child: Padding(
    padding: const EdgeInsets.all(28.0),
    child: Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(47.0),
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.asset('assets/invest.png'),
           SizedBox(width: 50,),

            Padding(
              
              padding: const EdgeInsets.symmetric(vertical:28.0),


              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminLogin()),
                  );
                  // Admin button pressed
                },

                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Color.fromARGB(255, 151, 189, 15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text('Admin', style: TextStyle(fontSize: 24.0), ),
                ),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(8.0),





              child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      Color.fromARGB(255, 15, 189, 166),
    ),

    
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => InvestorLogin()),
    );
    // Buyer button pressed
  },
  child: Padding(
    padding: const EdgeInsets.all(6.0),
    child: Text('Investor', style: TextStyle(fontSize:16),),
  ),
),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),

 




              
              child: ElevatedButton(
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
      Color.fromARGB(255, 152, 54, 244),
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  ),
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BuyerLogin()),
    );
    // Buyer button pressed
  },
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal:15.0),
    child: Text('Buyer', style: TextStyle(fontSize:15),),
  ),
),

            ),
          ],
        ),
      ),
    ),
  ),
),
    );
  }
}

  