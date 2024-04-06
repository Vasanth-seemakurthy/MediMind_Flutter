import 'package:flutter/material.dart';

class PatientUpcomingAppointmentWidget extends StatelessWidget {
  const PatientUpcomingAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xff31363F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/logos/doctor_avatar.png',
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. DoLittle',
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                    Text(
                      'Psychiatrist',
                      style:
                          TextStyle(color: Color.fromARGB(255, 207, 206, 206)),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.pin_drop_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Fortis Hospital',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.more_time,
                      color: Colors.white,
                    ),
                    SizedBox(width: 20),
                    Text(
                      '14:00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}