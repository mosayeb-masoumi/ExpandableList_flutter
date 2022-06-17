
import 'package:expandable_list_flutter/example2/month_model.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({Key? key}) : super(key: key);

  @override
  _Example2State createState() => _Example2State();
}

class _Example2State extends State<Example2> {


  final GlobalKey<ExpansionTileCardState> cardA = new GlobalKey();
  List<MonthModel> monthModel  =[];


  @override
  void initState() {
    _createList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('ExpansionTileCard Demo'),
        ),
        body: Container(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: monthModel.length,
              key: cardA,
              itemBuilder: (BuildContext context , int index){
                return _buildItemList(monthModel[index] , index);
              }

          ),
        )
    );
  }




  Widget _buildItemList(MonthModel model, int fatherIndex) {
    return Card(

      child: ExpansionTile(

        title: Text(model.title , style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold , fontSize: 16),),
        children: [   // for exandable content



          ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext, index){
              return GestureDetector(
                child: Card(
                  child: ListTile(
                    title: Text("This is title " + index.toString()),
                    subtitle: Text("This is subtitle "+ index.toString()),
                  ),
                ),

                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("clicked " + fatherIndex.toString() + "    seb " + index.toString()),
                    backgroundColor: Colors.red,
                  ));

                },
              );
            },
            shrinkWrap: true,
            padding: EdgeInsets.all(5),
            scrollDirection: Axis.vertical,
          )





          // ListTile(
          //   title: Text(model.description , style: TextStyle(color: Colors.blue , fontSize: 14),),
          // ),
          // ButtonBar(
          //   alignment: MainAxisAlignment.spaceAround,
          //   buttonHeight: 52.0,
          //   buttonMinWidth: 90.0,
          //    children: [
          //      FlatButton(
          //        shape: RoundedRectangleBorder(
          //            borderRadius: BorderRadius.circular(4.0)),
          //        onPressed: () {
          //          cardA.currentState?.expand();
          //        },
          //        child: Column(
          //          children: <Widget>[
          //            Icon(Icons.arrow_downward),
          //            Padding(
          //              padding: const EdgeInsets.symmetric(vertical: 2.0),
          //            ),
          //            Text('Open'),
          //          ],
          //        ),
          //      ),
          //      FlatButton(
          //        shape: RoundedRectangleBorder(
          //            borderRadius: BorderRadius.circular(4.0)),
          //        onPressed: () {
          //          cardA.currentState?.collapse();
          //        },
          //        child: Column(
          //          children: <Widget>[
          //            Icon(Icons.arrow_upward),
          //            Padding(
          //              padding: const EdgeInsets.symmetric(vertical: 2.0),
          //            ),
          //            Text('Close'),
          //          ],
          //        ),
          //      ),
          //    ],
          // )
        ],

      ),
    );
  }




  void _createList() {
    monthModel.add(new MonthModel("title 1", "description 1"));
    monthModel.add(new MonthModel("title 2", "description 2"));
    monthModel.add(new MonthModel("title 3", "description 3"));
    monthModel.add(new MonthModel("title 4", "description 4"));
    monthModel.add(new MonthModel("title 5", "description 5"));
  }
}

