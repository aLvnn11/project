import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _showDropdown = false;
  String _dropdownValue = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SwitchListTile(
          title: const Text('Show Dropdown'),
          value: _showDropdown,
          onChanged: (value) {
            setState(() {
              _showDropdown = value;
            });
          },
        ),
        if (_showDropdown)
          DropdownButton(
            value: _dropdownValue,
            hint: const Text('Pilih Satu'),
            items: const [
              DropdownMenuItem(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              DropdownMenuItem(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
              DropdownMenuItem(
                value: 'Option 3',
                child: Text('Option 3'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _dropdownValue = value.toString();
              });
            },
          ),
      ],
    );
  }
}
