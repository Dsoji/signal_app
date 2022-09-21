import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 2,
        centerTitle: true,
        title: const Text(
          'Signal App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        //   onPressed: () {
        //     // Navigator.push(
        //     //     context,
        //     //     MaterialPageRoute(
        //     //         builder: (context) => const PatientWelcomePage()));
        //   },
        // ),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.settings,
        //     color: Colors.white,
        //   ),
        //   onPressed: () {
        //     // Navigator.push(
        //     //   // context, 
        //     //   // MaterialPageRoute(
        //     //   //   builder: (context) => co
        //     //   // )
        //     // );
        //   },
          
        //           ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
              Color.fromARGB(255, 4, 29, 68),
              Color(0xFF1A237E),
              Color.fromARGB(255, 40, 15, 83),
              Colors.black,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            border: Border.all(width: 2, color: Colors.white30),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              Expanded(
                child: buildListView(),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  // ignore: prefer_const_literals_to_create_immutables
  Widget buildListView() => ListView(children: [
        const ListTile(
          leading: Text('Hello world'),
        ),
        const Divider(),
        const ListTile(
          leading: Text('Hello world'),
        ),
        const Divider(),
        const ListTile(
          leading: Text('Hello world'),
        ),
        const Divider(),
        const ListTile(
          leading: Text('Hello world'),
        ),
        const Divider(),
        const ListTile(
          leading: Text('Hello world'),
        ),
        const Divider(),
        const ListTile(
          leading: Text('Hello world'),
        ),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
        const ListTile(),
      ]);
}
