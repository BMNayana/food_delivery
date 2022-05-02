// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:myfirstapp/idli_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'Normal';
  String qtyValue = 'One';

  @override
  Widget build(BuildContext context) {
    //TODO: Waiting for JSON to be added to show cards
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Niyathi kitchen'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  // print("PRESSED");
                },
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        drawer: Drawer(
            child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("Harshavardhan"),
                accountEmail: Text("harshavardhan@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "H",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text("Contact Us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ])),
        body: ListView(padding: const EdgeInsets.all(8), children: [
          Container(
              width: 500,
              height: 300,
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  print("Tapped on Card");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Idliscreen()),
                  );
                },
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white,
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Image.network(
                            "https://images1.livehindustan.com/uploadimage/library/2021/11/30/16_9/16_9_1/idli_vs_vada_1638261256.jpeg",
                            width: 900,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Idli,vada,sambar ",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Idli sambar is a South Indian breakfast where fluffy soft idli is served with hot sambar",
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("Type"),
                                    DropdownButton<String>(
                                      value: dropdownValue,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      elevation: 1,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      // underline: Container(
                                      //   height: 1,
                                      //   color: Colors.deepPurpleAccent,
                                      // ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownValue = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'Normal',
                                        'Special',
                                        'Butter'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ]),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text("quant"),
                                    DropdownButton<String>(
                                      value: qtyValue,
                                      icon: const Icon(Icons.arrow_drop_down),
                                      elevation: 1,
                                      style:
                                          const TextStyle(color: Colors.black),
                                      // underline: Container(
                                      //   height: 1,
                                      //   color: Colors.deepPurpleAccent,
                                      // ),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          qtyValue = newValue!;
                                        });
                                      },
                                      items: <String>[
                                        'One',
                                        'Two',
                                        'three',
                                        'Four'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                    ),
                                  ]),
                              const SizedBox(height: 30),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Container(
                                        decoration: const BoxDecoration(
                                            color: Colors.green),
                                      ),
                                    ),
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        padding: const EdgeInsets.all(16.0),
                                        primary: Colors.white,
                                        textStyle:
                                            const TextStyle(fontSize: 12),
                                      ),
                                      onPressed: () {},
                                      child: const Text('ADD TO CART'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              )),
          Container(
              width: 500,
              height: 300,
              padding: const EdgeInsets.all(10.0),
              child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Image.network(
                          "https://www.cookwithmanali.com/wp-content/uploads/2020/05/Masala-Dosa-500x500.jpg",
                          width: 900,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Masal Dosa",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "A dosa is a thin flat bread originating from South India, made from a fermented batter predominantly consisting of lentils and rice.",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Type"),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 1,
                                    style: const TextStyle(color: Colors.black),
                                    // underline: Container(
                                    //   height: 1,
                                    //   color: Colors.deepPurpleAccent,
                                    // ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        dropdownValue = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Normal',
                                      'special',
                                      'Butter'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ]),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("quant"),
                                  DropdownButton<String>(
                                    value: qtyValue,
                                    icon: const Icon(Icons.arrow_drop_down),
                                    elevation: 1,
                                    style: const TextStyle(color: Colors.black),
                                    // underline: Container(
                                    //   height: 1,
                                    //   color: Colors.deepPurpleAccent,
                                    // ),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        qtyValue = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'One',
                                      'Two',
                                      'three',
                                      'Four'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ]),
                            const SizedBox(height: 30),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Stack(
                                children: <Widget>[
                                  Positioned.fill(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                          color: Colors.green),
                                    ),
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(16.0),
                                      primary: Colors.white,
                                      textStyle: const TextStyle(fontSize: 12),
                                    ),
                                    onPressed: () {},
                                    child: const Text('ADD TO CART'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )))
        ]));
  }
}
