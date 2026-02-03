import 'package:flutter/material.dart';
import 'package:flutter_widget/MyHomePage.dart';
import 'package:flutter_widget/instagramProfileUI.dart';
import 'package:flutter_widget/productListingUI.dart';
import 'package:flutter_widget/settings_screen.dart';

class Alluilist extends StatelessWidget {
  final List<Widget> _screen = [
    profileUI(),
    MyHomePage(),
    productListing(),
    productListing(),
    SettingsScreen(),
  ];
  var arr = [
    'Instagram Profile UI',
    'Home Page',
    'Product Card',
    'Product Listing',
    'Setting Screen'
  ];
  Widget optionRow({required BuildContext context, required int index}) {
    return Card(
      child: Column(
        children: [
          Text(arr[index]),
          ElevatedButton(
              onPressed: () {
               
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => _screen[index],
                    ));
              },
              child:Text('View') )

        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Check UI'),
        backgroundColor: Colors.deepOrange[400],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 160,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12),
              itemCount: arr.length,
          itemBuilder: (context, index) {
            
            return optionRow(context: context,index: index);
          }),
    );
  }
}
