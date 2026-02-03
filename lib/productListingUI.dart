import'package:flutter/material.dart';
class productListing extends StatelessWidget {
  
   const productListing({super.key,});
   Widget productCard({
    required int index,
   }){
  // ({
  //   required String image1,
  //   required String brannd,
  //   required String productDetail,
  //   required String price,
  // })
    return Card(
      clipBehavior: Clip.antiAlias, 
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/speaker.png',),
            SizedBox(height: 5,),
            Text('Brand NIKE Running',style: TextStyle(fontSize: 12,color:Color(0xFF8E8E93)),),
            Text('Air Zoom Pegasus 39 max 2 Line',maxLines: 2,overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xFF000000)),),
            Text('\$120',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xFF000000)),),
            Row(
              children: [
                Expanded(child: Text('Original Price \$440',style: TextStyle(color: Color(0xFF8E8E93),fontSize: 13),)),
                SizedBox(width: 8,),
                Container(
                  
                   alignment: Alignment.center, // 👈 Explicitly centers the child
  decoration:  BoxDecoration(
    borderRadius: BorderRadius.circular(5),
    color: Colors.blue,
    // shape: BoxShape.circle,
  ),
                  child: Center(child: IconButton(onPressed: (){}, icon:Icon(Icons.add) )),
                )
              ],
            ),
            
          ],
        ),
      ),
      

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // titleSpacing: 15,
        leading: Center(child: Text('Shop',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color:Color(0xFF000000)))),
        actions: [
          Center(child: Icon(Icons.search_rounded,size: 24,color:Color(0xFF000000))),
          Center(child: Icon(Icons.shopping_cart_rounded,size: 24,color:Color(0xFF000000))),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Expanded(
            child: GridView.extent(
              childAspectRatio: 0.44, // 👈 Try 0.7 or 0.8 to make cards taller
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
              shrinkWrap: true,
                maxCrossAxisExtent: 170,
                physics: NeverScrollableScrollPhysics(),
                  children: List.generate(10, (index) { // 20 is the number of items
                return productCard(
                  index: index,
                );}
            ),
                    ),
          ),
      ),
    ));
  }
}