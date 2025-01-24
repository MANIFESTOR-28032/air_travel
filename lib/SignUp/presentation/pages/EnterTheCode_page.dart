import 'package:air_travel/SignUp/presentation/widgets/appBar_SignUp_widget.dart';
import 'package:air_travel/utils/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class EnterTheCode extends StatefulWidget {
  const EnterTheCode({super.key});

  @override
  State<EnterTheCode> createState() => _EnterTheCodeState();
}

class _EnterTheCodeState extends State<EnterTheCode> {
  final TextEditingController controller = TextEditingController();

  String text = "Sms kodni kiriting";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSignupWidget(
        text: "Kodni kiriting",
        address: '/enter_number',
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          spacing: 80,
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                color: AppColors.TextColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
            ),
            Pinput(
              controller: controller,
              obscureText: true,
              length: 4,
              defaultPinTheme: PinTheme(
                width: 83,
                height: 61,
                textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    width: 2,
                    color: Colors.grey.withValues(alpha: 0.4),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.GreenMain),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                fixedSize: MaterialStateProperty.all(
                  Size(380, 58),
                ),
              ),
              onPressed: () {
                if (controller.text == "0033") {
                  context.go("/data_entry");
                } else {
                  setState(() {});
                  text = "Kodni to'gri kiriting!";
                }
              },
              child: Text(
                "Tasdiqlash",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
