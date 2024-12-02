import 'package:app_gui/models/Plan.dart';
import 'package:app_gui/views/details_screen/widgets/card_widget.dart';
import 'package:app_gui/views/details_screen/widgets/title_details.dart';
import 'package:app_gui/views/home_screen/widgets/plan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = "/details_screen";
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late Plan plan;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    plan = listOfPlans.firstWhere((element) =>
        element.id == ModalRoute.of(context)?.settings.arguments as String);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.star))],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleDetails(plan),
            const SizedBox(height: 20),
            cardWidget(context, plan),
            const SizedBox(height: 20),
            cardContent(plan)
          ],
        ),
      )));

  Widget cardContent(Plan plan) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${plan.subtitle}",
                    style: TextStyle(color: Colors.grey[300])),
                Text("-", style: TextStyle(color: Colors.grey[300])),
                Text('${plan.time} min',
                    style: TextStyle(color: Colors.grey[300]))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            plan.description,
            style: TextStyle(
                color: Colors.grey[300], letterSpacing: .2, fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              itemInfo(Icons.star, "${plan.saved.toInt()} saved"),
              itemInfo(Icons.headphones, "${plan.repros.toInt()} Listening")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey[300],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            padding: const EdgeInsets.only(bottom: 20),
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
                  ),
                ]),
          ),
        ],
      );

  Widget itemInfo(IconData icon, String text) => Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      );
}
