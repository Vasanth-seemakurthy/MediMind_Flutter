import 'package:flutter/material.dart';
import 'package:medimind_app/screens/doctor_or_patient/doctor_home_screen.dart';
import 'package:medimind_app/screens/doctor_or_patient/patient_home_screen.dart';
import 'package:medimind_app/widgets/interface_choice/interface_button.dart';

class InterfaceChoicePage extends StatefulWidget {
  const InterfaceChoicePage({super.key});

  @override
  State<InterfaceChoicePage> createState() => _InterfaceChoicePageState();
}

class _InterfaceChoicePageState extends State<InterfaceChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF8DC),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Choose Your Identity",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 40),
              InterfaceButton(
                labelText: "Patient",
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) {
                        return const PatientHomePage();
                      },
                    ),
                    (route) => false,
                  );
                },
              ),
              const SizedBox(height: 20),
              InterfaceButton(
                labelText: "Doctor",
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) {
                        return const DoctorHomePage();
                      },
                    ),
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}