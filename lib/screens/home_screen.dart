import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import 'package:portafolio_web/utils/utils.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ShowAppBar(),
            DisplayMain(),
            // ContainerCustom(),
          ],
        ),
      ),
    );
  }
}

class ContainerCustom extends StatelessWidget {
  const ContainerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class DisplayMain extends StatelessWidget {
  const DisplayMain({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    // final height = context.height;
    final colors = context.colorScheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
    
        children: [
          SizedBox(
            width: width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width * 0.4,
                      child: DisplayWhiteText(
                        text: 'I\'m Jose Carlos',
                        fontSize: 90.0,
                        color: colors.surface,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: width * 0.4,
                      child: DisplayWhiteText(
                        text:
                            'A front-end engineer and UI/UX designer helping startups turn their visions into a digital reality.  I specialize in designing and building modern mobile and web-based apps.',
                        fontSize: 30.0,
                        color: colors.surface.withOpacity(0.4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.2,
                  child: SvgPicture.asset(
                    'assets/img/main.svg',
                    width: width * 0.15,
                  ),
                ),
              ],
            ),
          ),
          const Gap(50),
         Row(
          children: [
             Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 36, 35, 35),
              border: Border.all(
                color: colors.surface,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const DisplayWhiteText(
                text: 'See  My Resume', fontSize: 30.0, color: Colors.white),
          ),
          const Gap(20),
           Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 36, 35, 35),
              border: Border.all(
                color: colors.surface,
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: const DisplayWhiteText(
                text: 'Get In Touch', fontSize: 30.0, color: Colors.white),
          ),
          ],
         )
          
        ],
      ),
    );
  }
}










// class ShowMainBpdy extends StatelessWidget {
//   const ShowMainBpdy({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final width = context.width;
//     final height = context.height;
//     final colorScheme = context.colorScheme;
//     return Container(
//       width: width,
//       height: height * 0.9,
//       color: colorScheme.primary.withOpacity(0.3),
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           SvgPicture.asset(
//             'assets/img/index.89d3119228d600788910.svg',
//             width: width,
//             fit: BoxFit.cover,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: width * 0.12),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 SizedBox(
//                   width: width * 0.4,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Row(
//                         children: [
//                           Container(
//                             padding: const EdgeInsets.symmetric(
//                                 vertical: 10, horizontal: 25),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(12),
//                               color: const Color(0xff10e956).withOpacity(0.4),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: const Color.fromARGB(26, 0, 0, 0)
//                                       .withOpacity(0.1),
//                                   spreadRadius: 5,
//                                   blurRadius: 7,
//                                   offset: const Offset(0, 3),
//                                 ),
//                               ],
//                             ),
//                             child: Row(
//                               children: [
//                                 Icon(FontAwesomeIcons.vialCircleCheck,
//                                     color: colorScheme.surface),
//                                 const Gap(10),
//                                 const DisplayWhiteText(
//                                   text: 'Hola!  Soy Jose Carlos',
//                                   fontSize: 24.0,
//                                   color: Color(0xff10e956),
//                                   fontWeight: FontWeight.bold,
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       const Gap(20),
//                       const Row(
//                         children: [
//                           DisplayWhiteText(
//                             text: 'Flutter Developer',
//                             color: Color(0xff10e956),
//                             fontSize: 60,
//                           ),
//                         ],
//                       ),
//                        const Gap(20),
//                       const DisplayWhiteText(
//                         text:
//                             'I am a software engineer with more than four years of experience. recognized as a practical and effective developer, experienced in leading cross-functional teams in a time-pressured setting to complete projects on schedule and within budget.',
//                         fontSize: 20,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       )
//                     ],
//                   ),
//                 ),
//                 Gap(width * 0.04),
//                 Container(
//                   decoration: const BoxDecoration(),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SvgPicture.asset(
//                         'assets/img/main.svg',
//                         width: width * 0.26,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
