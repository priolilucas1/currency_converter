import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 64,
            child: DropdownButton(
              iconEnabledColor: Colors.amber,
              onChanged: (value) {},
              items: [
                DropdownMenuItem(
                  value: 'Real',
                  child: Text('Real'),
                ),
                DropdownMenuItem(
                  value: 'Dólar',
                  child: Text('Dólar'),
                ),
                DropdownMenuItem(
                  value: 'Euro',
                  child: Text('Euro'),
                ),
                DropdownMenuItem(
                  value: 'Bitcoin',
                  child: Text('Bitcoin'),
                ),
              ],
              isExpanded: true,
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        )
      ],
    );
  }
}
