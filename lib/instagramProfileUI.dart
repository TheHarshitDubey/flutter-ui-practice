import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profileUI extends StatelessWidget {
  final arr=[1,2,3,4,5,6,7,8,9];
   profileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: FaIcon(
          FontAwesomeIcons.angleLeft,
          size: 24,
          color: Color(0xFF000000),
        ),
        centerTitle: true,
        title: Text(
          'Username_Official',
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
              fontSize: 17),
        ),
        actions: [
          FaIcon(
            FontAwesomeIcons.ellipsis,
            size: 24,
            color: Color(0xFF000000),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.red,
                    child: CircleAvatar(
                      radius: 43,
                      backgroundImage: AssetImage("assets/images/speaker.png"),
                      // child: ClipRRect(
                      //   borderRadius: BorderRadius.circular(5),
                      //   child: Image.asset(
                      //     'assets/images/speaker.png',
                      //     fit: BoxFit.fill,
                      //   ),
                      // ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      const Center(
                          child: Text(
                        '1,234',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                      const Center(
                          child: Text('Post',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 13,
                              ))),
                    ],
                  ),
                  Column(
                    children: [
                      const Center(
                          child: Text(
                        '5.6M',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                      const Center(
                          child: Text('Followers',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 13,
                              ))),
                    ],
                  ),
                  Column(
                    children: [
                      const Center(
                          child: Text(
                        '234',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      )),
                      const Center(
                          child: Text('Following',
                              style: TextStyle(
                                color: Color(0xFF000000),
                                fontSize: 13,
                              ))),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 110,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                  Text('Name LastName',
                      style: TextStyle(fontSize: 13, color: Color(0xFF000000))),
                  Text('Name LastName',
                      style: TextStyle(fontSize: 13, color: Colors.grey[400])),
                  Row(
                    children: [
                      Text('Creating Aesthetic.',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF000000))),
                      FaIcon(
                        FontAwesomeIcons.circleNodes,
                        color: Colors.redAccent,
                      ),
                      Text('NYC',
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF000000))),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.mail),
                      Text("contact@gmail.com",
                          style:
                              TextStyle(fontSize: 14, color: Color(0xFF000000))),
                    ],
                  ),
                  Text('Name LastName',
                      style: TextStyle(fontSize: 13, color: Colors.grey[400])),
                ]),
              ),SizedBox(height: 8,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF8E8E93), 
                              width: 1.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {},
                        child: Text('Edit Profile',
                            style:
                                TextStyle(fontSize: 14, color: Color(0xFF000000)))),
                  ),
                              SizedBox(width: 5,),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF8E8E93), 
                              width: 1.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                        onPressed: () {},
                        child: Text(
                          'Share Profile',
                          style: TextStyle(fontSize: 14, color: Color(0xFF000000)),
                        )),
                  ),SizedBox(width: 5,),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0xFF8E8E93), 
                              width: 1.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            )),
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.userPlus,
                        size: 14,
                        color: Color(0xFF000000),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              
              SizedBox(
                height: 100,
                child: ListView.builder(
                  
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: arr.length,
                  
                  itemBuilder:(context,index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 37,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.grey[400],
                        child: CircleAvatar(
                          
                          radius: 33,
                        // backgroundImage: AssetImage('assets/images/speaker.png'),
                        child: Text('$index'),
                        ),
                      ),
                    ),
                  );
                } ,),
              ),
              Align(
                alignment:Alignment.bottomLeft,
                 child:Text('Story Highlight',)),
                 SizedBox(height: 8,),
                 Padding(
                   padding: const EdgeInsets.fromLTRB(50,0,50,0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    FaIcon(FontAwesomeIcons.tableCells),
                    FaIcon(FontAwesomeIcons.clapperboard),
                    FaIcon(FontAwesomeIcons.idBadge)
                   ],),
                 ),
                 SizedBox(height: 4,),
                 GridView.extent(
                  shrinkWrap: true,
                  maxCrossAxisExtent: 160 ,
                  mainAxisSpacing: 2,
                 crossAxisSpacing: 2,
                 children: List.generate(arr.length, (index) {
                  return Image.asset('assets/images/speaker.png',fit: BoxFit.cover,);
                 },),
                 )
            ],
                    ),
                  ),
          )),
    );
  }
}
