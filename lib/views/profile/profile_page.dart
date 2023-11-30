import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dicoding/views/login/login_page.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  const ProfilePage({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      color: Colors.deepPurpleAccent,
                    ),
                    child: const Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(username),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 30,
                                  color: Colors.deepPurpleAccent,
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text('Atur Kartu Debit'),
                              ],
                            ),
                            Icon(Icons.arrow_right_outlined),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offAll(const LoginPage());
                        },
                        child: const SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.logout,
                                    size: 30,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text('Sign Out'),
                                ],
                              ),
                              Icon(Icons.arrow_right_outlined),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
