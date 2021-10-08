import 'package:caminandum_web/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class PedometerTabsScreen extends StatefulWidget {

  final String navTitle;
  final int tabIndex;

  const PedometerTabsScreen({Key? key, required this.navTitle, required this.tabIndex}) : super(key: key);


  @override
  _PedometerTabsScreenState createState() => _PedometerTabsScreenState();
}

class _PedometerTabsScreenState extends State<PedometerTabsScreen> {


  TextStyle titleStyle = TextStyle(fontSize: 21, color: Colors.white);
  BorderSide txtBorder = BorderSide(color: Colors.white, width: 1.0);
  double separatorSpacing = 44;
  double spacing = 12;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: ColorPalette.colorWhite, //change your color here
          ),
          backgroundColor: Colors.black,
          title: Text(this.widget.navTitle, style: titleStyle,),
        ),
      body: this.widget.tabIndex == 3 ? leagueInfo() : goalInfo(),
    );
  }

  Widget goalInfo() {
     return SingleChildScrollView(
       child: Container(
         padding: EdgeInsets.all(21.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             Text('Goal',style: titleStyle,),
             SizedBox(height: spacing,),
             TextField(
                 decoration: InputDecoration(
                     enabledBorder:OutlineInputBorder(
                       borderSide: txtBorder,),
                     focusedBorder: OutlineInputBorder(borderSide: txtBorder,),
                     hintText: 'Goal'
                 )
             ),

             SizedBox(height: separatorSpacing,),

             Text('Calories',style: titleStyle,),
             SizedBox(height: spacing,),
             TextField(
                 decoration: InputDecoration(
                     enabledBorder:OutlineInputBorder(borderSide: txtBorder,),
                     focusedBorder: OutlineInputBorder(borderSide: txtBorder,),
                     hintText: 'Calories'
                 )
             ),

             SizedBox(height: separatorSpacing,),

             Text('Active time',style: titleStyle,),
             SizedBox(height: spacing,),
             TextField(
                 decoration: InputDecoration(
                     enabledBorder:OutlineInputBorder(
                       borderSide: txtBorder,),
                     focusedBorder: OutlineInputBorder(borderSide: txtBorder,),
                     hintText: 'Active time'
                 )
             ),

             SizedBox(height: separatorSpacing,),

             Text('Miles',style: titleStyle,),
             SizedBox(height: spacing,),
             TextField(
                 decoration: InputDecoration(
                     enabledBorder:OutlineInputBorder(
                       borderSide: txtBorder,),
                     focusedBorder: OutlineInputBorder(borderSide: txtBorder,),
                     hintText: 'Miles'
                 )
             )


           ],
         ),
       ),
     );
  }

  Widget leagueInfo() {
    return ListView.builder(
      shrinkWrap: false,
      itemCount: 5,
      itemBuilder:(context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.orange),
            borderRadius:  BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          margin: EdgeInsets.all(12.0),
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Row(
              children: [
                ClipOval(
                  child: Image.network(
                    'https://images.pexels.com/photos/2379004/pexels-photo-2379004.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    width: 44,
                    height: 44,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 12,),
                Expanded(child: Text("Jems", style: TextStyle(fontSize: 21, color: Colors.white , fontWeight: FontWeight.bold),),),
                SizedBox(width: 12,),
                Text("5600", style: TextStyle(fontSize: 17, color: Colors.white , fontWeight: FontWeight.normal)),
                SizedBox(width: 12,),
              ],
            ),
          ),
        );
      } ,

    );
  }

}
