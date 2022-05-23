import 'package:flutter/material.dart';
import 'package:meetwith/Screens/Welcome/WelcomePage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);
  final _controller = PageController();

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  Center(
                      child: LayoutBuilder(
                        builder: (final _, final constraints) => Image(
                          fit: BoxFit.cover,
                          width: constraints.maxWidth,
                          image: AssetImage('images/modül1.png'),
                        ),
                      )
                  ),
                  Center(
                      child: LayoutBuilder(
                        builder: (final _, final constraints) => Image(
                          fit: BoxFit.cover,
                          width: constraints.maxWidth,
                          image: AssetImage('images/modül2.png'),
                        ),
                      )
                  ),
                  Center(
                      child: LayoutBuilder(
                        builder: (final _, final constraints) => Image(
                          fit: BoxFit.cover,
                          width: constraints.maxWidth,
                          image: AssetImage('images/modül3.png'),
                        ),
                      )
                  ),
                  Center(
                      child: LayoutBuilder(
                        builder: (final _, final constraints) => Image(
                          fit: BoxFit.cover,
                          width: constraints.maxWidth,
                          image: AssetImage('images/modül4.png'),
                        ),
                      )
                  ),
                  Column(
                    children: [
                      Center(
                          child: LayoutBuilder(
                            builder: (final _, final constraints) => Image(
                              fit: BoxFit.cover,
                              width: constraints.maxWidth,
                              image: AssetImage('images/modül5.png'),
                            ),
                          )
                      ),

                    ],
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 5,
              axisDirection: Axis.horizontal,
              effect: const SlideEffect(
                activeDotColor: Colors.white54,
                dotHeight: 15,
                dotColor: Colors.lightGreen,
                dotWidth: 15,
              ),
            ),
            Container(
              height: 20,
            ),
            MaterialButton(color: Color(0xFFA8CD4C),
                onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return WelcomePage();
              }));
                },
                child: Text('Haydi Başlayalım'))
          ],
        ),
      ),
    );

  }
}


