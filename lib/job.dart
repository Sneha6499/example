
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project134/Flex%20Option.dart';
import 'dart:io';
import 'mydialog.dart';


import 'package:project134/thirdpage.dart';
class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {

  @override
  bool _passwordVisible = false;
  bool isChecked = false;
  var _image;
  var imagePicker;
  var type;
  String  dropdownValue ="One";
  String titlleex ="Choose Experience";
  String selctedtitlleex ="";
  String titlleex1 ="What is Your Expertise?";
  String selctedtitlleex1 ="";
  String titlleex2 ="Job Functions";
  String selctedtitlleex2 ="";
  String titlleex3 ="Skills";
  String selctedtitlleex3 ="";

  String titlleex4 ="Preferred Industry Experience ";
  String selctedtitlleex4="";

  final TextEditingController _controller = new TextEditingController();
  var items = ['One', 'Two', 'Three', 'Four'];
  List<String>selectedExperince =[];
  List<String>Experince =['1-2','2-5','5-10','Over 10'];

  List<String>selectedExpertise=[];
  List<String>Expertise =['Design','Engineering & construction','Commubications and public relations','Administration',
  'Finance','Health Care'];

  List<String>selectedSkills=[];
  List<String>Skills = ['Art Direction','Illstration','Fashion'];


  List<String>selectedJob=[];
  List<String>Job =['Art Direction','Illstration','Fashion'];

  List<String> selectedIndustry_Experience=[];
  List<String> Industry_Experience=['Accounting','Tax','Design','Data Entry','Finance'];



  @override
  void initstate() {
    super.initState();
    imagePicker = ImagePicker();
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 70,
                  ),

                  Row(
                    children: [
                      Text('Job Details',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      SizedBox(
                        width: 170,
                      ),
                      InkWell(
                        onTap: () {
                          // handle button press
                        },
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),

                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          // handle button press
                        },
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,

                          ),

                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          // handle button press
                        },
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),

                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12
                  ),



                  Text('Job Title',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 6,
                  ),
                  // textAlign: TextAlign.center,
                  // decoration: new InputDecoration.collapsed(
                  //   hintText: " PASSWORD", ), )
                  SizedBox(
                    height: 45,
                    width: 343,
                    child: TextFormField(
                      decoration: InputDecoration(

                        filled: true,
                        fillColor: Color.fromRGBO(201, 223, 218, 1),


                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(201, 223, 218, 1),
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          //         borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: "Enter job title",
                        // Update the state i.e. toogle the state of passwordVisible variable
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Experience',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 5,
                  ),



                  Container(
                    width: 343,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(201, 223, 218, 1),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedExperince.isEmpty
                            ? const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Choose One",
                              style: TextStyle(
                                color: Color.fromRGBO(83, 104, 101, 1),
                              ),
                            ))
                            : Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                              height: 20,
                              width: 250,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (var value
                                    in selectedExperince)
                                      Text("$value "),
                                  ])),
                        ),
                        IconButton(
                            icon:
                            const Icon(Icons.keyboard_arrow_down_sharp),
                            //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return _MyDialog(
                                        title: titlleex,
                                        titlleex: selctedtitlleex,
                                        cities: Experince,
                                        selectedCities: selectedExperince,
                                        onSelectedCitiesListChanged:
                                            (cities) {
                                          setState(() {
                                            selectedExperince = cities;
                                          });

                                          //print(selectedExperince);
                                        });
                                  });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),


                  Text('Expertise ',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 2,
                  ),


                  Container(
                    width: 343,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(201, 223, 218, 1),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedExpertise.isEmpty
                            ? const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Select All that Applies",
                              style: TextStyle(
                                color: Color.fromRGBO(83, 104, 101, 1),
                              ),
                            ))
                            : Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                              height: 20,
                              width: 250,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (var value
                                    in selectedExpertise)
                                      Text("$value "),
                                  ])),
                        ),
                        IconButton(
                            icon:
                            const Icon(Icons.keyboard_arrow_down_sharp),
                            //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return _MyDialog(
                                        title: titlleex1,
                                        titlleex: selctedtitlleex1,
                                        cities: Expertise,
                                        selectedCities: selectedExpertise,
                                        onSelectedCitiesListChanged:
                                            (cities) {
                                          setState(() {
                                            selectedExpertise = cities;
                                          });

                                          //print(selectedExperince);
                                        });
                                  });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Job Functions',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 5,
                  ),



                  Container(
                    width: 343,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(201, 223, 218, 1),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedJob.isEmpty
                            ? const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Select All that Applies",
                              style: TextStyle(
                                color: Color.fromRGBO(83, 104, 101, 1),
                              ),
                            ))
                            : Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                              height: 20,
                              width: 250,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    for (var value
                                    in selectedJob)
                                      Text("$value "),
                                  ])),
                        ),
                        IconButton(
                            icon:
                            const Icon(Icons.keyboard_arrow_down_sharp),
                            //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return _MyDialog(
                                        title: titlleex2,
                                        titlleex: selctedtitlleex2,
                                        cities: Job,
                                        selectedCities: selectedJob,
                                        onSelectedCitiesListChanged:
                                            (cities) {
                                          setState(() {
                                            selectedJob= cities;
                                          });

                                          //print(selectedExperince);
                                        });
                                  });
                            }),
                      ],
                    ),
                  ),


                  SizedBox(
                    height: 12,
                  ),
                  Text('Skills',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 5,
                  ),



                  Container(
                    width: 343,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(201, 223, 218, 1),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedSkills.isEmpty
                            ? const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Select All that Applies",
                              style: TextStyle(
                                color: Color.fromRGBO(83, 104, 101, 1),
                              ),
                            ))
                            : Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                              height: 20,
                              width: 250,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [

                                    for (var value
                                    in selectedSkills)
                                      Text("$value "),
                                  ])),
                        ),
                        IconButton(
                            icon:
                            const Icon(Icons.keyboard_arrow_down_sharp),
                            //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return _MyDialog(
                                        title: titlleex3,
                                        titlleex: selctedtitlleex3,
                                        cities: Skills,
                                        selectedCities: selectedSkills,
                                        onSelectedCitiesListChanged:
                                            (cities) {
                                          setState(() {
                                            selectedSkills = cities;
                                          });

                                          //print(selectedExperince);
                                        });
                                  });
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text('Preferred Industry Experience',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 5,
                  ),



                  Container(
                    width: 343,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(201, 223, 218, 1),
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.black87)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        selectedIndustry_Experience.isEmpty
                            ? const Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Select All that Applies",
                              style: TextStyle(
                                color: Color.fromRGBO(83, 104, 101, 1),
                              ),
                            ))
                            : Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SizedBox(
                              height: 20,
                              width: 250,
                              child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [

                                    for (var value
                                    in selectedIndustry_Experience)
                                      Text("$value "),
                                  ])),
                        ),
                        IconButton(
                            icon:
                            const Icon(Icons.keyboard_arrow_down_sharp),
                            //   child:Text("jj"),//selectedCities==null?"Modal Bottom Sheet":selectedCities.last),
                            onPressed: () async {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return _MyDialog(
                                        title: titlleex4,
                                        titlleex: selctedtitlleex4,
                                        cities: Industry_Experience,
                                        selectedCities: selectedIndustry_Experience,
                                        onSelectedCitiesListChanged:
                                            (cities) {
                                          setState(() {
                                            selectedIndustry_Experience = cities;
                                          });

                                          //print(selectedExperince);
                                        });
                                  });
                            }),
                      ],
                    ),
                  ),



                  SizedBox(
                    height: 12,
                  ),
                  Text('Job Description',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromRGBO(19, 22, 30, 1))),
                  SizedBox(
                    height: 6,
                  ),
                  // textAlign: TextAlign.center,
                  // decoration: new InputDecoration.collapsed(
                  //   hintText: " PASSWORD", ), )
                  SizedBox(
                    height: 85,
                    width: 343,
                    child: TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(

                        filled: true,
                        fillColor: Color.fromRGBO(201, 223, 218, 1),


                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(201, 223, 218, 1),
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          //         borderRadius: BorderRadius.circular(15.0),
                        ),
                        hintText: "Enter Job Description",
                        contentPadding: EdgeInsets.only(top:40,bottom:30,left:14),
                        // Update the state i.e. toogle the state of passwordVisible variable
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        width: 185,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                              // );
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  fontSize: 13,color: Color.fromRGBO(16, 95, 80, 1)
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromRGBO(237, 249, 246, 1),
                                minimumSize: const Size.fromHeight(30),
                                fixedSize: const Size(177, 36),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        ),
                      ),

                  Container(
                    height: 45,
                    width: 180,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const FlexOption()),
                          );
                        },
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(16, 95, 80, 1),
                            minimumSize: const Size.fromHeight(30),
                            fixedSize: const Size(177, 36),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),

                  // const SizedBox(height: 10,),
                  // const SizedBox(height: 10,),
                ],
              ),
            ),
          )),
    );
  }
}



