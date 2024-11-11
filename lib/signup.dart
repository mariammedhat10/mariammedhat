import 'package:flutter/material.dart';
import 'package:login_signup/login.dart';

class signup extends StatelessWidget {
   signup({super.key});
var fromkey=GlobalKey<FormState>();
var username=TextEditingController();
var password=TextEditingController();
List data=[];
@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: fromkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextFormField(style: TextStyle(fontSize: 35,),
                controller: username,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                  label: Text("UserName"),
                  prefix: Icon(Icons.person_2),
                ),

               validator: (x)
                  {
                    if(x==null||x.isEmpty){
                      return "Error user name";
                    }
                  },



              ),
              SizedBox(height: 20,),
              TextFormField(style: TextStyle(fontSize: 35,),
                controller: password,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                  label: Text("Password"),
                  prefix: Icon(Icons.password),
                ),

                validator: (x)
                {
                  if(x==null||x.isEmpty){
                    return "Error user name";
                  }
                },

              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.only(right: 15,left: 15),),
              ElevatedButton(
                  onPressed: () {
              if(fromkey.currentState!.validate()){
                data.add({
                  "username":username.text,
                  "password":password.text,
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) =>login(validdata:data,)));


              }
              
                  }, 
                  child: Text("signup"))
            ],
          ),
      ),

    );
  }
}
