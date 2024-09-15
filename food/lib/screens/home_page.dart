import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food/data_base.dart';
import 'package:food/tools/logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtentl = _scrollController.position.minScrollExtent;
      double maxScrollExtentl = _scrollController.position.minScrollExtent;

      animateToMaxMin(maxScrollExtentl, minScrollExtentl, maxScrollExtentl, 20,
          _scrollController);
    });
  }

  animateToMaxMin(double max, double min, double direction, int second,
      ScrollController scrollController) {
    scrollController.animateTo(direction,
        duration: Duration(seconds: second), curve: Curves.linear);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(context),
      backgroundColor: appBackgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 1,
                  childAspectRatio: 6 / 10),
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(87, 0, 0, 0),
                            offset: Offset(3, 3),
                            blurRadius: 5,
                          ),
                        ],
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  color: const Color.fromARGB(92, 0, 0, 0),
                                  offset: Offset(4, 4)),
                              BoxShadow(
                                  blurRadius: 10,
                                  color: const Color.fromARGB(92, 0, 0, 0),
                                  offset: Offset(-4, -4)),
                            ]),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  prouductInfo[i]["image"],
                                  fit: BoxFit.cover,
                                ))),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            prouductInfo[i]['name'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Text(
                            infor[i],
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color:
                                    const Color.fromARGB(255, 125, 124, 124)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: prouductInfo.length,
            ),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBackgroundColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconLogo(),
          Text(
            " cheese",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Note"),
                    content: Text("Are you sure that you want log out"),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed("login");
                            },
                            child: Text(
                              'Ok',
                              style: TextStyle(color: buttonColor),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'cancel',
                              style: TextStyle(color: buttonColor),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                });
          },
          icon: Icon(Icons.logout_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.cartPlus,
            size: 20,
          ),
        ),
      ],
    );
  }
}
