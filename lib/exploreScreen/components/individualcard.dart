import 'package:flutter/material.dart';
import 'package:netclan_explorer/constants.dart';
import 'package:netclan_explorer/exploreScreen/models/models.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class userCard extends StatelessWidget {
  const userCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount:userList.length,
          itemBuilder: (BuildContext context, int index) { return
            Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 8),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.passthrough,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                            visualDensity: VisualDensity.compact,
                            surfaceTintColor:
                                MaterialStateProperty.all(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            elevation: MaterialStateProperty.all(3),
                            shape: MaterialStateProperty.all(
                                const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                        left: Radius.circular(20),
                                        right: Radius.circular(20))))),
                        onPressed: () {},
                        child: const SizedBox(
                          height: 190,
                          width: 295,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 180,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 20,
                          right: 265,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: SizedBox.fromSize(
                                  size: const Size.fromRadius(48),
                                  child: Image.asset(userList[index].imagePath,
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ],
                          )),
                      Positioned(
                          left: 85,
                          top: 44,
                          bottom: 100,
                          child: Text(
                            userList[index].name,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: primaryColor),
                          )),
                      Positioned(
                          left: 85,
                          top: 65,
                          bottom: 0,
                          child: Text(userList[index].city)),
                      Positioned(
                        left: 75,
                        top: 0,
                        bottom: 0,
                        child: SizedBox(
                            child: LinearPercentIndicator(
                          backgroundColor:
                              const Color.fromARGB(255, 224, 229, 232),
                          progressColor: primaryColor,
                          barRadius: const Radius.circular(20),
                          width: 150.0,
                          lineHeight: 11.0,
                          percent: 0.5,
                        )),
                      ),
                      Positioned(
                        left: 18,
                        top: 130,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              userList[index].interests,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: primaryColor),
                            ),
                            Text(
                              userList[index].description,
                              style: TextStyle(
                                  fontSize: 15, color: secondaryColor),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 250,
                        top: 0,
                        bottom: 150,
                        child: Row(
                          children: [
                            //Icon(Icons.add, size: 17,),
                            Text(
                              "+ INVITE",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: primaryColor),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

