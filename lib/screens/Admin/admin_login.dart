 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:investorapp/screens/Admin/admin.dart';
 
 
 
 


class AdminLogin extends StatefulWidget {
 
 
 
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}





class _AdminLoginScreenState extends State<AdminLogin> {
  bool _isObscured = true; // For hiding and showing the password
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

 
 


 @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  
  void _toggleObscure() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(' '), 
      backgroundColor: Color.fromARGB(255, 151, 189, 15),
     actions: [
       
     ],

     
      ),
      backgroundColor: Color.fromARGB(255, 235, 232, 232),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 44.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Center(
                child: Text(
                  'Admin Login',
                  style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0),),
                  
                   
                ),
              ),
              
              SizedBox(height: 32.0),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  
                  labelText: 'Email',
                  
                  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 151, 189, 15)
      , width: 2.0),
      borderRadius: BorderRadius.circular(10.0),
    ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',

                   focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromARGB(255, 151, 189, 15)
      , width: 2.0)),


                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscured ? Icons.visibility_off : Icons.visibility,
                    ),
                    onPressed: _toggleObscure,
                  ),
                ),
                obscureText: _isObscured,
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                

                children: [
                ],
              ),
              SizedBox(height: 12.0),
              
            Center(
  child: ElevatedButton( style:ButtonStyle(backgroundColor:  MaterialStateProperty.all<Color>( Color.fromARGB(255, 151, 189, 15))),
    onPressed:(){
Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Admin()),);

    },
    child: Text('Login'),

  ),
),

              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                 
              ),
              
             Center(
),

            ],
          ),
        ),
      ),
          
   
    );

    
  }
}
