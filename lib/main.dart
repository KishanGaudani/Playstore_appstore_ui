import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    ),
  );
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  TabController? tabController;
  PageController pageController = PageController();
  DateTime date = DateTime.now();
  bool isIos = false;
  bool lock = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return (isIos)
        ? CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                backgroundColor: Colors.white,
                leading: CupertinoSwitch(
                  thumbColor: Colors.blue,
                  activeColor: Colors.grey.shade100,
                  value: isIos,
                  onChanged: (val) {
                    setState(() {
                      isIos = val;
                    });
                  },
                ),
              ),
              backgroundColor: Colors.white,
              child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  backgroundColor: Colors.white,
                  inactiveColor: Colors.grey,
                  activeColor: Colors.blue,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      label: "Today",
                      icon: Icon(
                        CupertinoIcons.today,
                        size: 25,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "Games",
                      icon: Icon(
                        CupertinoIcons.rocket_fill,
                        size: 25,
                      ),
                    ),
                    BottomNavigationBarItem(
                      label: "Apps",
                      icon: Icon(
                        CupertinoIcons.cube_box,
                        size: 25,
                      ),
                    ),
                  ],
                ),
                tabBuilder: (context, i) {
                  return IndexedStack(
                    index: i,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: const [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30),
                                    ),
                                    Spacer(),
                                    // SizedBox(width: 10,),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar.png"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Container(
                                          height: 400,
                                          width: double.infinity,
                                          child: Image.asset(
                                            "assets/images/6.png",
                                            fit: BoxFit.fill,
                                          )),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                          height: 400,
                                          width: double.infinity,
                                          child: Image.asset(
                                            "assets/images/7.png",
                                            fit: BoxFit.fill,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "Games",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30),
                                    ),
                                    Spacer(),
                                    // SizedBox(width: 10,),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar.png"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "NOW AVAILABLE",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                const Text(
                                  "Genshin Impact",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                const Text(
                                  "All-new five-star character",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                    height: 400,
                                    width: double.infinity,
                                    child: Image.asset(
                                      "assets/images/9.png",
                                      fit: BoxFit.fill,
                                    )),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 10,
                                ),
                                free(
                                  "1",
                                  "assets/images/6.png",
                                  "PUBG - Player Unknown's \n               Battleground",
                                  "Action Games of world top 1",
                                  "Free app",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                free(
                                  "2",
                                  "assets/images/16.png",
                                  "LUDO - KING",
                                  "Built in Fast Home !!",
                                  "Free app",
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: const [
                                    Text(
                                      "App",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 30),
                                    ),
                                    Spacer(),
                                    // SizedBox(width: 10,),
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/avatar.png"),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "FEATURED",
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 12),
                                ),
                                const Text(
                                  "1Password 8 - Password Manager",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                const Text(
                                  "Store Your Passwords Safely",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 17),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 400,
                                    width: double.infinity,
                                    child: Image.asset(
                                      "assets/images/11.png",
                                      fit: BoxFit.fill,
                                    )),
                                const Divider(),
                                const SizedBox(
                                  height: 10,
                                ),
                                free(
                                  "1",
                                  "assets/images/4.png",
                                  "Facebook ",
                                  "Change Your Day",
                                  "Open",
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                free(
                                  "2",
                                  "assets/images/3.png",
                                  "WhatsApp",
                                  "Make a Special",
                                  "Get",
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
                backgroundColor: Colors.white,
              ),
            ),
          )
        : MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: const Color(0xff1f1f1f),
                toolbarHeight: 75,
                leading: Switch(
                    inactiveTrackColor: const Color(0xff8596a0),
                    inactiveThumbImage: const AssetImage(
                        "assets/images/download-removebg-preview (1).png"),
                    value: isIos,
                    onChanged: (val) {
                      setState(() {
                        isIos = val;
                      });
                    }),
                actions: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      height: 70,
                      width: 335,
                      decoration: BoxDecoration(
                        color: const Color(0xff253036),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: const [
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.search,
                            color: Color(0xffc2c7cd),
                            size: 27,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Search for apps & games",
                            style: TextStyle(
                              color: Color(0xffc2c7cd),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.keyboard_voice_outlined,
                            color: Color(0xffc2c7cd),
                            size: 27,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage("assets/images/avatar.png"),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                bottom: TabBar(
                  controller: tabController!,
                  indicatorColor: const Color(0xff8ccefe),
                  labelColor: const Color(0xff8ccefe),
                  unselectedLabelColor: Colors.white,
                  tabs: const [
                    Tab(
                      child: Text(
                        "For you",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Top charts",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Other devices",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              body: TabBarView(
                controller: tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          photos("Recommended for you"),
                          const SizedBox(
                            height: 25,
                          ),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                app(
                                  "Battle - King",
                                  "4.3",
                                  "assets/images/2.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "King's Pro",
                                  "4.6",
                                  "assets/images/9.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "SKrill",
                                  "4.7",
                                  "assets/images/13.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Yandex",
                                  "4.0",
                                  "assets/images/14.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Flagger",
                                  "5.0",
                                  "assets/images/15.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Dancing",
                                  "4.3 ",
                                  "assets/images/17.png",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          photos("New & updated apps"),
                          const SizedBox(
                            height: 25,
                          ),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                app(
                                  "Netflix",
                                  "4.6",
                                  "assets/images/21.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Sheemaro me",
                                  "4.5",
                                  "assets/images/22.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Snapchat",
                                  "4.3",
                                  "assets/images/23.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Homes",
                                  "4.1",
                                  "assets/images/25.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "W&U",
                                  "4.7",
                                  "assets/images/26.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "ULLU",
                                  "4.3",
                                  "assets/images/24.jpg",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Ads",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const Text(
                                "Suggested for you",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.east_rounded,
                                size: 20,
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                app(
                                  "Jiocinema",
                                  "4.6",
                                  "assets/images/28.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Shemaroome",
                                  "4.5",
                                  "assets/images/22.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Netflix",
                                  "4.3",
                                  "assets/images/21.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "Google pay",
                                  "4.1",
                                  "assets/images/11.png",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                app(
                                  "NTC+",
                                  "4.7",
                                  "assets/images/29.png",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Show installed apps",
                              style: TextStyle(
                                  fontSize: 18, color: Colors.grey.shade400),
                            ),
                            const Spacer(),
                            Switch(
                                value: lock,
                                inactiveTrackColor: Colors.grey.shade800,
                                inactiveThumbColor: Colors.grey,
                                onChanged: (val) {
                                  setState(() {
                                    lock = val;
                                  });
                                }),
                            const SizedBox(
                              width: 15,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.green.shade900,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Top free",
                                style: TextStyle(
                                    color: Colors.green.shade600,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Categories",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Column(
                          children: [
                            free(
                              "1",
                              "assets/images/1.png",
                              "Like",
                              "Communication  Social NetWorking",
                              "Installed",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "2",
                              "assets/images/3.png",
                              "WhatsApp",
                              "Social NetWorking Media",
                              "Installed",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "3",
                              "assets/images/4.png",
                              "Facebook",
                              "Social NetWorking communication",
                              "18 MB",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "4",
                              "assets/images/11.png",
                              "GPay",
                              "Social MoneyTransfer",
                              "Installed",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "5",
                              "assets/images/5.png",
                              "UC browser",
                              "Social NetWorking",
                              "13 MB",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "6",
                              "assets/images/12.png",
                              "Phone Pay",
                              "Social MoneyTransfer",
                              "18 MB",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "7",
                              "assets/images/16.png",
                              "Ludo king",
                              "Gaming app",
                              "Installed",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            free(
                              "8",
                              "assets/images/18.png",
                              "Gaming app",
                              "Social NetWorking",
                              " 19 MB",
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 35,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.tv,
                                  color: Colors.green.shade600,
                                  size: 16,
                                ),
                                Text(
                                  "TV",
                                  style: TextStyle(
                                      color: Colors.green.shade600,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          photos("Mind Games"),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                game(
                                    "assets/images/16.png",
                                    "Ludo King : Mind of Games",
                                    "4.4",
                                    "Editers' Choice"),
                                const SizedBox(
                                  width: 25,
                                ),
                                game(
                                  "assets/images/19.png",
                                  "Angry Bird 2",
                                  "4.6",
                                  "casual Offline",
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                game(
                                  "assets/images/18.png",
                                  "Candy Crush",
                                  "4.6",
                                  "casual Online",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          photos("Must-have Favourite games"),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                game(
                                  "assets/images/6.png",
                                  "PUBG",
                                  "4.5",
                                  "Action Games",
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                game(
                                  "assets/images/7.png",
                                  "Garena - free-fire",
                                  "4.4",
                                  "Action Games",
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                game(
                                  "assets/images/10.png",
                                  "Teen - patti",
                                  "4.4",
                                  "PLaying Cards",
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          photos("Role-Playing Games"),
                          SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                game(
                                  "assets/images/8.png",
                                  "PIG - coin",
                                  "4.3",
                                  "Fun Games - Offline",
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                game(
                                  "assets/images/20.png",
                                  "Pokemon - Go",
                                  "4.6",
                                  "Casual Single player",
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                game(
                                  "assets/images/17.png",
                                  "The Bard's Tale",
                                  "4.6",
                                  "Casual Single player",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              backgroundColor: const Color(0xff1f1f1f),
            ),
          );
  }

  Widget photos(String val) {
    return Row(
      children: [
        Text(
          "$val",
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const Spacer(),
        const Icon(
          Icons.east_rounded,
          size: 20,
          color: Colors.white,
        ),
      ],
    );
  }

  Widget app(
    String val,
    String val1,
    String image,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "$image",
          height: 130,
          width: 130,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "$val",
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "$val1 ",
              style: const TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const Icon(
              Icons.star_rate_rounded,
              color: Colors.white,
              size: 17,
            ),
          ],
        ),
      ],
    );
  }

  Widget game(String image, String name, String rate, String name2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fill,
          height: 250,
          width: 250,
        ),
        Text(
          "${name}",
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              "${rate}",
              style: const TextStyle(color: Colors.grey, fontSize: 17),
            ),
            const Icon(
              Icons.star_rate_rounded,
              color: Colors.white,
              size: 17,
            ),
            const SizedBox(width: 10),
            Text(
              "${name2}",
              style: const TextStyle(color: Colors.grey, fontSize: 17),
            ),
          ],
        ),
      ],
    );
  }

  Widget free(
      String count, String image, String name, String name2, String name3) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: Row(
        children: [
          const SizedBox(
            width: 15,
          ),
          Text(
            "${count}",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const SizedBox(
            width: 15,
          ),
          Image.asset(
            "${image}",
            height: 80,
            width: 80,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "${name}",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 17,
                    fontWeight: FontWeight.w700),
              ),
              //SizedBox(height: 10,),
              Text(
                "${name2}",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
              //
              Text(
                "${name3}",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
