import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FaqSc extends StatelessWidget {
  List<String> items = ['16 Countries'];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text('FAQ',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 0, left: 0, top: 20.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: Row(
              children: [
                Expanded(
                  child: Text(
                    'Q1 : How many countries orange digital center is in ?',
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            items: items
                .map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: Center(
                        child: Text(
                          item,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (value) {
              /*  setState(() {
                                              selectedValue = value as String;
                                            });   */
            },
            icon: const Icon(
              Icons.keyboard_double_arrow_down,
            ),
            iconSize: 22,
            iconEnabledColor: Colors.black,
            iconDisabledColor: Colors.grey,
            buttonHeight: 80,
            buttonWidth: double.infinity,
            buttonPadding: const EdgeInsets.only(left: 10, right: 8),
            buttonDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: Colors.deepOrange,
              ),
              color: Colors.deepOrange,
            ),
            buttonElevation: 2,
            itemHeight: 40,
            dropdownMaxHeight: 200,
            dropdownWidth: 372,
            dropdownDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.black,
            ),
            dropdownElevation: 8,
            scrollbarRadius: const Radius.circular(40),
            scrollbarThickness: 6,
            scrollbarAlwaysShow: true,
            offset: const Offset(-20, 0),
          ),
        ),
      ),
    );
  }
}
