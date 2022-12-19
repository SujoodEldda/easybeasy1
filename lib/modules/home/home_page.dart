import 'package:easybeasy/modules/home/side_menu.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget
{
  final String email;
  HomePage({
  @required this.email,
  });

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     drawer: NavDrawer(),
     appBar: AppBar(
       backgroundColor: Colors.red,
       centerTitle: true,
       title: Image(
         image: NetworkImage(
             'https://raw.githubusercontent.com/SujoodEldda/EasyBeasy/main/Screenshot%20(6).png'),
         width: 100,
         height: 60,
       ),

     ),
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(
                   5.0,
                 ),
                 color: Colors.grey[300],
               ),
               padding: EdgeInsets.all(
                 13.0,
               ),
               child: Row(
                 children: [
                   Icon(
                     Icons.search,
                   ),
                   SizedBox(
                     width: 15.0,
                   ),
                   Text(
                     'Hi ${email}, what to search for you',

                   ),
                 ],
               ),
             ),
             SizedBox(
               height: 50.0,
             ),
             Row(
                 mainAxisAlignment: MainAxisAlignment.start ,
                 children: [
                   Stack(
                     alignment: AlignmentDirectional.bottomStart,
                     children: [
                       ClipRRect(
                         //or 15.0
                         child: Container(
                           height: 220.0,
                           width: 185.0,
                           color: Color(0xffFF0E58),
                           child: Image(
                             image: NetworkImage(
                                 'https://raw.githubusercontent.com/SujoodEldda/EasyBeasy/main/resize-1671283879313304447images1.jpeg'),
                             width: 185.0,
                             height: 220.0,
                           ),
                         ),
                       ),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: Text(
                               'Home design',
                               style: TextStyle(
                                   color: Colors.white,
                                 backgroundColor: Colors.brown,
                                 height: 1.3,
                               ),
                             ),

                           ),
                           SizedBox(
                             width: 27.0,
                           ),
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: IconButton(
                                 onPressed: (){
                                   print('hello');
                                 }
                                 , icon: Icon(
                               Icons.keyboard_arrow_right_sharp,
                               size: 60,
                             )),

                           ),
                         ],
                       ),

                     ],
                   ),
                   SizedBox(
                     width: 1.0,
                   ),
                   Stack(
                     alignment: AlignmentDirectional.bottomStart,
                     children: [
                       ClipRRect(
                         //or 15.0
                         child: Container(
                           height: 220.0,
                           width: 185.0,
                           color: Color(0xffFF0E58),
                           child: Image(
                             image: NetworkImage(
                                 'https://raw.githubusercontent.com/SujoodEldda/EasyBeasy/main/resize-1671255844644983494nucilecurataarterelesiregleazaglicemia76226.jpg'),
                             width: 185.0,
                             height: 220.0,
                           ),
                         ),
                       ),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: Text(
                               'Health and nature',
                               style: TextStyle(
                                 color: Colors.white,
                                 backgroundColor: Colors.brown,
                                 height: 1.3,

                               ),
                             ),
                           ),
                           SizedBox(
                             width: 20.0,
                           ),
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: IconButton(
                                 onPressed: (){
                                   print('hello');
                                 }
                                 , icon: Icon(
                               Icons.keyboard_arrow_right_sharp,
                               size: 60,
                             )),

                           ),
                         ],
                       ),
                     ],
                   ),

                 ]
             ),
             SizedBox(
               height: 1.0,
             ),
             Row(
                 mainAxisAlignment: MainAxisAlignment.start ,
                 children: [
                   Stack(
                     alignment: AlignmentDirectional.bottomStart,
                     children: [
                       ClipRRect(
                         //or 15.0
                         child: Container(
                           height: 220.0,
                           width: 185.0,
                           color: Color(0xffFF0E58),
                           child: Image(
                             image: NetworkImage(
                                 'https://raw.githubusercontent.com/SujoodEldda/EasyBeasy/main/resize-1671256607331918207images11.jpeg'),

                             width: 185.0,
                             height: 220.0,
                           ),
                         ),
                       ),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.end,

                         children: [
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: Text(
                               'Make up and beauty',
                               style: TextStyle(
                                 color: Colors.pink,
                                 height: 1.5,

                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: IconButton(
                                 onPressed: (){
                                   print('hello');
                                 }
                                 , icon: Icon(
                               Icons.keyboard_arrow_right_sharp,
                               size: 60,
                             )),

                           ),
                         ],
                       ),
                     ],
                   ),
                   SizedBox(
                     width: 1.0,
                   ),
                   Stack(
                     alignment: AlignmentDirectional.bottomStart,
                     children: [
                       ClipRRect(
                         //or 15.0
                         child: Container(
                           height: 220.0,
                           width: 185.0,
                           color: Color(0xffFF0E58),
                           child: Image(
                             image: NetworkImage(
                                 'https://raw.githubusercontent.com/SujoodEldda/EasyBeasy/main/resize-16712838041491697569istockphoto185858211612x612.jpg'),

                             width: 185.0,
                             height: 220.0,
                           ),
                         ),
                       ),
                       Row(
                         mainAxisAlignment:MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: Text(
                               'Electronics, cellular',
                               style: TextStyle(
                                 color: Colors.blueGrey,
                                 height: 1.0,

                               ),
                             ),
                           ),

                           Padding(
                             padding: const EdgeInsetsDirectional.only(
                               bottom: 3.0,
                               end: 3.0,
                             ),
                             child: IconButton(
                                 onPressed: (){
                                   print('hello');
                                 }
                                 , icon: Icon(
                               Icons.keyboard_arrow_right_sharp,
                               size: 60,
                             )),

                           ),
                         ],
                       ),
                     ],
                   ),

                 ]
             ),
           ],
         ),
       ),
     ),
   );
  }

  // 1. build item
  // 2. build list
  // 3. add item to list


  // arrow function
  Widget buildChatItem() =>
      Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              ClipRRect(
                //or 15.0
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  color: Color(0xffFF0E58),
                  child: Image(
                    image: NetworkImage(
                        'https://images.meesho.com/images/products/94769093/9jutc_512.webp'),
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 3.0,
                  end: 3.0,
                ),
                child: Text(
                  "the kitchen"
                ),
              ),
            ],
          ),


        ],
      );

}
