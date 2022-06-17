
import 'package:expandable_list_flutter/basic_tile.dart';
import 'package:flutter/material.dart';




// info  https://www.youtube.com/watch?v=w1rSkpGMJdk

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Expandable list"),
        centerTitle: true,
      ),

      body: ListView(

        children: basicTiles.map(buildTile).toList(),
      ),

    );
  }

  Widget buildTile(BasicTile tile , {double leftPadding = 16}) {


    if(tile.tiles.isEmpty){

      return ListTile(

        contentPadding: EdgeInsets.only(left: leftPadding),

        title: Text(tile.title),
        onTap: (){
           // open detailed screen
          print("open detailed screen");
        },
      );



    }else{
      return ExpansionTile(

        tilePadding: EdgeInsets.only(left: leftPadding),

        trailing: SizedBox.shrink(),  // to remove arrow in the end right side
        leading: Icon(Icons.keyboard_arrow_right_outlined), // to add start left arrow icon


        title: Text(tile.title),
        children: tile.tiles
            .map((tile) => buildTile(tile , leftPadding: 16 +leftPadding ))
            .toList(),
      );
    }


  }

}
