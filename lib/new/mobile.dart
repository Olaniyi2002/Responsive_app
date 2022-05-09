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
                      GestureDetector(
                        onTap: () {
                          print(height / 27.6);
                          print(height / 29);
                        },
                        child: Container(
                            height: height / 20.6,
                            width: width / 3.5,
                            decoration: BoxDecoration(
                                color: Colors.green.shade100,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(20)),
                            child:  Padding(
                              padding: EdgeInsets.only(left: width==500?0:20.0),
                              child: const Center(
                                child: Text(
                                  "Gallery",
                                  style: TextStyle(
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            )),
                      ),
                      CircleAvatar(
                        radius:  height /43 ,
                        backgroundColor: Colors.green.shade200,
                        child: const Icon(
                          Icons.image,
                          color: Colors.white,
                          size: 20,
                        ),
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
                              width: width / 3.0,
                              decoration: BoxDecoration(
                                  color: Colors.blue.shade100,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(left: width==500?0:20.0),
                                  child: const Text(
                                    "Tag People",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                ),
                              )),
                        ),
                      ),
                      CircleAvatar(
                        radius: width == 500 ? width / 34 : width / 20,
                        backgroundColor: Colors.blue.shade200,
                        child: Icon(
                          Icons.group,
                          color: Colors.white,
                          size: 20,
                        ),
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
                              width: width / 3.8,
                              decoration: BoxDecoration(
                                  color: Colors.red.shade100,
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(
                                child: Text(
                                  "Live",
                                  style: TextStyle(color: Colors.red),
                                ),
                              )),
                        ),
                      ),
                      CircleAvatar(
                        radius: width == 500 ? width / 34 : width / 19.7,
                        backgroundColor: Colors.red.shade200,
                        child: const Icon(
                          Icons.videocam,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: height / 20,
              ),
              SizedBox(
                height: height / 3.5,
                width: width,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      PostMobile(
                        image_post: "lib/images/profile/post1.jpg",
                        image_profile: "lib/images/profile/image2.jpg",
                      ),
                      PostMobile(
                        image_post: "lib/images/profile/post2.jpg",
                        image_profile: "lib/images/profile/image3.png",
                      ),
                      PostMobile(
                        image_post: "lib/images/profile/post3.jpg",
                        image_profile: "lib/images/profile/image4.jpeg",
                      ),
                      PostMobile(
                        image_post: "lib/images/profile/post4.jpg",
                        image_profile: "lib/images/profile/image6.jpg",
                      ),
                      PostMobile(
                        image_post: "lib/images/profile/post5.jpg",
                        image_profile: "lib/images/profile/image2.jpg",
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 2,
              ),
              Column(
                children: const [
                  Post3(
                    image: "lib/images/profile/image2.jpg",
                    name: "Ella Olusegun",
                    post: "lib/images/icons/icon1.jpg",
                  ),
                  Post3(
                    image: "lib/images/profile/image9.jpg",
                    name: "Adetimehin Fiyin",
                    post: "lib/images/icons/icon1.jpg",
                  ),
                  Post3(
                    image: "lib/images/profile/image2.jpg",
                    name: "Ella Olusegun",
                    post: "lib/images/icons/icon1.jpg",
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

class PostMobile extends StatelessWidget {
  final image_post, image_profile;

  const PostMobile({Key? key, this.image_post, this.image_profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: height / 4,
          width: width / 2.5,
          margin: const EdgeInsets.only(left: 20, right: 8),
          padding: const EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            color: Colors.green,
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(image_post)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: height / 4.7, left: width / 6.0),
          child: Center(
            child: Container(
              height: height / 5,
              width: width / 5,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 3)),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(image_profile),
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Post3 extends StatelessWidget {
  final image, name, post;

  const Post3({Key? key, this.image, this.name, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              height: height / 6,
              width: width / 6,
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blue, width: 2),
                color: Colors.white,
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image)),
              ),
            ),
            title: Text(name),
            subtitle: Row(
              children: const [
                Text(
                  "5 min.",
                  style: TextStyle(fontSize: 10),
                ),
                Icon(
                  Icons.people,
                  size: 10,
                )
              ],
            ),
            trailing: const Icon(Icons.more_horiz),
          ),
          Image.asset(post)
        ],
      ),
    );
  }
}
