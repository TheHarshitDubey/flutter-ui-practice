import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        titleSpacing: 0,
        title: Text('Product Card'),
      ),
      body: SingleChildScrollView(
        child: Container(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                )),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                'assets/images/speaker.png',
                height: 180,
              ),
              SizedBox(height: 8),
              Text(
                'Echo Smart Speaker 4th Gen',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text('Premium Sound, Voice control with Alexa (4th Gen)',
                  style: TextStyle(fontSize: 14, color: Color(0xFF666666))),
              SizedBox(height: 8),
              Row(
                children: [...List.generate(5, (_)=>Icon(Icons.star_rounded,
                      size: 20, color: Color(0xFF666666)),),
                  SizedBox(width: 6,),
                  Text('(245 reviews)',
                      style: TextStyle(fontSize: 14, color: Color(0xFF666666))),
                ],
              ),
              SizedBox(height: 15),
              Row(children: [
                Text("\$ 99.9",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color(0xFF007AFF))),
                Spacer(),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF007AFF),
                      foregroundColor: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Add to',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color: Colors.white)),
                              Text(
                                'Bag',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 9,
                          ),
                          Icon(
                            Icons.shopify_outlined,
                            size: 20,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ))
              ])
            ]),
          )
        ])),
      ),
    );
  }
}
