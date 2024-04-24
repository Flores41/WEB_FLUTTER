import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portafolio_web/utils/utils.dart';
import 'package:portafolio_web/widgets/widgets.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

class ShowAppBar extends StatelessWidget {
  const ShowAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = context.width;
    final height = context.height;
    final colors = context.colorScheme;

    return SizedBox(
      width: width,
      height: height * 0.3,
      child: Stack(
        children: [
          SizedBox(height: height * 0.4, child: const ShowGradient()),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.02,
              horizontal: width * 0.20,
            ),
            child: BlurryContainer(
              width: width,
              height: height * 0.07,
              blur: 30,
              elevation: 1,
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Row(
                  children: [
                    DisplayWhiteText(
                      text: 'About',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: colors.surface,
                    ),
                    const Gap(30),
                    DisplayWhiteText(
                        text: 'Work',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: colors.surface),
                    const Gap(30),
                    DisplayWhiteText(
                      text: 'Contact',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: colors.surface,
                    ),
                    const Gap(30),
                    DisplayWhiteText(
                      text: 'Notebook',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: colors.surface,
                    ),
                    const Gap(30),
                    DisplayWhiteText(
                      text: 'More',
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: colors.surface,
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/img/Github.png',
                          color: colors.surface,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/img/linkedin.png',
                          color: colors.surface,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/img/message.png',
                          color: colors.surface,
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
