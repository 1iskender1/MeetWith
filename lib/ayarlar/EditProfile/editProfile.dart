// ignore_for_file: file_names

import 'package:flutter/material.dart';






class editProfile extends StatefulWidget {
  const editProfile({Key? key, required TextStyle style, required String title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  bool agree= false;
  bool _isObscure = true;

  final _text = TextEditingController();
  bool _validate = false;

  final _textmail = TextEditingController();
  bool _validate2 = false;

  final _textsifre = TextEditingController();
  bool _validate3 = false;

  final _textsifretekrar = TextEditingController();
  bool _validate4 = false;

  final _texthakkimda = TextEditingController();
  bool _validate5 = false;


  @override
  void dispose() {
    _text.dispose();
    super.dispose();
    _textmail.dispose();
    super.dispose();
    _textsifre.dispose();
    super.dispose();
    _textsifretekrar.dispose();
    super.dispose();
    _texthakkimda.dispose();
    super.dispose();
  }

  List<String> _selectedItems = [];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> _items = [
      'Dans',
      'Müzik',
      'Spor',
      'Doğa',
      'Sanat',
      'Kitap'
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: _items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 240, 1),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBar(
            elevation: 0,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/meetwithboth.jpeg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
          )
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 4,
                        color: Theme.of(context).scaffoldBackgroundColor),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0, 10))
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://lh3.googleusercontent.com/-b2WLeb7F76o/YIQ865wGzrI/AAAAAAAACtU/iaCdpC8ThC0T337vjKv_WKIxyui1HeOjwCLcBGAsYHQ/default_profile_400x400.png",
                        ))),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50, right: 50, top: 5, bottom: 5),
            child: TextField(
              controller: _text,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  errorText: _validate ? 'Ad soyadı boş bırakılamaz' : null,
                  labelText: "Ad soyadı",
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Lütfen adınızı ve soyadınızı yazın",
                  filled: true,
                  fillColor: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50, right: 50, top: 5, bottom: 5),
            child: TextField(
              controller: _textmail,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  errorText: _validate2 ? 'Mail adresi boş bırakılamaz' : null,
                  labelText: "Email adresi",
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Lütfen mail adresinizi yazın",
                  filled: true,
                  fillColor: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50, right: 50, top: 5, bottom: 5),
            child: TextField(
              controller: _textsifre,
              obscureText: _isObscure,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  errorText: _validate3 ? 'Şifre boş bırakılamaz' : null,
                  labelText: "Şifreyi değiştir",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      }); }, ),
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Lütfen yeni bir şifre oluşturun",
                  filled: true,
                  fillColor: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50, right: 50, top: 5, bottom: 5),
            child: TextField(
              controller: _textsifretekrar,
              obscureText: _isObscure,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  errorText: _validate4 ? 'Lütfen şifrenizi tekrar girin' : null,
                  labelText: "Şifre onay",
                  suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                        color: Colors.black),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      }); }, ),
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Lütfen şifrenizi tekrar girin",
                  filled: true,
                  fillColor: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 50, right: 50, top: 5),
            child: TextField(
              controller: _texthakkimda,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  errorText: _validate5 ? 'Lütfen kısaca kendinizi tanıtın' : null,
                  labelText: "Hakkımda",
                  labelStyle: TextStyle(color: Colors.black),
                  hintText: "Lütfen kısaca kendinizi tanıtın",
                  filled: true,
                  fillColor: Colors.white
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // use this button to open the multi-select dialog
                ElevatedButton(
                  child: Text(
                    'İlgi alanları',
                    style: TextStyle(color: Colors.black),),
                  onPressed: _showMultiSelect,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.only(left: 120, right: 120, top: 5),
                    side: BorderSide(width: 1.0, color:Colors.grey),
                    shape: RoundedRectangleBorder( //to set border radius to button
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 10,
                ),
                // display selected items
                Wrap(
                  children: _selectedItems
                      .map((e) => Chip(
                    label: Text(e),
                  ))
                      .toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: RaisedButton(
              color: Color(0xA8A8CD4C),
              highlightColor: Colors.grey,
              elevation: 10,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Bilgilerimi güncelle",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _text.text.isEmpty ? _validate = true : _validate = false;
                  _textmail.text.isEmpty ? _validate2 = true : _validate = false;
                  _textsifre.text.isEmpty ? _validate3 = true : _validate = false;
                  _textsifretekrar.text.isEmpty ? _validate4 = true : _validate = false;
                  _texthakkimda.text.isEmpty ? _validate5 = true : _validate = false;
                });
                print("Bilgiler kaydedildi.");
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({Key? key, required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  // this variable holds the selected items
  final List<String> _selectedItems = [];

// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('İlgi alanlarınızı seçiniz'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
            value: _selectedItems.contains(item),
            title: Text(item),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (isChecked) => _itemChange(item, isChecked!),
          ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('İptal'),
          onPressed: _cancel,
        ),
        ElevatedButton(
          child: const Text('Kaydet'),
          onPressed: _submit,
        ),
      ],
    );
  }
}

