import 'package:flutter/material.dart';
import 'package:flutter_widget/Style/text_style.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  Widget optionRow({
    required IconData icon,
    required String title,
    required String title1,
  }) {
    return Row(children: [
      Icon(
        icon,
        color: Color(0xFF007AFF),
      ),
      SizedBox(width: 5),
      Text(title, style: AppTextStyle.sub_title),
      Spacer(),
      Text(title1, style: AppTextStyle.text),
      SizedBox(
        width: 5,
      ),
      Icon(
        Icons.arrow_forward_ios_rounded,
        size: 17,
        color: Color(0xFF8E8E93),
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Settings',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFEFEFF4),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  Account', style: AppTextStyle.body),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(Icons.person, color: Color(0xFF007AFF)),
                            SizedBox(width: 5),
                            Text('Profile', style: AppTextStyle.sub_title),
                            Spacer(),
                            CircleAvatar(
                              radius: 17,
                              child: FaIcon(FontAwesomeIcons.user),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 17,
                              color: Color(0xFF8E8E93),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.5,
                        ),
                        Divider(
                          color: Color(0xFF8E8E93),
                          thickness: 1,
                          
                        ),
                         SizedBox(
                          height: 2.5,
                        ),
                        optionRow(
                            icon: Icons.lock_rounded,
                            title: 'Privacy & Security',
                            title1: ''),
                      ]),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text('  Preference', style: AppTextStyle.body),
                    SizedBox(height: 7),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Column(
                        children: [
                          optionRow(
                              icon: (Icons.language),
                              title: 'Language',
                              title1: 'English'),
                           SizedBox(
                          height: 2.5,
                        ),
                        Divider(
                          color: Color(0xFF8E8E93),
                          thickness: 1,
                          
                        ),
                         SizedBox(
                          height: 2.5,
                        ),
                          optionRow(
                              icon: Icons.nightlight_round_sharp,
                              title: 'Theme',
                              title1: 'Light'),
                           SizedBox(
                          height: 2.5,
                        ),
                        Divider(
                          color: Color(0xFF8E8E93),
                          thickness: 1,
                          
                        ),
                         SizedBox(
                          height: 2.5,
                        ),
                          optionRow(
                              icon: Icons.text_fields_rounded,
                              title: 'Text Size',
                              title1: 'Medium')
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '  Notification',
                      style: AppTextStyle.body,
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.notifications,color: Color(0xFF007AFF),),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Push Notification',
                                  style: AppTextStyle.sub_title,
                                ),
                                Spacer(),
                                ToggleButtons(
                                  borderWidth: 5,
                                    color: Color(0xFF007AFF),
                                    children: [],
                                    isSelected: [])
                              ],
                            ),
                             SizedBox(
                          height: 2.5,
                        ),
                        Divider(
                          color: Color(0xFF8E8E93),
                          thickness: 1,
                          
                        ),
                         SizedBox(
                          height: 2.5,
                        ),
                            Row(
                              children: [
                                Icon(Icons.mail,color: Color(0xFF007AFF),),
                                SizedBox(width:5),
                                Text('Email Alerts',style: AppTextStyle.sub_title,),
                                Spacer(),
                                ToggleButtons(color: Color(0xFF007AFF),children: [], isSelected: [])
                              ],
                            ),

                          ],
                          
                        )),
                        SizedBox(height: 7,),
                        Text('  Support',style:AppTextStyle.body),
                        Container(
                          padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Column(children: [
                          optionRow(icon: Icons.question_mark_rounded, title: 'Help Center', title1: ''),
                           SizedBox(
                          height: 2.5,
                        ),
                        Divider(
                          color: Color(0xFF8E8E93),
                          thickness: 1,
                          
                        ),
                         SizedBox(
                          height: 2.5,
                        ),
                          optionRow(icon: Icons.call, title: 'Contact us', title1: ''),
                           SizedBox(
                          height: 2.5,
                        ),
                        Divider(
                          color: Color(0xFF8E8E93),
                          thickness: 1,
                          
                        ),
                         SizedBox(
                          height: 2.5,
                        ),
                          optionRow(icon: Icons.warning_amber_rounded, title: "About", title1: 'Version 1.2.0'),
                        ],),
                        ),
                        SizedBox(height: 7,),
                        Container(padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(13),
                        ),
                       child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.logout,color: Color(0xFFFF3B30),),Text('Log Out',style:TextStyle(color: Color(0xFFFF3B30),fontSize: 17,fontWeight: FontWeight.w600))],)
                ),],
                ),
              )
            ],
          )),
    ));
  }
}
