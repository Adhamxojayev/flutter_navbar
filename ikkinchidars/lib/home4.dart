
import 'package:flutter/material.dart';
import 'package:ikkinchidars/userdata.dart';

class Home_fo extends StatefulWidget {
  @override
  _Home_foState createState() => _Home_foState();
}

class _Home_foState extends State<Home_fo> {
  List<UserData> usersList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    addUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About",style: TextStyle(fontSize: 20),),
      ),
      body: ListView.builder(
          itemCount: usersList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(8),
              child: Container(
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          usersList[index].name,
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(height: 15,),
                        Text(
                          usersList[index].number,
                          style: TextStyle(fontSize: 22),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.laptop_mac, color: Colors.indigo,),
                        SizedBox(height: 15,),
                        Icon(Icons.arrow_back, color: Colors.red,),
                      ],
                    ),
                  ], 
                ),
              ),
            );
          }),
    );
  }

  void addUsers() {
   
    usersList.add(UserData("github", "Adhamxojayev"));
    usersList.add(UserData("Telegram", "https://t.me/Web_dasturchi1"));
    usersList.add(UserData("developer", "Flutter   python"));
  }
}
