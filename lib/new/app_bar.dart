import 'package:flutter/material.dart';

class App_Bar extends StatelessWidget {
  const App_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      height: height / 10,
      width: width,
      decoration: const BoxDecoration(color: Colors.white),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            child: const Icon(
              Icons.facebook,
              size: 35,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            width: 20,
          ),

          Text("Height:${height}\n Width:${width}"),
          Container(
            margin: const EdgeInsets.only(top: 15),
            width: 250,
            height: 30,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  hintText: 'Search Facebook',
                  contentPadding: const EdgeInsets.only(bottom: 20),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          const Spacer(),
          SizedBox(
            height: height,
            width: width / 2.7,
            child:  DefaultTabController(
              length: 7,
              child: TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  labelColor: Colors.blue,
                  indicatorSize: TabBarIndicatorSize.label,
                  padding: const EdgeInsets.only(top: 20),
                  tabs: [
                    const Tab(
                      icon: Icon(
                        Icons.home,
                      ),
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.tv,
                      ),
                    ),
                    Tab(
                      child: CircleAvatar(
                        radius:width/20,
                        backgroundImage: const AssetImage("lib/images/profile/image1.jpg"),
                      )
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.whatshot_outlined,
                      ),
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.people,
                      ),
                    ),
                    const Tab(
                      icon: Icon(
                        Icons.messenger_outline_rounded,
                      ),
                    ),
                  ]),
            ),
          ),
          const Spacer(
            flex: 5,
          ),
          Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.only(top: 15),
            decoration:
                const BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            child: const Icon(Icons.settings),
          )
        ],
      ),
    );
  }
}
