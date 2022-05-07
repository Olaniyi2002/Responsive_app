import 'package:flutter/material.dart';
import 'package:responsive/new/app_bar.dart';

class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: Column(
        children: [
          const App_Bar(),
          SizedBox(
            height: height / 183,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height * 0.89,
                width: width / 5,
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 19),
                          ),
                          Text(
                            "create",
                            style: TextStyle(color: Colors.blue),
                          )
                        ],
                      ),

                      const ListTile(
                          title: Text(
                            "Not-So-Secret Family Recipices",
                            style: TextStyle(fontSize: 12),
                          ),
                          leading: Image(
                              height: 30,
                              width: 30,
                              image: AssetImage("lib/images/icons/icon1.jpg"))),
                      const ListTile(
                          title: Text(
                            "Red Table Talk",
                            style: TextStyle(fontSize: 12),
                          ),
                          leading: Image(
                              height: 30,
                              width: 30,
                              image: AssetImage("lib/images/icons/icon2.jpg"))),
                      ListTile(
                        title: const Text(
                          "Events",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.event,
                          color: Colors.blue.shade300,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "Saved",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.save,
                          color: Colors.green.shade300,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "Gaming",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.more_time,
                          color: Colors.orange.shade200,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "Fund Raising",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.wallet_giftcard,
                          color: Colors.pink.shade300,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "Memories",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.history,
                          color: Colors.teal.shade300,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "Help & Support",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.help,
                          color: Colors.amber.shade300,
                        ),
                      ),
                      ListTile(
                        hoverColor: Colors.red,
                        title: const Text(
                          "Settings & Privacy",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.settings,
                          color: Colors.red.shade300,
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          "See More",
                          style: TextStyle(fontSize: 12),
                        ),
                        leading: Icon(
                          Icons.more,
                          color: Colors.indigo.shade300,
                        ),
                        trailing: const Icon(Icons.arrow_drop_down_sharp),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                  height: height * 0.89,
                  width: width / 1.8,
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 8),

                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Stories"),
                                TextButton(
                                    onPressed: () {}, child: const Text("see all"))
                              ],
                            ),
                            SizedBox(
                              height: height / 30,
                            ),
                            SizedBox(
                              height: height / 3.5,
                              width: width / 1.8,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Contain(
                                      name: "Add\n Stories",
                                      image: "lib/images/profile/image1.jpg"),
                                  Containpix(
                                      name: "Ella Olusegun",
                                      image: "lib/images/profile/image2.jpg",
                                      profile: "lib/images/profile/image3.png"),
                                  Containpix(
                                      name: "Solomon Abuh",
                                      image: "lib/images/profile/image3.png",
                                      profile: "lib/images/profile/image9.jpg"),
                                  Containpix(
                                      name: "Adeh Fiyin",
                                      image: "lib/images/profile/image4.jpeg",
                                      profile: "lib/images/profile/image7.jpg"),
                                  Containpix(
                                      name: "Babablola Tobi",
                                      image: "lib/images/profile/image6.jpg",
                                      profile: "lib/images/profile/image8.jpg"),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height / 30,
                            ),
                            Container(
                              padding: const EdgeInsets.only(left: 10),
                              height: height / 15,
                              width: width / 2.5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                        "lib/images/profile/image1.jpg"),
                                    backgroundColor: Colors.blueGrey,
                                  ),
                                  SizedBox(
                                    width: width / 4,
                                    height: height / 23,
                                    child: TextField(
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          hintStyle: const TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900),
                                          fillColor: Colors.grey.shade200,
                                          filled: true,
                                          hintText: 'Add a post',
                                          contentPadding:
                                              const EdgeInsets.only(bottom: 20),
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                    ),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.image))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: height / 30,
                            ),
                            Container(
                              height: height / 0.8,
                              width: width / 2.5,
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Container(
                                      height: height / 20,
                                      width: width / 20,
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.blue, width: 2),
                                        color: Colors.white,
                                        image: const DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                "lib/images/profile/image2.jpg")),
                                      ),
                                    ),
                                    title: const Text("Ella Olusegun"),
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
                                  Image.asset("lib/images/icons/icon1.jpg")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                height: height * 0.89,
                width: width / 4.5,
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.topLeft, child: Text("Suggested")),
                    SizedBox(
                      height: height / 50,
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 10,
                        left: 30,
                      ),
                      height: height / 3.6,
                      width: width / 2.9,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("lib/images/profile/card.jpg")),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)),
                          color: Colors.green),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Spacer(flex: 3),
                          Row(
                            children: const [
                              Icon(
                                Icons.people,
                                color: Colors.white,
                              ),
                              Spacer(),
                              Text("Groups",
                                  style: TextStyle(color: Colors.white)),
                              Spacer(flex: 50),
                            ],
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                          const Text(
                            "New ways to find and",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w100),
                          ),
                          SizedBox(
                            height: height / 150,
                          ),
                          const Text("join communities",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100)),
                          const Spacer(
                            flex: 3,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text("Find Your Groups"),
                            style: ElevatedButton.styleFrom(
                                elevation: 0, primary: Colors.white),
                          ),
                          const Spacer(
                            flex: 3,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: height / 20,
                      width: width / 2.9,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 4,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 1), // changes position of shadow
                            ),
                          ],
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 30.0),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                      "lib/images/profile/image2.jpg"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                      "lib/images/profile/image3.png"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundImage: AssetImage(
                                      "lib/images/profile/image8.jpg"),
                                ),
                              ),
                              CircleAvatar(
                                radius: 12,
                                backgroundImage:
                                    AssetImage("lib/images/profile/image9.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: width / 50,
                          ),
                          Flexible(
                            child: Text(width>=1080? "Henris and 9 other joined the group":"Henris and 9 other\n joined the group" ,
                              style: TextStyle(
                                  fontSize:
                                     width>=1080? MediaQuery.of(context).textScaleFactor * 9:MediaQuery.of(context).textScaleFactor * 9,
                                  color: Colors.grey.shade500),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Contacts"),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top: 8),
                        // color: Colors.green,
                        height: height/1.3,
                        width: width,
                        padding: const EdgeInsets.all(8),
                        child: SingleChildScrollView(
                          child: Column(
                            children: const [
                              Contact(
                                  image: "lib/images/profile/image3.png",
                                  name: "Solomon Abuh"),
                              Contact(
                                  image: "lib/images/profile/image2.jpg",
                                  name: "Tinu Oye"),
                              Contact(
                                  image: "lib/images/profile/image9.jpg",
                                  name: "Agboola Taye"),
                              Contact(
                                  image: "lib/images/profile/image8.jpg",
                                  name: "Akande Dipo"),
                              Contact(
                                  image: "lib/images/profile/image4.jpeg",
                                  name: "Sere Funmi"),
                              Contact(
                                  image: "lib/images/profile/image6.jpg",
                                  name: "Lanre Abiound"),
                              Contact(
                                  image: "lib/images/profile/image1.jpg",
                                  name: "Segun Derick"),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Contain extends StatelessWidget {
  final String image, name;

  const Contain({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
      height: height / 3.5,
      width: width / 10,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
          borderRadius: BorderRadius.circular(10),
          color: Colors.green),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height / 30,
            width: width / 30,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: Colors.white)),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 15,
            ),
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class Containpix extends StatelessWidget {
  final String name, image, profile;

  const Containpix(
      {Key? key,
      required this.name,
      required this.image,
      required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 3.5,
      width: width / 10,
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height / 20,
            width: width / 20,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(profile)),
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: Colors.white)),
          ),
          Text(
            name,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final String image, name;

  const Contact({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return ListTile(
      leading: Container(
        height: height / 14,
        width: width / 14,
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 2),
          color: Colors.white,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ),
      title: Text(name,style: TextStyle(fontSize:width>=957? 16:12),),
    );
  }
}
