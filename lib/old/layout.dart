import 'package:flutter/material.dart';

class Layout extends StatefulWidget {

  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:AppBar(
        title: Text(width.toString()),
        backgroundColor: width>=700?Colors.green:Colors.red,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height:1000,
          width: 900,
          child: Scrollbar(
            child: Column(
              children: [
                GridView.builder(
                  shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: width<=200?1:width<=500?3:width<=700?5:7,
                      mainAxisSpacing: 20
                    ),
                    itemCount: 20,
                    itemBuilder: (_,i){
                      return const Card(color:Colors.green,);
                    }),
                const Text("About")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
