import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';
import '../widgets/bottom_nav.dart';

class Page2 extends StatefulWidget {
  const Page2 ({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
          automaticallyImplyLeading: true,
          centerTitle: true,
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
          child: Container(
            width: double.infinity,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8,8,8,8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  
                  
                  
                  
                  
                  // start of BASICS
                  Container(
                    color: const Color(0xFF888888),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            color: const Color(0xFF888888),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(14,8,8,8),
                              child: Text(
                                'Basics', style: TextStyle( fontSize: 18, color: Colors.white)),
                            ))),
                        Expanded(
                          flex: 1,
                          child: Container(
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(8,8,8,8),
                              child: Text(
                                ' ', style: TextStyle( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white )),
                            ))),
                                    
                      ],
                    ),
                  ),
                  // end of BASICS



                  const Divider(height: 8),



                  // start of REMOTE UNLOCK
                  Material(
                    color: const Color(0xcff888888),
                    child: InkWell(
                      splashColor: Color(0xcffcccccc),
                      onTap: () {
                        Utils.log('ink me!');
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                color: Colors.transparent,
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(14,8,8,8),
                                  child: Text(
                                    'Remote Unlock', style: TextStyle( fontSize: 18, color: Colors.white)),
                                ))),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                //color: Colors.grey,
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(4,8,16,8),
                                  child: Icon(
                                    Icons.arrow_right_outlined,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  // color: Color(0xcffCCCCCC),
                                  border: Border(  
                                    left: BorderSide (
                                      color: Color(0xcff777777),
                                      width: 2,
                                    )
                                  )
                                ),                                
                              ),
                            ),          
                          ],
                        ),
                      ),
                    ),
                  ),
                  // end of REMOTE UNLOCK




                  const Divider(height: 8),

                  


                  // start of FIRMWARE
                  Material(
                    color: const Color(0xcff888888),
                    child: InkWell(
                      splashColor: Color(0xcffcccccc),
                      onTap: () {
                        Utils.log('ink me!');
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                color: Colors.transparent,
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(14,8,8,8),
                                  child: Text(
                                    'Firmware Update', style: TextStyle( fontSize: 18, color: Colors.white)),
                                ))),
                            Expanded( 
                              flex: 1,
                              child: Container(
                                alignment: Alignment.center,
                                //color: Colors.grey,
                                child: const Padding(
                                  padding: EdgeInsets.fromLTRB(4,8,16,8),
                                  child: Icon(
                                    Icons.arrow_right_outlined,
                                    color: Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  // color: Color(0xcffCCCCCC),
                                  border: Border(  
                                    left: BorderSide (
                                      color: Color(0xcff777777),
                                      width: 2,
                                    )
                                  )
                                ),                                
                              ),
                            ),          
                          ],
                        ),
                      ),
                    ),
                  ),
                  // end of FIRMWARE



                  Visibility(
                    visible: true,
                    child: Padding( 
                      padding: EdgeInsets.fromLTRB(10,50,10,10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Page 2 -\nthis one uses real icons for arrows...', 
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        )
                      ),
                    ),
                  ),



                ]
              ),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNav(),
      ),
    );
  }
}