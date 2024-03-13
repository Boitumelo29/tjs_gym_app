import 'package:flutter/material.dart';
import 'package:tjs_gym_app/custom_widget/rows/custom_settings_row.dart';
import 'package:tjs_gym_app/screens/home_screen/home_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List accountDet = [
    {
      "icon": const Icon(Icons.person),
      "name": "About Account",
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage5())
    },
    {
      "icon": const Icon(Icons.history),
      "name": "History",
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage4())
    },
    {
      "icon": const Icon(Icons.settings),
      "name": "Settings",
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage3())
    },
    {
      "icon": const Icon(Icons.email),
      "name": "Contact Us",
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage2())
    },
    {
      "icon": const Icon(Icons.input),
      "name": "LogOut",
      "navigation":
          MaterialPageRoute(builder: (BuildContext context) => EGPage2())
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(children: [
              Icon(Icons.person),
              SizedBox(
                height: 20,
              ),
              Text("Name"),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 480,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                  gradient:
                      LinearGradient(
                        begin: Alignment.topLeft,
                          end:const  Alignment(0, 0/8),
                          colors:<Color> [ Colors.yellow[100]!, Colors.yellow[200]!, Colors.yellow[300]!]),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Account Details",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: accountDet.length,
                      itemBuilder: (context, index) {
                        var itm = accountDet[index] as Map;
                        return CustomSettingsRow(
                          icon: itm["icon"].icon,
                          title: itm["name"].toString(),
                          onTapped: () {
                            if (itm["navigation"] != null) {
                              Navigator.push(context, itm["navigation"]);
                            }
                          },
                        );
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
