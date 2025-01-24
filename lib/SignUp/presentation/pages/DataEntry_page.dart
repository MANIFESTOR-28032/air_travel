import 'package:air_travel/SignUp/presentation/widgets/TextField_widget.dart';
import 'package:air_travel/SignUp/presentation/widgets/appBar_SignUp_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DataEntryPage extends StatefulWidget {
  DataEntryPage({super.key});

  @override
  State<DataEntryPage> createState() => _DataEntryPageState();
}

class _DataEntryPageState extends State<DataEntryPage> {
  String? selected_region;
  final List<String> regions = [
    'Toshkent',
    'Andijon',
    'Farg‘ona',
    'Namangan',
    'Buxoro',
    'Samarqand',
    'Qashqadaryo',
    'Xorazm',
    'Navoiy',
    'Surxondaryo',
    'Jizzax',
    'Sirdaryo',
    'Qoraqalpog‘iston',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBarSignupWidget(
        text: "Ma'lumotlarni kiriting",
        address: '/enter_the_code',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              spacing: 24,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withValues(alpha: 0.2),
                    radius: 70,
                    child: Icon(
                      color: Colors.grey.withValues(alpha: 0.5),
                      Icons.person,
                      size: 50,
                    ),
                  ),
                ),
                TextFieldItem(text: 'Ismingiz'),
                TextFieldItem(text: 'Familyangiz'),
                TextFieldItem(text: '+998 33 033-51-33'),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xff0ffFAFAFA),
                  ),
                  child: DropdownMenu<String>(
                    width: double.infinity,
                    hintText: "Viloyatlar",
                    textStyle: TextStyle(
                      color: Colors.grey.withValues(alpha: 0.8),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    initialSelection: selected_region,
                    dropdownMenuEntries: regions.map((region) {
                      return DropdownMenuEntry(
                        value: region,
                        label: region,
                      );
                    }).toList(),
                    onSelected: (YangiTanlov) {
                      setState(() {
                        selected_region = YangiTanlov;
                      });
                    },
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.GreenMain),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(
                  Size(400, 58),
                ),
              ),
              child: Text(
                "Saqlash",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
