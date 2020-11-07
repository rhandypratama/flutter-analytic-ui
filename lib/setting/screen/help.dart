import 'package:analytic/utils/custom-search-field.dart';
import 'package:flutter/material.dart';
import 'package:analytic/utils/constant.dart';
import 'package:analytic/utils/widget-model.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  bool swVal = true;
  List<Item> _data = generateItems(8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomSearchField(
                  label: "Search everything and anywhere", 
                  prefixIcon: Icons.search,
                  suffixIcon: Icons.mic_none_outlined,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: _buildPanel(),
              )
            ],
          ),
        ),
      ),
      
    );
  }

  Widget _buildPanel() {
    return defaultCard(
      ExpansionPanelList.radio(
        elevation: 0,
        // initialOpenPanelValue: 2,
        children: _data.map<ExpansionPanelRadio>((Item item) {
          return ExpansionPanelRadio(
            value: item.id,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Row(
                  children: [
                    Icon(Icons.library_books, color: kLightBlue, size: 18),
                    SizedBox(width: 8),
                    dynamicText(item.headerValue, fontSize: 14, fontWeight: FontWeight.w600)

                  ]
                ),
              );
            },
            body: ListTile(
                title: dynamicText(item.expandedValue),
                subtitle: dynamicText('To delete this panel, tap the trash can icon', fontSize: 12),
                trailing: Icon(Icons.delete_outline_outlined, color: Colors.red),
                onTap: () {
                  setState(() {
                    _data.removeWhere((currentItem) => item == currentItem);
                  });
                }));
        }).toList(),
      ),
    );
  }
}

class Item {
  Item({
    this.id,
    this.expandedValue,
    this.headerValue,
  });

  int id;
  String expandedValue;
  String headerValue;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      id: index,
      headerValue: 'Lorem Ipsum $index',
      expandedValue: 'Lorem ipsum dynamic list $index',
    );
  });
}
