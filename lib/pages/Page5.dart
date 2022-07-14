import 'package:provider/provider.dart';
import '../classes/_core.dart'; // loads all the "core" classes
import '../providers/Controller.dart';
import 'package:page_transition/page_transition.dart';
import '../pages/_all.dart';
import '../widgets/bottom_nav.dart';

class Page5 extends StatefulWidget {
  const Page5 ({Key? key}) : super(key: key);

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  // see: 
  // https://medium.com/flutter-community/a-deep-dive-into-datepicker-in-flutter-37e84f7d8d6c
  // DateTime dateTime = DateTime(2022, 12, 24, 5, 30);

  String _dateTimeStr = 'Select Date / Time';
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final hours = dateTime.hour.toString().padLeft(2, '0');
    final minutes = dateTime.minute.toString().padLeft(2, '0');

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Date and Time',
              style: TextStyle(fontSize: 32),
            ),



            const SizedBox(height: 16, width: double.infinity),
            ElevatedButton(
              child: Text(_dateTimeStr),
              //child: Text('${dateTime.year}/${dateTime.month}/${dateTime.day} $hours:$minutes'),
              
              onPressed: pickDateTime,
            ),

          ],
        ),
      ),
    );
  }

  Future pickDateTime() async {
    DateTime? date = await pickDate();
    if (date == null) return; // pressed 'CANCEL'

    TimeOfDay? time = await pickTime();
    if (time == null) return; // pressed 'CANCEL'

    final dateTime = DateTime(
      date.year,
      date.month,
      date.day,
      time.hour,
      time.minute
    );
    setState(() { 
      this.dateTime = dateTime; 
      String tempStr = dateTime.toString();
      int tempStrLen = tempStr.length-7;
      // '${dateTime.year}/${dateTime.month}/${dateTime.day} $hours:$minutes'
      _dateTimeStr = tempStr.substring(0,tempStrLen);
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
                dialogBackgroundColor:Colors.white,
              ), // This will change to dark theme.
              child: child!,
            );
        },         
      );
}
