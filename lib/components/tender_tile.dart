import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TenderListTile extends StatelessWidget {
  final String tenderTitle;
  final String tenderNO;
  final Function onTap;
  const TenderListTile(
      {super.key,
      required this.tenderNO,
      required this.tenderTitle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      textColor: Colors.white,
      title: Text(tenderTitle),
      subtitle:
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        const Text('Tender NO:'),
        Text(tenderNO),
      ]),
      trailing: GestureDetector(
        onTap: onTap(),
        child: Container(
            alignment: Alignment.center,
            height: 30,
            width: 70,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(8)),
            child: Text('View Details',
                style: GoogleFonts.aBeeZee(fontSize: 10.0))),
      ),
    );
  }
}
