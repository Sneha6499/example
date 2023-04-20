import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project134/review.dart';

class Compensation extends StatefulWidget {
  const Compensation({Key? key}) : super(key: key);

  @override
  State<Compensation> createState() => _CompensationState();
}

class _CompensationState extends State<Compensation> {
  String? gender;

  final TextEditingController _controller = new TextEditingController();
  var items = ['One', 'Two', 'Three', 'Four'];

  String radioButtonItem = 'ONE';
  TextEditingController dateinput = TextEditingController();
 final _amount = TextEditingController();

  // Group Value for Radio Button.
  int id = 1;
  int num = 1;

  @override
  void initstate() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16),
      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                  Widget>[
            SizedBox(
              height: 70,
            ),
                Row(
                  children: [
                    Text('Compensation',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    SizedBox(
                      width: 150,
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
                          color: Colors.blue,
                        ),

                      ),
                    ),
                  ],
                ),

            SizedBox(height: 12),
            Text('Expected joining date',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(19, 22, 30, 1))),
            SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 45,
              width: 343,
              child: TextFormField(
                controller: dateinput,
                decoration: InputDecoration(
                  //icon of text field
                  //   labelText: "Enter Date"
                  filled: true,
                  fillColor: Color.fromRGBO(201, 223, 218, 1),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(201, 223, 218, 1),
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                    //         borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "select",
                  suffixIcon: Icon(Icons.calendar_today),
                  // Update the state i.e. toogle the state of passwordVisible variable
                ),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      //DateTime.now() - not to allow to choose before today.
                      lastDate: DateTime(2101));

                  if (pickedDate != null) {
                    print(
                        pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                    String formattedDate =
                        DateFormat('yyyy-MM-dd').format(pickedDate);
                    print(
                        formattedDate); //formatted date output using intl package =>  2021-03-16
                    //you can implement different kind of Date Format here according to your requirement

                    setState(() {
                      dateinput.text =
                          formattedDate; //set output date to TextField value.
                    });
                  } else {
                    print("Date is not selected");
                  }
                },
              ),
            ),
            SizedBox(
              height: 9,
            ),
            Text('Payment Option',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Color.fromRGBO(19, 22, 30, 1))),
            SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 45,
              width: 343,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  suffixIcon: PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items.map<PopupMenuItem<String>>((String value) {
                        return new PopupMenuItem(
                            child: new Text(value), value: value);
                      }).toList();
                    },
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(201, 223, 218, 1),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(201, 223, 218, 1),
                    ),
                    borderRadius: BorderRadius.circular(15.0),

                    //         borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "Annual Pay",

                  // Update the state i.e. toogle the state of passwordVisible variable
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
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
                  hintText: "Currency",
                  // Update the state i.e. toogle the state of passwordVisible variable
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 45,
              width: 343,
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  suffixIcon: PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items.map<PopupMenuItem<String>>((String value) {
                        return new PopupMenuItem(
                            child: new Text(value), value: value);
                      }).toList();
                    },
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(201, 223, 218, 1),

                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(201, 223, 218, 1),
                    ),
                    borderRadius: BorderRadius.circular(15.0),

                    //         borderRadius: BorderRadius.circular(15.0),
                  ),
                  hintText: "Select Category",

                  // Update the state i.e. toogle the state of passwordVisible variable
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  height: 45,
                  width: 160,
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
                      hintText: "Amount",
                      // Update the state i.e. toogle the state of passwordVisible variable
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("-"),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 45,
                  width: 160,
                  child: TextFormField(
                    controller: _amount,

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
                      hintText: "Amount",
                      // Update the state i.e. toogle the state of passwordVisible variable
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => const ThirdPage()),
                            // );
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(16, 95, 80, 1)),
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
                      width: 175,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Review(joblocation: joblocation, amount: _amount.text, jobtype: jobtype, experience: experience, expertise: expertise, jobfunction: jobfunction, skills: skills, industry: industry)),
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
                              // fixedSize: const Size(177, 36),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
          ]),
        )
      ]),
    )));
  }
}
