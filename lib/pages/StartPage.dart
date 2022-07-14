import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = context.read<Controller>();

    return Scaffold(
      body: Column(
        children: [
          const Expanded(
            flex: 2,
            child: Center(
              child: Text('EDEA UI Examples'),
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/Page1');
                  },
                  child: const Text('Pg 1'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/Page2');
                  },
                  child: const Text('Pg 2'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/Page3');
                  },
                  child: const Text('Pg 3'),
                ),                 
                ElevatedButton(
                  onPressed: () {
                  },
                  child: const Text('EndPage'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // background
                  ),
                ),                
              ],
            ),
          ),
Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/Page4');
                  },
                  child: const Text('Pg 4'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/Page5');
                  },
                  child: const Text('Pg 5'),
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.grey, // background
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,'/Page6');
                  },
                  child: const Text('Pg 6'),
                  style: ElevatedButton.styleFrom(
                    //primary: Colors.grey, // background
                  ),
                ),                 
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            curve: Curves.easeInOut,
                            duration: Duration(milliseconds: 600),
                            reverseDuration: Duration(milliseconds: 600),
                            type: PageTransitionType.rightToLeftJoined,
                            child: EndPage(),
                            childCurrent: this));
                  },
                  child: const Text('EndPage'),
                ),                
              ],
            ),
          ),

        ],
      ),
    );
  }
}
