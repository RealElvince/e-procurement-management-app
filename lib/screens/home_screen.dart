import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tender_app/components/drawer.dart';
import 'package:tender_app/components/tender_details.dart';
import 'package:tender_app/components/tender_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
              height: 800,
              width: double.infinity,
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Dear tenderer,You can view complete details of Tenders and Notices of today or any other day here!',
                    style: GoogleFonts.aBeeZee(color: Colors.black),
                  ),
                  const SizedBox(height: 20.0),
                  const Divider(
                    height: 3,
                    thickness: 3,
                    color: Colors.black,
                    indent: 25,
                    endIndent: 25,
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Notice List',
                          style: GoogleFonts.aBeeZee(color: Colors.black),
                        ),
                        Text(
                          'See all',
                          style: GoogleFonts.aBeeZee(color: Colors.green),
                        ),
                      ]),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TenderDetailContainer(
                                    ocidDetail: 'ocds-5whusi-1240676-2022/2023',
                                    financialYear: '2022-2023',
                                    tenderCategory: 'Works',
                                    tenderFee: '0 KES',
                                    tenderStatus: 'planning',
                                    publishedDate: 'April 19, 2023',
                                    closingDate: 'April 24,2023',
                                    closinTime: '10.00 AM',
                                    openingVenue: '	KATC',
                                    peDetail: 'Procurement Entity:KISII',
                                    submissionMethod: 'Electronic submission',
                                    procurementMethod: 'Open Tender',
                                  )),
                        );
                      });
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(13)),
                        child: TenderListTile(
                          tenderTitle:
                              'SUPPLY AND INSTALLATION OF CCTV SURVEILLANCE AT SELECTED SERVICE POINTS',
                          tenderNO: '1240676-2022/2023',
                          onTap: () {
                            //  setState(() {
                            //            Navigator.push(
                            //     context,
                            //     MaterialPageRoute(builder: (context)=>TenderDetailsContainer())
                            //   );
                            // });
                          },
                        )),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TenderDetailContainer(
                                    ocidDetail: 'ocds-5whusi-1247047-2022/2023',
                                    financialYear: '2022-2023',
                                    tenderCategory: 'Works',
                                    tenderFee: '0 KES',
                                    tenderStatus: 'planning',
                                    publishedDate: 'April 22, 2023',
                                    closingDate: 'May 1,2023',
                                    closinTime: '10:00 AM',
                                    openingVenue: ' Kitale Yard (Fire Station)',
                                    peDetail: 'Procurement Entity:KITALE',
                                    submissionMethod: 'Electronic submission',
                                    procurementMethod: 'Open Tender',
                                  )),
                        );
                      });
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(13)),
                        child: TenderListTile(
                          tenderTitle:
                              'PROPOSED CULVERT INSTALLATION IN SITATUNGA WARD',
                          tenderNO: '1247047-2022/2023',
                          onTap: () {
                            //  setState(() {
                            //       Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context)=>TenderDetailsContainer())
                            //     );
                            // });
                          },
                        )),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TenderDetailContainer(
                                  ocidDetail: 'ocds-5whusi-1241530-2022/2023',
                                  financialYear: '2022-2023',
                                  tenderCategory: 'Goods',
                                  tenderFee: '0 KES',
                                  tenderStatus: 'planning',
                                  publishedDate: 'April 19, 2023',
                                  closingDate: 'April 24,2023',
                                  closinTime: '10.00 AM',
                                  openingVenue: 'TUK',
                                  peDetail: 'Procurement Entity:KISII',
                                  submissionMethod: 'Electronic submission',
                                  procurementMethod: 'Open Tender')),
                        );
                      });
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(13)),
                        child: TenderListTile(
                          tenderTitle:
                              'PURCHASE OF COMPUTER ACCESSORIES AND REPAIR OF IT END USER EQUIPMENT',
                          tenderNO: '1241530-2022/2023',
                          onTap: () {
                            //       setState(() {
                            //           Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context)=>TenderDetailsContainer())
                            //     );
                            // });
                          },
                        )),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TenderDetailContainer(
                                ocidDetail: '	ocds-5whusi-TUK/T/03/2023/2024',
                                financialYear: '2023-2024',
                                tenderCategory: 'Goods',
                                tenderFee: '0 KES',
                                tenderStatus: 'planning',
                                publishedDate: 'April 20, 2023',
                                closingDate: 'May 3,2023',
                                closinTime: '10:00 AM',
                                openingVenue: 'Admin Block 1st Floor',
                                peDetail: 'Procurement Entity:TUK',
                                submissionMethod:
                                    '	Written (Physical/Hard Copy)',
                                procurementMethod: 'Open Tender')),
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(13)),
                        child: TenderListTile(
                          tenderTitle:
                              'TENDER FOR SUPPLY OF GENERAL OFFICE STATIONERIES',
                          tenderNO: 'TUK/T/03/2023/2024',
                          onTap: () {
                            //  setState(() {
                            //          Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context)=>TenderDetailsContainer())
                            //     );
                            // });
                          },
                        )),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TenderDetailContainer(
                                ocidDetail: 'ocds-5whusi-HBCA/PR/W3/2022-2023',
                                financialYear: '2022-2023',
                                tenderCategory: 'Works',
                                tenderFee: '0 KES',
                                tenderStatus: 'planning',
                                publishedDate: 'April 20, 2023',
                                closingDate: 'May 3,2023',
                                closinTime: '11:00 AM',
                                openingVenue: '	Homabay County Assembly',
                                peDetail:
                                    'Procurement Entity:Homabay County Assembly',
                                submissionMethod:
                                    '	Written (Physical/Hard Copy)',
                                procurementMethod: 'Open Tender ')),
                      );
                    },
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(10),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey[900],
                            borderRadius: BorderRadius.circular(13)),
                        child: TenderListTile(
                          tenderTitle:
                              'PROPOSED RENOVATION WORKS AT HOMABAY COUNTY ASSEMBLY.',
                          tenderNO: 'HBCA/PR/W3/2022-2023',
                          onTap: () {
                            //   setState(() {
                            //            Navigator.push(
                            //       context,
                            //       MaterialPageRoute(builder: (context)=>TenderDetailsContainer())
                            //     );
                            //  });
                          },
                        )),
                  ),
                ],
              )),
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
