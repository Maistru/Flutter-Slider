import 'package:flutter/material.dart';
import 'package:slider_app/view/screen/slider.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentpages = 0;
  PageController controller = PageController();
  List<Widget> pages = const [
    OnSlider(
      title: 'data1',
      subtitle: 'subtitle1',
      img: 'assets/images/onboarding1.png',
    ),
    OnSlider(
      title: 'data2',
      subtitle: 'subtitle2',
      img: 'assets/images/onboarding2.png',
    ),
    OnSlider(
      title: 'data3',
      subtitle: 'subtitle3',
      img: 'assets/images/onboarding3.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (val) {
                setState(() {
                  currentpages = val;
                });
              },
              controller: controller,
              itemCount: pages.length,
              itemBuilder: (context, i) {
                return pages[i];
              },
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List<Widget>.generate(
                    pages.length,
                    (index) => AnimatedContainer(
                      width: (index == currentpages) ? 25 : 10,
                      height: 10,
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 1, vertical: 40),
                      decoration: BoxDecoration(
                        color: (index == currentpages)
                            ? Colors.blue
                            : Colors.blue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  currentpages++;
                  if (currentpages > pages.length - 1) {
                    Navigator.of(context).pushReplacementNamed('welcome');
                  } else {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInOutQuint);
                  }
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 60,
                  width: (currentpages == pages.length - 1) ? 150 : 60,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: (currentpages == pages.length - 1)
                        ? const Text(
                            'Get Started',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        : const Icon(
                            Icons.navigate_next,
                            color: Colors.white,
                            size: 45,
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
