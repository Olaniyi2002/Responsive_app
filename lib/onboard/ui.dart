import 'package:flutter/material.dart';

import 'data.dart';

class BordingUi extends StatefulWidget {
  const BordingUi({Key? key}) : super(key: key);

  @override
  _BordingUiState createState() => _BordingUiState();
}

var selected;
PageController pager = PageController();

class _BordingUiState extends State<BordingUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      body: Column(
        children: [
          SizedBox(
            height: 560,
            width: 900,
            child: PageView.builder(
              onPageChanged: (val) {
                setState(() {
                  selected = val;
                });
              },
              itemCount: onboardInfo.length,
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    SizedBox(
                        height: 400,
                        width: 500,
                        child: Image.asset(
                          onboardInfo[i].image,
                        )),
                    Text(
                      onboardInfo[i].title,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(onboardInfo[i].message),
                  ],
                );
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                pager.jumpToPage(selected+1);
              },
              child: Text("hi")),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(onboardInfo.length, (index) {
              return GestureDetector(
                onTap: (){
              pager.animateToPage(index, duration: const Duration(
                seconds: 1
              ), curve: Curves.easeInOut);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  decoration: BoxDecoration(
                      color: selected == index
                          ? Colors.orange.shade300
                          : Colors.red.shade300,
                      borderRadius: BorderRadius.circular(20)),
                  curve: Curves.easeInOut,
                  height: 20,
                  width: selected == index ? 40 : 30,
                  margin: const EdgeInsets.only(right: 20),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
