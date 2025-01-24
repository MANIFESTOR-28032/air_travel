import 'package:air_travel/OnBoarding/presentation/widgets/ForAnimetedContainer_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingV1 extends StatefulWidget {
  const OnboardingV1({super.key});

  @override
  State<OnboardingV1> createState() => _OnboardingV1State();
}

class _OnboardingV1State extends State<OnboardingV1> {
  int current_index = 0;
  final PageController _controller = PageController();

  static List<String> pages = [
    "We provide high quality products just for you",
    "Your satisfaction is our number one priority",
    "Let's fulfill your house needs with Funica right now!",
  ];

  // final List<Widget>

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              current_index = index;
            });
          },
          children: [
            OnBoardingImage(image: "onboarding_2.png"),
            OnBoardingImage(image: "onboarding_3.png"),
            OnBoardingImage(image: "onboarding_4.png"),
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            padding: EdgeInsets.only(top: 32, right: 24, left: 24),
            width: 428,
            height: 370,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
            ),
            child: Text(
              pages[current_index],
              style: TextStyle(
                color: AppColors.TextColor,
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 146,
          right: 0,
          left: 0,
          child: Center(
            child: AnimatedContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  current_index == 0
                      ? ForAnimatedContainerGreen()
                      : ForAnimatedContainer(),
                  current_index == 1
                      ? ForAnimatedContainerGreen()
                      : ForAnimatedContainer(),
                  current_index == 2
                      ? ForAnimatedContainerGreen()
                      : ForAnimatedContainer(),
                ],
              ),
              width: 60,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              duration: Duration(microseconds: 30),
            ),
          ),
        ),
        Positioned(
          bottom: 48,
          right: 0,
          left: 0,
          child: Center(
            child: ElevatedButton(
              onPressed: () {
                if (current_index == 2) {
                  context.go('/enter_number');
                } else {
                _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                }
              },
              child: Text(
                current_index == 2 ? "Boshlash" : "Keyingi",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(AppColors.GreenMain),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(
                  Size(380, 58),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("TravelAssets/images/onboarding/$image"),
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
