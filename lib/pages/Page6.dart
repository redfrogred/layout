import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';
import '../widgets/bottom_nav.dart';

class Page6 extends StatefulWidget {
  const Page6({Key? key}) : super(key: key);

  @override
  State<Page6> createState() => _Page6State();
}

class _Page6State extends State<Page6> {
  // see:
  // https://medium.com/flutter-community/a-deep-dive-into-datepicker-in-flutter-37e84f7d8d6c
  // DateTime dateTime = DateTime(2022, 12, 24, 5, 30);

  String _dateTimeStr = '~ knot set ~';
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            children: [
              // START: NAME ROW
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          const Expanded(

                              //  start of
                              //  NAME label
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Name:',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 18,
                                  ),
                                ),
                              )),

                          //  start of
                          //  NAME textbox
                          Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 18,
                                  ),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 12,
                                          bottom: 12,
                                          top: 12,
                                          right: 2),
                                      isDense: true,
                                      hintText: "Enter name",
                                      hintStyle: TextStyle(
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 18,
                                      ),
                                      fillColor: Color(0xFFffffff),
                                      filled: true),
                                  //maxLength: 40,
                                ),
                              )),
                        ],
                      ),
                    ),
                  )),
              // END: RECIPIENT ROW

              // START: RECIPIENT ROW
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          const Expanded(

                              // start of
                              //  RECIPIENT label
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Recipient:',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 18,
                                  ),
                                ),
                              )),

                          // start of
                          //  RECIPIENT textbox
                          Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 18,
                                  ),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 12,
                                          bottom: 12,
                                          top: 12,
                                          right: 2),
                                      isDense: true,
                                      hintText: "Mobile Phone Number",
                                      hintStyle: TextStyle(
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 18,
                                      ),
                                      fillColor: Color(0xFFffffff),
                                      filled: true),
                                  //maxLength: 40,
                                ),
                              )),
                        ],
                      ),
                    ),
                  )),
              // END: RECIPIENT ROW

              // START: START TIME ROW
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Expanded(

                              //  start of
                              //  START TIME label
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Start Time:',
                                  style: TextStyle(
                                    color: Color(0xFF000000),
                                    fontSize: 18,
                                  ),
                                ),
                              )),

                          //  start of
                          //  START TIME textbox
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 44,
                                color: Colors.white,
                                alignment: Alignment.center,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Text(
                                        _dateTimeStr,
                                        style: TextStyle(
                                          color: Color(0xFFcccccc),
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      child: InkWell(
                                        child: Icon(Icons.calendar_month),
                                        onTap: () {
                                          //action code when clicked
                                          print("The icon is clicked");
                                          pickDateTime();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              // END: START TIME ROW

              // START: reset start link
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(130, 0, 14, 8),
                  child: Text('reset start',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
              // END: reset start link

              // START: END TIME ROW
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      child: Row(
                        children: [
                          Expanded(

                              //  start of
                              //  START TIME label
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                  child: Text(_dateTimeStr),
                                  onPressed: () {
                                    pickDateTime();
                                  },
                                ),
                              )),

                          //  start of
                          //  START TIME textbox
                          Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: Color(0xFF333333),
                                    fontSize: 18,
                                  ),
                                  decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 12,
                                          bottom: 12,
                                          top: 12,
                                          right: 2),
                                      isDense: true,
                                      hintText: "Enter end time",
                                      hintStyle: TextStyle(
                                        color: Color(0xFFCCCCCC),
                                        fontSize: 18,
                                      ),
                                      fillColor: Color(0xFFffffff),
                                      filled: true),
                                  //maxLength: 40,
                                ),
                              )),
                        ],
                      ),
                    ),
                  )),
              // END: END TIME ROW

              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(13, 25, 13, 15),
                    child: Container(
                      width: double.infinity,
                      color: Colors.transparent,
                      child: ElevatedButton(
                        onPressed: () async {
                          // ignore: unused_local_variable
                          // var passCode = await DialogWidget.warningDialog(context, 'Form contains multiple errors:\n\n1. Name cannot be blank\n2. Recipient cannot be blank');
                        },
                        child: const Text(
                          'Send',
                          style: TextStyle(
                            color: Color(0xFFffffff),
                            fontSize: 20,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10)),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return; // pressed 'CANCEL'

    TimeOfDay? time = await pickTime();
    if (time == null) return; // pressed 'CANCEL'

    final dateTime =
        DateTime(date.year, date.month, date.day, time.hour, time.minute);
    setState(() {
      this.dateTime = dateTime;
      String tempStr = dateTime.toString();
      int tempStrLen = tempStr.length - 7;
      // '${dateTime.year}/${dateTime.month}/${dateTime.day} $hours:$minutes'
      _dateTimeStr = tempStr.substring(0, tempStrLen);
    }); // pressed 'OK'
  }

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: dateTime,
        firstDate: DateTime(2022),
        lastDate: DateTime(2030),
        builder: (context, child) {
          return Theme(
            data: ThemeData.dark(), // This will change to dark theme.
            child: child!,
          );
        },
      );

  // style
  // https://stackoverflow.com/questions/62262683/flutter-showdatepicker-change-colors
  Future<TimeOfDay?> pickTime() => showTimePicker(
        context: context,
        initialTime: TimeOfDay(hour: dateTime.hour, minute: dateTime.minute),
        builder: (context, child) {
          return Theme(
            data: ThemeData.light().copyWith(
              colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.teal,
                primaryColorDark: Colors.teal,
                accentColor: Colors.teal,
              ),
              dialogBackgroundColor: Colors.white,
            ), // This will change to dark theme.
            child: child!,
          );
        },
      );
}
