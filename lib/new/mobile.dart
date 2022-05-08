import 'package:flutter/material.dart';
import 'package:responsive/new/web.dart';

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
                        padding: const EdgeInsets.only(top: 0.0, left: 5),
                        child: GestureDetector(
                          onTap: () {
                            print(height / 27.6);
                            print(height / 29);
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
                        radius: width / 34,
                        backgroundColor: Colors.green.shade200,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 5),
                        child: GestureDetector(
                          onTap: () {
                            print(height / 27.6);
                            print(height / 29);
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
                        radius: width / 34,
                        backgroundColor: Colors.blue.shade200,
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 5),
                        child: GestureDetector(
                          onTap: () {
                            print(height / 27.6);
                            print(height / 29);
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
                        radius: width / 34,
                        backgroundColor: Colors.red.shade200,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              Container(
                height: height / 2.5,
                width: width,
                padding: const EdgeInsets.only(left: 9),
                decoration: BoxDecoration(color: Colors.amber.shade200),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: height / 3,
                            width: width / 3,
                            padding: const EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                            ),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50)
                              ),
                              color: Colors.white,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "lib/images/profile/image2.jpg")),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 190.0, left: 50),
                            child: Container(
                              height: height / 10,
                              width: width / 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.white, width: 3)),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("lib/images/profile/image8.jpg"),
                                backgroundColor: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
