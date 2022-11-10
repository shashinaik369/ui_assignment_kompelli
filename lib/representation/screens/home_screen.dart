// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui_assignment_kompelli/constants.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 230, 228, 228),
      appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 20),
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 0.1,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: darkGreen,
                    width: 1.0,
                  ))),
                  child: Text(
                    'Plan My Event',
                    style: TextStyle(
                        color: darkGreen,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ),
              ),
              ReUseContainer(
                widget: Row(
                  children: [
                    CustomCoulmn(
                      title: 'Event Date',
                      icon: Icons.calendar_month,
                      hintText: 'DD/MM/YYYY',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCoulmn(
                      title: 'Event Name',
                      icon: Icons.expand_more_rounded,
                      hintText: 'Select Event Name',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              ReUseContainer(
                widget: Row(
                  children: [
                    CustomCoulmn(
                      title: 'My Budget',
                      hintText: '500000',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCoulmn(
                      title: 'Balance',
                      hintText: '+350000.00',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              ReUseDropDownContainer(
                isExpanded: false,
                title: 'Tasks',
                sideTitle: 'Add Task',
                widget: Row(
                  children: [
                    CustomCoulmn(
                      title: 'Service',
                      hintText: 'Decorator',
                      icon: Icons.expand_more,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CustomCoulmn(
                      title: 'Budget',
                      hintText: 'Ex: 100000',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              ReUseDropDownContainer(
                isExpanded: false,
                title: 'Vendors',
                sideTitle: 'Add Vendor',
                widget: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        CustomCoulmn(
                          title: 'Location',
                          hintText: 'Select Location',
                          icon: Icons.expand_more,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomCoulmn(
                          title: 'Service',
                          hintText: 'Select Service',
                          icon: Icons.expand_more,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    SizedBox(
                      // height: 70,
                      child: CustomCoulmn(
                        title: 'Vendors',
                        hintText: 'Select Vendors',
                        icon: Icons.expand_more,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),
              YesOrNoCard(
                title: 'Design Your Invitaion',
              ),
              SizedBox(
                height: 14,
              ),
              YesOrNoCard(
                title: 'Send WhatsApp Invitation',
              ),
              SizedBox(
                height: 14,
              ),
              List(),
              SizedBox(
                height: 10,
              ),
              SaveButton(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      elevation: 5,
      backgroundColor: Colors.white,
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      title: const Text(
        'Switch To',
        style: TextStyle(color: Colors.grey),
      ),
      centerTitle: true,
      actions: const [
        Icon(
          Icons.home,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}

class List extends StatelessWidget {
  const List({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReUseContainer(
        widget: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Manage Your Guests List',
          style: headingText,
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SmallContainer(
              color: backGroundColor,
              widget: Text(
                'Import Contacts',
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            SmallContainer(
              color: darkGreen,
              widget: Text(
                'Export',
                style: TextStyle(fontSize: 13, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 7,
            ),
            SmallContainer(
              color: Colors.pink,
              widget: Icon(
                Icons.share,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Divider(
          thickness: 1,
        ),
        Column(
          children: [
            Row(
              children: [
                Text(
                  'Guest Name',
                  style: headingText,
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Phone Number',
                  style: headingText,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Status',
                  style: headingText,
                ),
              ],
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Text('Guest Name 1'),
                        SizedBox(
                          width: 55,
                        ),
                        Text('+911234567899'),
                        SizedBox(
                          width: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SmallContainer(
                            color: backGroundColor,
                            widget: Text(
                              'Confirm',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ],
    ));
  }
}

class SaveButton extends StatelessWidget {
  SaveButton({
    Key? key,
  }) : super(key: key);

  bool isSaved = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          
        },
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            decoration: BoxDecoration(
                color: darkGreen, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                'SAVE',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )));
  }
}

class SmallContainer extends StatelessWidget {
  Color color;
  Widget widget;
  SmallContainer({Key? key, required this.color, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(3)),
      child: widget,
    );
  }
}

class YesOrNoCard extends StatefulWidget {
  String title;
  YesOrNoCard({Key? key, required this.title}) : super(key: key);

  @override
  State<YesOrNoCard> createState() => _YesOrNoCardState();
}

class _YesOrNoCardState extends State<YesOrNoCard> {
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return ReUseContainer(
        widget: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
        ),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                if (isClicked == false) {
                  setState(() {
                    isClicked = true;
                  });
                }
              },
              child: YesOrNo(
                text: 'Yes',
                backGroundColor: isClicked ? darkGreen : Colors.white,
                textColor: isClicked ? Colors.white : darkGreen,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () {
                if (isClicked == true) {
                  setState(() {
                    isClicked = false;
                  });
                }
              },
              child: YesOrNo(
                text: 'No',
                backGroundColor: isClicked ? Colors.white : darkGreen,
                textColor: isClicked ? darkGreen : Colors.white,
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class YesOrNo extends StatelessWidget {
  String text;
  Color backGroundColor;
  Color textColor;
  YesOrNo(
      {Key? key,
      required this.backGroundColor,
      required this.text,
      required this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
      decoration: BoxDecoration(
          color: backGroundColor,
          border: Border.all(color: darkGreen, width: 1),
          borderRadius: BorderRadius.circular(4)),
      child: Text(
        text,
        style: TextStyle(
            color: textColor, fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}

class ReUseDropDownContainer extends StatefulWidget {
  Widget widget;
  bool isExpanded;
  String title;
  String sideTitle;

  ReUseDropDownContainer(
      {Key? key,
      required this.widget,
      required this.isExpanded,
      required this.title,
      required this.sideTitle})
      : super(key: key);

  @override
  State<ReUseDropDownContainer> createState() => _ReUseDropDownContainerState();
}

class _ReUseDropDownContainerState extends State<ReUseDropDownContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(3)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    widget.title,
                    style: headingText,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          widget.isExpanded = !widget.isExpanded;
                        });
                      },
                      icon: widget.isExpanded
                          ? Icon(Icons.expand_less)
                          : Icon(Icons.expand_more))
                ],
              ),
              Container(
                padding: EdgeInsets.only(
                  bottom: 0.1,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: darkGreen,
                  width: 1.0,
                ))),
                child: Text(
                  widget.sideTitle,
                  style:
                      TextStyle(color: darkGreen, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          widget.isExpanded
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    widget.widget,
                    SizedBox(
                      height: 12,
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                                color: darkGreen,
                                borderRadius: BorderRadius.circular(14)),
                            child: Text(
                              'ADD',
                              style: TextStyle(color: Colors.white),
                            ))),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}

class ReUseContainer extends StatelessWidget {
  Widget widget;
  ReUseContainer({Key? key, required this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(3)),
        child: widget);
  }
}

class CustomCoulmn extends StatelessWidget {
  String title;
  String hintText;
  IconData? icon;

  CustomCoulmn(
      {Key? key, required this.title, required this.hintText, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: backGroundColor, borderRadius: BorderRadius.circular(3)),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle:
                            TextStyle(color: hintTextColor, fontSize: 13),
                        hintText: hintText,
                        border: InputBorder.none),
                  ),
                ),
                Icon(
                  icon,
                  color: iconColor,
                  size: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
