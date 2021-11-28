import 'package:flutter/material.dart';
import 'package:innovest/home_login.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroBasicScreen extends StatelessWidget {
  const IntroBasicScreen({ Key? key }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    String hexString = "18dbc6";
    List<PageViewModel> listPagesViewModel = <PageViewModel>[

      PageViewModel(
        title: "Invest wherever you are in the world",
        body: "Secure your future by building your wealth..",
        image: Center(
          child: Image.asset("assets/img1.jpg", height: 175.0),
        ),
        
      ),

      PageViewModel(
        title: "Move with the market",
        body: "Investing in the palm of your hands...",
        image: Center(
          child: Image.asset("assets/img2.jpg", height: 175.0),
        ),
        
      ),
     PageViewModel(
      title: "We make investing easy for you",
      body: "Invest in the world's top brands like Apple, Tesla, Google",
      image: Center(
          child: Image.asset("assets/img3.jpg", height: 175.0)),
      footer: ElevatedButton(
        
        onPressed: () {
          // On button presed move to the navigation screen
          Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()),
          );
        },
        child: const Text("Start Investing Now !"),
        style: ElevatedButton.styleFrom(primary: Color(int.parse("0xff${hexString}")),)
      ),

    ) 

      
    ];
    
    
    
    
    
    return IntroductionScreen(
  

          pages: listPagesViewModel,
          onDone: () {
          // When done button is pressed switch to the navigation screen
          
            Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()),
        );
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        showSkipButton: true,
        skip: const Icon(Icons.skip_next),
        next: const Icon(Icons.skip_next),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        color: Colors.orange,  
        skipColor: Colors.red,  
        doneColor: Colors.green,  
        nextColor: Colors.blue,
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          activeColor: Theme.of(context).colorScheme.secondary,
          color: Colors.black26,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)
          )
        ),
      );
  }
}