import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Facebook",
          style: TextStyle(color: Colors.blue.shade400),
        ),
        actions: [
          //Spacer(flex: 6,),
          CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 15,
                )),
          ),
          SizedBox(
            width: width / 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.red.shade300,
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 15,
                )),
          ),
          SizedBox(
            width: width / 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue.shade200,
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.group,
                  color: Colors.white,
                  size: 15,
                )),
          ),
          SizedBox(
            width: width / 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue.shade400,
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.message,
                  color: Colors.white,
                  size: 15,
                )),
          ),
          SizedBox(
            width: width / 28,
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  backgroundImage: AssetImage("lib/images/profile/image1.jpg"),
                ),
                title: SizedBox(
                  width: width / 1.2,
                  height: height / 23,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "What's on your mind, Lisa",
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:0.0,left:5),
                        child: GestureDetector(
                          onTap: (){
                            print(height / 27.6);
                            print( height /29 );
                          },
                          child: Container(
                            height: height / 20.6,
                            width: width / 4,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius:width/20,
                        backgroundColor: Colors.green.shade200,
                      )

                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:0.0,left:5),
                        child: GestureDetector(
                          onTap: (){
                            print(height / 27.6);
                            print( height /29 );
                          },
                          child: Container(
                            height: height / 20.6,
                            width: width / 4,
                            decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius:width/20,
                        backgroundColor: Colors.blue.shade200,
                      )

                    ],
                  ),

                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:0.0,left:5),
                        child: GestureDetector(
                          onTap: (){
                            print(height / 27.6);
                            print( height /29 );
                          },
                          child: Container(
                            height: height / 20.6,
                            width: width / 4,
                            decoration: BoxDecoration(
                                color: Colors.red.shade100,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius:width/20,
                        backgroundColor: Colors.red.shade200,
                      )

                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}