class _MyDialog extends StatefulWidget {
  const _MyDialog({
    required this.cities,
    required this.selectedCities,
    required this.onSelectedCitiesListChanged,
    required this.title,
    required this.titlleex,
  });

  final List<String> cities;
  final String titlleex;
  final String title;
  final List<String> selectedCities;
  final ValueChanged<List<String>> onSelectedCitiesListChanged;

  @override
  _MyDialogState createState() => _MyDialogState();
}

class _MyDialogState extends State<_MyDialog> {
  List<String> _tempSelectedCities = [];
  String titlleName = "";

  @override
  void initState() {
    _tempSelectedCities = widget.selectedCities;
    // _temptitle=widget.titlleex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    titlleName = widget.title;
    return Dialog(
      child: Container(
        //height: 300,
        //width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Text(
              titlleName,
              style: const TextStyle(fontSize: 18.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),

            // color: Color(0xFFfab82b),

            ListView.builder(
                shrinkWrap: true,
                itemCount: widget.cities.length,
                itemBuilder: (BuildContext context, int index) {
                  final cityName = widget.cities[index];

                  // titlleName =titlleame;
                  return CheckboxListTile(
                      title: Text(cityName),
                      value: _tempSelectedCities.contains(cityName),
                      onChanged: (bool? value) {
                        if (value!) {
                          if (!_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.add(cityName);
                            });
                          }
                        } else {
                          if (_tempSelectedCities.contains(cityName)) {
                            setState(() {
                              _tempSelectedCities.removeWhere(
                                      (String city) => city == cityName);
                            });
                          }
                        }
                        widget.onSelectedCitiesListChanged(_tempSelectedCities);
                      });
                }),
          ],
        ),
      ),
    );
  }
}