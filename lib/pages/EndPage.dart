import 'package:provider/provider.dart';
import '../classes/_core.dart';           // loads all the "core" classes       
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';

class EndPage extends StatelessWidget {
  const EndPage({ Key? key }) : super(key: key);

   @override
  Widget build(BuildContext context) {

    var controller = context.read<Controller>();
    
    return Scaffold(

      body: Column(
        children: [
          const Flexible(
            child: Center(
                      child: Text('EndPage'),
                    ),
          ),
          Flexible(
            child: Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            curve: Curves.easeInOut,
                            duration: Duration(milliseconds: 600),
                            reverseDuration: Duration(milliseconds: 600),
                            type: PageTransitionType.leftToRightJoined,
                            child: StartPage(),
                            childCurrent: this));
                  },
                  child: const Text('Go To EndPage')),
            ),
          ),          
        ],
      ),
    );
  }
}