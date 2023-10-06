import 'package:flutter/material.dart';
import 'package:hakaton_map_test/pages/home_page/home_page_model.dart';
import 'package:hakaton_map_test/pages/profile_page/profile_page_model.dart';
import 'package:hakaton_map_test/pages/task_page/task_page_model.dart';
import 'package:provider/provider.dart';

import 'pages/topic_details_page/topic_details_page_model.dart';
import 'router/router.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => TaskPageViewModel()),
    ChangeNotifierProvider(create: (_) => ProfilePageViewModel()),
    ChangeNotifierProvider(create: (_) => HomePageViewModel()),
    ChangeNotifierProvider(create: (_) => TopicDetailsPageModel()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig: router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

// class MapWidget extends StatelessWidget {
//   const MapWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 500,
//       width: 500,
//       color: Colors.red[100],
//       child: ListView(
//         children: [
//           Container(
//             color: Colors.blue,
//             child: SimpleMap(
//               // String of instructions to draw the map.
//               // instructions: SMapWorld.instructions,
//               instructions: SMapTaiwan(),
          
//               // Default color for all countries.
//               defaultColor: Colors.grey,
          
//               // Matching class to specify custom colors for each area.
//               colors: SMapWorldColors(
//                 uS: Colors.green, // This makes USA green
//                 cN: Colors.green, // This makes China green
//                 rU: Colors.red,
//               ).toMap(),
          
//               // Details of what area is being touched, giving you the ID, name and tapdetails
//               callback: (id, name, tapdetails) {
//                 print(id);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
