import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hakaton_map_test/pages/profile_page/profile_page_model.dart';
import 'package:hakaton_map_test/pages/tabs_page/tabs_page.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../task_page/components/next_button.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final _mapController = MapController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final model = context.read<ProfilePageViewModel>();

    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const PageAppBar(),
          const SizedBox(height: 32),
          Center(
            child: Text(
              '5/10',
              style: const TextStyle(
                fontFamily: 'gothampro',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(61, 29, 64, 1),
              ),
            ),
          ),
          const SizedBox(height: 12),
          LinearPercentIndicator(
            padding: const EdgeInsets.all(0),
            animation: true,
            lineHeight: 12.0,
            animationDuration: 2000,
            percent: 0.5,
            backgroundColor: const Color.fromRGBO(243, 245, 255, 1),
            linearGradient: const LinearGradient(colors: [
              Color.fromRGBO(111, 244, 255, 1),
              Color.fromRGBO(247, 174, 255, 1),
              Color.fromRGBO(254, 211, 81, 1)
            ]),
            barRadius: const Radius.circular(46),
          ),
          const SizedBox(height: 12),
          Center(
            child: Text(
              'Выберите страну',
              style: const TextStyle(
                fontFamily: 'gothampro',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(61, 29, 64, 1),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 448,
            child: FlutterMap(
              mapController: _mapController,
              options: MapOptions(
                maxZoom: 15,
                minZoom: 5,
                
              ),              
              children: [
                Tile(),
              ],
            ),
          ),
          SizedBox(height: 20),
          NextButton(),
          SizedBox(height: bottomNavBarHeight + 35),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TileLayer(
      urlTemplate: 'https://{s}.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png',
      subdomains: const ['a', 'b'],
    );
  }
}



class PageAppBar extends StatelessWidget {
  const PageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => context.pop(),
          icon: SvgPicture.asset('assets/svg_icons/arrow_left.svg'),
          style: ButtonStyle(tapTargetSize: MaterialTapTargetSize.shrinkWrap),
        ),
        Expanded(
          child: Center(
            child: GradientText(
              'квиз',
              style: const TextStyle(
                fontFamily: 'Rounded',
                fontSize: 32,
                fontWeight: FontWeight.w400,
              ),
              colors: const [
                Color.fromRGBO(111, 244, 255, 1),
                Color.fromRGBO(247, 174, 255, 1),
                Color.fromRGBO(254, 211, 81, 1)
              ],
            ),
          ),
          
        ),
        SizedBox(height: 24, width: 24),
      ],
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
