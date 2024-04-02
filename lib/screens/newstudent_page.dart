import 'package:flutter/material.dart';
import '../component/customTextFieldWith_DropDown.dart';
import '../component/textformfield_ns.dart';
class AddStudent extends StatefulWidget {
  const AddStudent({super.key});
  @override
  State<AddStudent> createState() => _AddStudentState();
}
class _AddStudentState extends State<AddStudent> {
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
                decoration: BoxDecoration(
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
                  icon: Icon(Icons.arrow_back),
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
              Positioned(
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
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.person_rounded,labelText: "Full Name",),
                SizedBox(height: 10,),
                CustomTextFieldDrop(prefixIcon: Icons.school,labelText: "School name", onPressed: () {  },),
                SizedBox(height: 10,),
                CustomTextFieldDrop(prefixIcon: Icons.edit_note_rounded,labelText: "Level", onPressed: () {  },),
                SizedBox(height: 10,),
                CustomTextFieldDrop(prefixIcon: Icons.note_alt_rounded,labelText: "Branch", onPressed: () {  },),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.calendar_today,labelText: "BirthDay ",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.business_rounded,labelText: "Notionality",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.alarm_on_rounded,labelText: "Out_time",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.alarm_on_rounded,labelText: "Comming_time",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.alarm_on_rounded,labelText: "Arriving_time",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.height_outlined,labelText: "Hight",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.line_weight,labelText: "Weight",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.help_center,labelText: "H_center",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.severe_cold,labelText: "Illness_type",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.severe_cold,labelText: "Symptomes",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.celebration,labelText: "first_aid",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.alarm,labelText: "Comming_alarm",),
                SizedBox(height: 10,),
                CustomTextField(prefixIcon: Icons.alarm,labelText: "Out_alarm",),

                Container(
                  margin: EdgeInsets.only(top: 20,bottom: 20),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF5C955D),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    border: Border.all(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: OutlinedButton(
                    onPressed: () {
                     // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));

                    },
                    style: OutlinedButton.styleFrom(
                      primary:  Color(0xFF5C955D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Save",style: TextStyle(
                        fontSize: 20
                        , fontWeight:FontWeight.bold, color: Colors.white),),
                  ),
                ),



              ],
            ),
          )

        ],
      ),
    );
  }
}

