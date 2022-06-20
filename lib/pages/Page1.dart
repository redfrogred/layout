import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';
import '../widgets/bottom_nav.dart';

class Page1 extends StatelessWidget {
  const Page1 ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //Utils.denyBackFlip();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false, // see BLADE-74
        appBar: AppBar(
          title: const Text('Settings'),
          automaticallyImplyLeading: false,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image:
                AssetImage("lib/assets/images/background_bottom_lt_gray.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomLeft,
            ),
            color: Color(0xFFE6E6E6),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Expanded(
                child: Center(
                  child:Text('vanilla_page.dart\n(denies back button)'),
                  ),
              ),
              Expanded(
                child: Center(
                  child: ElevatedButton(
                    child: Text('< back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ]
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}