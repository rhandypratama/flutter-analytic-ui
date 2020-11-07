import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/widget-model.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final items = List<String>.generate(15, (i) => "Lorem ipsum ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Container(
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 4,
            automaticallyImplyLeading: false,
            leadingWidth: 44,
            leading: Padding(
              padding: const EdgeInsets.only(left: 14.0, top: 10.0),
              child: GestureDetector(
                child: Icon(Icons.arrow_back_ios_outlined, color: Colors.black45, size: 26),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  dynamicText("Notification", fontWeight: FontWeight.w600),
                  dynamicText("Data all of your notifications", fontSize: 12, color: Colors.black45),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 10, top: 10),
                child: GestureDetector(
                  child: Icon(Icons.delete_outlined, color: Colors.black45, size: 30,),
                  onTap: () {
                    
                  },
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        color: kWhite,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              // Specify the direction to swipe and delete
              direction: DismissDirection.endToStart,
              key: Key(item),
              onDismissed: (direction) {
                // Removes that item the list on swipwe
                setState(() {
                  items.removeAt(index);
                });
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text("Notification $item deleted"),
                  action: SnackBarAction(
                    label: "UNDO",
                    onPressed: () {},
                  ),
                ));
              },
              background: Container(
                padding: EdgeInsets.only(right: 20),
                color: Colors.red,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.delete_outline_outlined, color: kWhite, size: 30,
                  ),
                ),
              ),
              child: defaultList(
                ListTile(  
                  dense: true,
                  leading: CircleAvatar(
                    backgroundColor: kLightBlue,
                    child: Icon(
                      Icons.mail_outline_sharp, color: kWhite, size: 20,
                    )
                  ),
                  contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  title: dynamicText('$item', fontSize: 14, fontWeight: FontWeight.w600),
                  subtitle: dynamicText('Lorem ipsum dolor ismet Lorem ipsum dolor ismet Lorem ipsum dolor ismet', fontSize: 12, color: Colors.black45),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}