import 'package:flutter/material.dart';
import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
import 'package:geolocator/geolocator.dart';
import 'package:netclan_explorer/constants.dart';
import 'package:netclan_explorer/exploreScreen/components/locationWidget.dart';
import 'package:netclan_explorer/exploreScreen/components/topNavBar.dart';
import 'package:netclan_explorer/refineScreen/view/view.dart';

class exploreScreen extends StatefulWidget {
  const exploreScreen({
    super.key,
  });

  @override
  State<exploreScreen> createState() => _exploreScreenState();
}

class _exploreScreenState extends State<exploreScreen> {
  // ignore: unused_field
  late Future<Position> _position;
  late Future<List<Placemark>> _cityAndCountry;

  @override
  void initState() {
    super.initState();
    _position = getCurrentLocation();
    _cityAndCountry = getCityAndCountry();
  }

  TabBar get _tabBar => const TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          labelColor: Colors.white,
          tabs: [
            Tab(
              text: "Individual",
            ),
            Tab(text: "Prefessional"),
            Tab(text: "Merchants")
          ]);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
resizeToAvoidBottomInset: false,
        backgroundColor: const Color.fromARGB(253, 253, 253, 253),
        appBar: AppBar(
          elevation: 10,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: Material(
              color: tabColor,
              child: _tabBar,
            ),
          ),
          toolbarHeight: 70,
          leading: const Icon(
            Icons.sort_sharp,
            size: 35,
            color: Colors.white,
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const refineScreen()));
              },
              child: const Column(
                children: [
                  Icon(
                    Icons.checklist,
                    size: 30,
                    color: Colors.white,
                  ),
                  Text(
                    "Refine",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 11, 46, 66),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Explore",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  locationWidget(cityAndCountry: _cityAndCountry),
                ],
              )
            ],
          ),
        ),
        body: const topNavBar(),
      ),
    );
  }
}
