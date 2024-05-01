import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:letsgohome/controller/schoolController.dart';
import 'package:letsgohome/models/add_student.dart';
import 'package:letsgohome/utils/add_student_api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../component/customTextFieldWith_DropDown.dart';
import '../component/fordays.dart';
import '../component/textformfield_ns.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final AddStudentPost addStudentPost = AddStudentPost();
  List<String> selectedDays = [];
  List<String> allDays = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
  final TextEditingController fullnameController = TextEditingController();
  final TextEditingController branchController = TextEditingController();
  final TextEditingController centerController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();
  final TextEditingController nationalityController = TextEditingController();
  final TextEditingController outTimeController = TextEditingController();
  final TextEditingController commingTimeController = TextEditingController();
  final TextEditingController arriveController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController illnessTypeController = TextEditingController();
  final TextEditingController symptomsController = TextEditingController();
  final TextEditingController firstAidController = TextEditingController();
  final TextEditingController commingAlarmController = TextEditingController();
  final TextEditingController outAlarmController = TextEditingController();
  final TextEditingController daysController = TextEditingController();
  final TextEditingController levelController = TextEditingController();
  final TextEditingController schoolIdController = TextEditingController();

  final SchoolController schoolController = Get.put(SchoolController());

  @override
  void initState() {
    super.initState();
    // Fetch school data when the page is initialized
    schoolController.fetchSchoolData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 129,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xFF5C955D),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: IconButton(
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => HomePage()),
                    // );
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // Add your content for the small container here
                ),
              ),
              const Positioned(
                top: 80,
                left: 27,
                child: Text(
                  "Add New Student",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.person_rounded,
                  labelText: "Full Name",
                  controller: fullnameController,
                ),
                CustomTextFieldDrop(
                  prefixIcon: Icons.school,
                  labelText: "School Name",
                  options: convertSchoolControllerToList(schoolController.schoolData), // Use the RxList directly
                  onChanged: handleDropdownChangeSchool,
                ),
                CustomTextFieldDrop(
                  prefixIcon: Icons.leaderboard,
                  labelText: "Level",
                  onChanged: handleDropdownChangeLevel,
                  options: <String>['Elementary', 'Middle', 'High']
                      .map((String value) => {'id': value, 'name': value})
                      .toList(),
                ),
                CustomTextField(
                  prefixIcon: Icons.add,
                  labelText: "Branch",
                  controller: branchController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 15,),
                // CustomTextField(
                //   prefixIcon: Icons.business_rounded,
                //   labelText: "Days",
                //   controller: daysController,
                //  // onTap: () => _showDaysPicker(context),
                // ),
                // CustomTextFieldDrop(
                //   prefixIcon: Icons.business_rounded,
                //   labelText: "Days",
                //   onChanged: handleDropdownChangeDays,
                //   options: <String>['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
                //       .map((String value) => {'id': value, 'name': value})
                //       .toList(),
                // ),
                CustomTextFieldDropDays(
                  prefixIcon: Icons.business_rounded,
                  labelText: "Days",
                  onChanged: (selected) {
                    setState(() {
                      selectedDays = List<String>.from(selected!);
                    });
                  },
                  options: allDays.map((day) {
                    return {'id': day, 'name': day};
                  }).toList(),
                ),

    // MultiSelectFormField(
    // autovalidate: false,
    // titleText: 'Days',
    // dataSource: allDays.map((day) {
    // return {'display': day, 'value': day};
    // }).toList(),
    // textField: 'display',
    // valueField: 'value',
    // okButtonLabel: 'OK',
    // cancelButtonLabel: 'CANCEL',
    // hintText: 'Select days',
    // value: selectedDays,
    // onSaved: (value) {
    // setState(() {
    // selectedDays = value!;
    // });
    // },
    // ),
  //  SizedBox(height: 20),
    // ElevatedButton(
    // onPressed: () {
    // // Handle saving selected days
    // print('Selected days: $selectedDays');
    // },
    // child: Text('Save'),
    // ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.calendar_today,
                  labelText: "BirthDay",
                  controller: birthdateController,
                  keyboardType: TextInputType.datetime,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.business_rounded,
                  labelText: "Nationality",
                  controller: nationalityController,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.alarm_on_rounded,
                  labelText: "Out Time",
                  controller: outTimeController,
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [_TimeFormatter()],
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  prefixIcon: Icons.alarm_on_rounded,
                  labelText: "Coming Time",
                  controller: commingTimeController,
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [_TimeFormatter()],
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  prefixIcon: Icons.alarm_on_rounded,
                  labelText: "Arriving Time",
                  controller: arriveController,
                  keyboardType: TextInputType.datetime,
                  inputFormatters: [_TimeFormatter()],
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.height_outlined,
                  labelText: "Height",
                  controller: heightController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.line_weight,
                  labelText: "Weight",
                  controller: weightController,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.help_center,
                  labelText: "Health Center",
                  controller: centerController,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.severe_cold,
                  labelText: "Illness Type",
                  controller: illnessTypeController,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.severe_cold,
                  labelText: "Symptoms",
                  controller: symptomsController,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.celebration,
                  labelText: "First Aid",
                  controller: firstAidController,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.alarm,
                  labelText: "Coming Alarm",
                  controller: commingAlarmController,
                ),
                const SizedBox(height: 10,),
                CustomTextField(
                  prefixIcon: Icons.alarm,
                  labelText: "Out Alarm",
                  controller: outAlarmController,
                  keyboardType: TextInputType.datetime,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF5C955D),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: InkWell(
                    onTap: () async {
                      await saveStudent();
                    },
                    child: const Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void handleDropdownChange(String? selectedValue) {
    print('Selected value: $selectedValue');
  }

  void handleDropdownChangeLevel(String? selectedValue) {
    levelController.text = selectedValue!;
    print('Selected value: $selectedValue');
  }

  void handleDropdownChangeSchool(String? selectedValue) {
    schoolIdController.text = selectedValue!;
    print('Selected value: $selectedValue');
  }
  void handleDropdownChangeDays(String? selectedValue) {
    setState(() {
      daysController.text = selectedValue ?? ''; // Update the text field value
    });
  }


  List<Map<String, dynamic>> convertSchoolControllerToList(RxList schoolData) {
    List<Map<String, dynamic>> resultList = [];
    for (var element in schoolData) {
      resultList.add({
        'id': element['id'],
        'name': element['name'],
      });
    }
    return resultList;
  }

  Future<void> saveStudent() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? parentId = prefs.getString('Parent_id');
    AddStudentModel std = AddStudentModel(
      id: parentId!,
      student_code: "4644788952",
      school_id: schoolIdController.text,
      name: fullnameController.text,
      level: levelController.text ?? 'Elementary',
      branch: branchController.text,
      birthdate: birthdateController.text,
      nationality: nationalityController.text,
      days: daysController.text.split(', '),
      out_time: outTimeController.text,
      comming_time: commingTimeController.text,
      out_alarm: outAlarmController.text,
      comming_alarm: commingAlarmController.text,
      h_center: centerController.text,
      height: heightController.text,
      weight: weightController.text,
      illnes_type: illnessTypeController.text,
      symptoms: symptomsController.text,
      first_aid: firstAidController.text,
    );
    await addStudentPost.addStudent(std);
  }



  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1998),
      lastDate: DateTime.now(),
    );
    if (pickedDate != null && pickedDate != birthdateController.text) {
      setState(() {
        birthdateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }
}

class _TimeFormatter extends TextInputFormatter {
  final RegExp _timeRegex = RegExp(r'^([1-9]|1[0-2]):([0-5][0-9]) (AM|PM)$');

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String formattedValue = _formatTime(newValue.text);
    return TextEditingValue(
      text: formattedValue,
      selection: TextSelection.fromPosition(TextPosition(offset: formattedValue.length)),
    );
  }

  String _formatTime(String input) {
    if (_timeRegex.hasMatch(input)) {
      return input;
    }

    try {
      final DateTime parsedTime = DateFormat('hh:mm a').parse(input);
      return DateFormat('hh:mm a').format(parsedTime);
    } catch (e) {
      return '';
    }
  }
}
