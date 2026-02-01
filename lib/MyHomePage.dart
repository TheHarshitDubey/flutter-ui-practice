import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile UI',
          style: TextStyle(
            fontSize: 26,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        // leading: Icon(Icons.account_circle_rounded),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 100),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blue[100],
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'Geeks '),
                      TextSpan(
                          text: 'for ',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                            color: Colors.deepOrangeAccent,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          )),
                      TextSpan(text: 'Geeks'),
                    ]),
              ),
              SizedBox(height: 15),
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.account_circle),
                      SizedBox(width: 8),
                      Text('Activity Status',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          )),
                      SizedBox(
                        width: 55,
                      ),
                      Spacer(),
                      Row(children: [
                        Icon(
                          Icons.circle,
                          color: Colors.green,
                        ),
                        Text("Active",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        Icon(Icons.arrow_forward_ios, color: Colors.grey),
                      ])
                    ],
                  )),
              Text(
                  textAlign: TextAlign.left,
                  'PERSONALIZE',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w400)),
              Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.account_circle),
                          Text(
                            "Personal Details",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios_rounded),
                        ],
                      ),
                      Divider(
                        thickness: 2,
                        color: Colors.grey[500],
                      ),
                      Row(children: [
                        Icon(Icons.note_alt_sharp),
                        Text('Heat Rate Zone',
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded),
                      ])
                    ],
                  )),
              const SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(children: [
                  Icon(Icons.settings),
                  Text('Settings',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400)),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios_rounded),
                ]),
              ),
              Align(
                  alignment: Alignment(0, 0),
                  child: Text(
                      textAlign: TextAlign.left,
                      'Need Help',
                      style: TextStyle(color: Colors.grey, fontSize: 20))),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(children: [
                      Icon(Icons.star_rounded),
                      SizedBox(width: 5),
                      Text('Tips And Tricks',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ]),
                    Divider(
                      thickness: 2,
                      color: Colors.grey[500],
                    ),
                    Row(children: [
                      Icon(Icons.question_mark_rounded),
                      Text('Frequently Asked Question',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400)),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
