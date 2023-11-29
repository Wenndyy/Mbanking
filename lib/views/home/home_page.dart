import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_dicoding/views/widgets/card_widgets.dart';

class HomePage extends StatelessWidget {
  final String username;
  final String password;
  const HomePage({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Selamat Datang!'),
                        Text(
                          username,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Decreased the height of CardWidget to 180
                const CardWidget(),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: const Icon(
                          Icons.wallet,
                          size: 26,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Your Balance'),
                          Text(
                            '\$10000000',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.money,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ),
                        const Text('Top Up'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.file_upload_outlined,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ),
                        const Text('Transfer'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.mobile_friendly_sharp,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ),
                        const Text('Withdraw'),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.more_horiz,
                                color: Colors.deepPurpleAccent,
                              ),
                            ],
                          ),
                        ),
                        const Text('More'),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'History Transaction',
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Nov 29, 2023',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.file_download_outlined,
                            size: 26,
                            color: Colors.deepPurpleAccent,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recive',
                                style: GoogleFonts.poppins(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Monthly salary',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        '+\$25000',
                        style: GoogleFonts.poppins(color: Colors.green),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.file_download_outlined,
                            size: 26,
                            color: Colors.deepPurpleAccent,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Transfer',
                                style: GoogleFonts.poppins(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'To Agung',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        '+\$25000',
                        style: GoogleFonts.poppins(color: Colors.red),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.file_download_outlined,
                            size: 26,
                            color: Colors.deepPurpleAccent,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Recive',
                                style: GoogleFonts.poppins(
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Monthly salary',
                                style: GoogleFonts.poppins(
                                  color: Colors.black54,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        '+\$25000',
                        style: GoogleFonts.poppins(color: Colors.green),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
