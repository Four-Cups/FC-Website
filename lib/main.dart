import 'package:fc_loaders/fc_loaders.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/loader_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FC Loaders Display App',
      home: Scaffold(
        backgroundColor: const Color(0xfffdfdfd),        
        body: Center(            
        child: SingleChildScrollView(
          // padding: const EdgeInsets.all(50),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                color: Colors.transparent,
                padding: const EdgeInsets.all(45),
                child: Image.asset('logo.png'),
              ),
              Container(
                height: 1.5,
                width: 1500,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Color(0xfffbbb19),
                      Colors.white,
                    ],
                  )
                ),
              ),
              Container(
                height: 120,
                width: double.infinity,                
                child: Center(child: Text('LOADERS', style: GoogleFonts.urbanist(fontSize: 26, fontWeight: FontWeight.w500, letterSpacing: 1.5),)),
              ),
              Wrap(
                spacing: 50.0,
                runSpacing: 50.0,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                children: const [
                  LoaderCard(child: FCBallBounce(), head: 'Linear Bouncing Ball', subhead: 'FCBallBounce'),
                  LoaderCard(child: FCCurvedBallBounce() , head: 'Curved Bouncing Ball', subhead: 'FCCurvedBallBounce'),
                  LoaderCard(child: Wrapper(child: FCRotatingPlane()), head: 'Rotating Plane', subhead: 'FCRotatingPlane'),   
                  LoaderCard(child: Wrapper(child: FCRotatingSquare(loaderColor: Colors.amber,)), head: 'Rotating Square', subhead: 'FCRotatingSquare'),
                  LoaderCard(child: Wrapper(child: FCRotatingMorph()), head: 'Morphing Square', subhead: 'FCRotatingMorph'),
                  LoaderCard(child: Wrapper(child: FCDoubleBounce()), head: 'Double Bounce', subhead: 'FCDoubleBounce'),
                  LoaderCard(child: Wrapper(child: FCSingleBounce()), head: 'Single Bounce', subhead: 'FCSingleBounce'),
                  LoaderCard(child: FCDualRipple(), head: 'Dual Ripple', subhead: 'FCDualRipple'),
                  LoaderCard(child: FCSunPlanet(), head: 'Sun Planet', subhead: 'FCSunPlanet'),
                  LoaderCard(child: FCClockCompletion(), head: 'Timer', subhead: 'FCClockCompletion'),
                  LoaderCard(child: FCClock(), head: 'Static Timer', subhead: 'FCClock'),
                  LoaderCard(child: FCClockTransition(type: ClockAnimateType.translation), head: 'Dynamic Timer', subhead: 'FCClockTransition'),
                  LoaderCard(child: FCLoading4Colors(), head: 'Hopping Colors', subhead: 'FCLoading4Colors'),
                  LoaderCard(child: FCRotatingThreeCircle(), head: 'Rotating Colors', subhead: 'FCRotatingThreeCircle'),
                ]
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

class Wrapper extends StatelessWidget {
  final Widget child;

  const Wrapper({ Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}



// body: Center(            
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(50),
//           scrollDirection: Axis.vertical,
//           child: Wrap(
//             spacing: 50.0,
//             runSpacing: 50.0,
//             alignment: WrapAlignment.center,
//             runAlignment: WrapAlignment.center,
//             children: const [
//               LoaderCard(child: FCBallBounce(), head: 'Linear Bouncing Ball', subhead: 'FCBallBounce'),
//               LoaderCard(child: FCCurvedBallBounce() , head: 'Curved Bouncing Ball', subhead: 'FCCurvedBallBounce'),
//               LoaderCard(child: Wrapper(child: FCRotatingPlane()), head: 'Rotating Plane', subhead: 'FCRotatingPlane'),   
//               LoaderCard(child: Wrapper(child: FCRotatingSquare(loaderColor: Colors.amber,)), head: 'Rotating Square', subhead: 'FCRotatingSquare'),
//               LoaderCard(child: Wrapper(child: FCRotatingMorph()), head: 'Morphing Square', subhead: 'FCRotatingMorph'),
//               LoaderCard(child: Wrapper(child: FCDoubleBounce()), head: 'Double Bounce', subhead: 'FCDoubleBounce'),
//               LoaderCard(child: Wrapper(child: FCSingleBounce()), head: 'Single Bounce', subhead: 'FCSingleBounce'),
//               LoaderCard(child: FCDualRipple(), head: 'Dual Ripple', subhead: 'FCDualRipple'),
//               LoaderCard(child: FCSunPlanet(), head: 'Sun Planet', subhead: 'FCSunPlanet'),
//               LoaderCard(child: FCClockCompletion(), head: 'Timer', subhead: 'FCClockCompletion'),
//               LoaderCard(child: FCClock(), head: 'Static Timer', subhead: 'FCClock'),
//               LoaderCard(child: FCClockTransition(type: ClockAnimateType.translation), head: 'Dynamic Timer', subhead: 'FCClockTransition'),
//               LoaderCard(child: FCLoading4Colors(), head: 'Hopping Colors', subhead: 'FCLoading4Colors'),
//               LoaderCard(child: FCRotatingThreeCircle(), head: 'Rotating Colors', subhead: 'FCRotatingThreeCircle'),
//             ]
//           ),
//         ),
//       )