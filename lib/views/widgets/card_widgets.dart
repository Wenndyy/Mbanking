import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      width: double.infinity,
      height: 180, // Adjusted height to 180
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
        color: Colors.deepPurpleAccent,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8,
          ),
          Text(
            'Visa',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 26,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const Text(
            '1234 4321 5678 8765',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  'Wendy Noer Isnaeni',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                '10/33',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
