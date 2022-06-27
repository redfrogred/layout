import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';
import '../widgets/bottom_nav.dart';

class Page3 extends StatefulWidget {
  const Page3 ({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {

  // ----------------------------------------------------------------

  Material _getRow ( int num, String label, String value, [bool editable = false] ) {

    int _labelWidth = num;
    int _valueWidth = 10 - num;
    double _rightSpacer = 14;

    if (editable == true) {
      _rightSpacer = 0; 
    }

    return Material(
      color: Colors.transparent,
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              flex: _labelWidth,
              child: Container(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14,8,8,8),
                  child: Text(
                    label, style: const TextStyle( fontSize: 18 )),
                ))),
            Expanded(
              flex: _valueWidth,
              child: Container(
                alignment: Alignment.centerRight,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(8,8,_rightSpacer,8),
                  child: Text(
                    value, style: const TextStyle( fontSize: 18, color: Color(0xFF888888) )),
                )),
            ),     
            Offstage(
              offstage: !editable,
              child: Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.centerRight,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,8,0,8),
                    child: Icon(
                      Icons.arrow_right_outlined,
                      size: 30.0,
                    ),
                  )),
              ),
            ),                    
          ],
        ),
      ),
    );
  }

  // ----------------------------------------------------------------
  
  Container _getHeadingRow ( String label ) {
    return Container(
      color: const Color(0xFF888888),
      child: Row(
        children: [
          Expanded(
            flex: 8,
            child: Container(
              color: const Color(0xFF888888),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(14,8,8,8),
                child: Text(
                  label, style: const TextStyle( fontSize: 18, color: Colors.white)),
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
    );

  }

  // ----------------------------------------------------------------
  
  Material _getClickableHeadingRow ( String label ) {

    return Material(
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14,8,8,8),
                    child: Text(
                      label, style: const TextStyle( fontSize: 18, color: Colors.white)),
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
    );

  }







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
            /*
            image: DecorationImage(
              image:
                AssetImage("lib/assets/images/background_bottom_lt_gray.png"),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomLeft,
            ),
            */
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
                  
                  
                  
                  
                  
                  _getHeadingRow ('Basics'),
                  const Divider(height: 8),
                  _getRow ( 5, 'Lock Number', 'BL01_a9b78a'),
                  _getRow ( 3, 'MAC/ID', 'C7:9F:71:8A:B7:A9/3564544'),
                  _getRow ( 5, 'Battery*', '85%'),
                  _getRow ( 5, 'Name', 'Some Yung Guy', true ),                
                  _getRow ( 5, 'Lock Group', 'Ungrouped'),
                  _getRow ( 5, 'Admin Passcode*', 'BL01_a9b78a'),
                  const Divider(height: 8),
                  _getHeadingRow ( 'Remote Unlock'),
                  _getRow ( 5, 'Current Status', 'Off'),
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,14,8),
                                child: Text(
                                  ' ', style: const TextStyle( fontSize: 18, color: Color(0xFF888888) )),
                              )),
                          ),   
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Colors.transparent,
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,14,8),
                                child: Text(
                                  'toggle status', style: const TextStyle( fontSize: 18, color: Colors.black, decoration: TextDecoration.underline, )),
                              ))),                   
                        ],
                      ),
                    ),
                  ),                  
                  const Divider(height: 8),
                  _getHeadingRow ( 'Firmware Update'),
                  const Divider(height: 8),
                  _getRow ( 5, 'Current Version', '4.3.3.190429'),
                  Material(
                    color: Colors.transparent,
                    child: Container(
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,14,8),
                                child: Text(
                                  ' ', style: const TextStyle( fontSize: 18, color: Color(0xFF888888) )),
                              )),
                          ),   
                          Expanded(
                            flex: 5,
                            child: Container(
                              color: Colors.transparent,
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(8,0,14,8),
                                child: Text(
                                  'check for update', style: const TextStyle( fontSize: 18, color: Colors.black, decoration: TextDecoration.underline, )),
                              ))),                   
                        ],
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