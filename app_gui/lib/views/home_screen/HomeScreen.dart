import 'package:app_gui/models/Categories.dart';
import 'package:app_gui/models/Plan.dart';
import 'package:app_gui/views/details_screen/details_screen.dart';
import 'package:app_gui/views/home_screen/widgets/plan_card.dart';
import 'package:app_gui/views/home_screen/widgets/search_widget.dart';
import 'package:app_gui/views/home_screen/widgets/title_section.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final currentUser = 'Misha';
  bool searchBarStatus = false;

  late AnimationController _animationController;
  bool playerState = false;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
  }

  void iconTapped() {
    if (playerState) {
      _animationController.forward();
      playerState = false;
    } else {
      _animationController.reverse();
      playerState = true;
    }
  }

  void changeStatus() {
    setState(() {
      searchBarStatus = !searchBarStatus;
    });
  }

  final searchController = TextEditingController();

  final listOfCategories = [
    Categories(id: "c0", name: "Any"),
    Categories(id: "c1", name: "Sweet sleep"),
    Categories(id: "c2", name: "Imsonia"),
    Categories(id: "c3", name: "Depresion"),
    Categories(id: "c4", name: "Tips"),
    Categories(id: "c5", name: "Education"),
  ];

  String currentCategory = "Any";

  void changeCategory(Categories category) {
    setState(() {
      currentCategory = category.name;
    });
  }

  var currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height / 9,
          title: searchBarStatus == false
              ? titleSection(currentUser)
              : Container(
                  color: Colors.black12,
                  child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Filter...",
                        hintStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      controller: searchController,
                      style:
                          const TextStyle(color: Colors.white, fontSize: 20.0)),
                ),
          actions: [
            IconButton(
              onPressed: () => changeStatus(),
              icon: searchBarStatus
                  ? const Icon(Icons.close)
                  : const Icon(Icons.search),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Meditation"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Sleep"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Music"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Profile"),
          ],
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.grey[300],
          selectedItemColor: Colors.blue[300],
          onTap: _onItemTapped,
        ),
        body: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: listCategories(),
          ),
          const SizedBox(height: 20.0),
          playerWidget(),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Featured',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(height: 25),
                  Expanded(
                    child: GridView.builder(
                        itemCount: listOfPlans.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 15 / 15,
                                crossAxisSpacing: 15,
                                mainAxisSpacing: 30,
                                crossAxisCount: 2),
                        itemBuilder: (context, index) =>
                            planCard(listOfPlans[index], context)),
                  )
                ],
              ),
            ),
          )
        ]),
      );

  Widget listCategories() => ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: listOfCategories.length,
      itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: InkWell(
                  onTap: () => changeCategory(listOfCategories[index]),
                  child: Container(
                      alignment: Alignment.center,
                      width: 100.0,
                      color: currentCategory == listOfCategories[index].name
                          ? const Color(0xff5261ed)
                          : const Color(0xff586890),
                      child: Text(
                        listOfCategories[index].name,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                )),
          ));

  Widget playerWidget() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(20.0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.jpg"),
                  fit: BoxFit.cover,
                  opacity: 0.25,
                ),
                color: Color(0xfffb6e91)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Daily Thought',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 7.5),
                        Text('Meditation: 3-10 min ',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                letterSpacing: 1.0))
                      ],
                    ),
                    GestureDetector(
                      onTap: () => iconTapped(),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Container(
                          color: Color(0xff4f5df4),
                          padding: const EdgeInsets.all(10.0),
                          child: AnimatedIcon(
                            icon: AnimatedIcons.play_pause,
                            progress: _animationController,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
}
