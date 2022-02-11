import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tayseer/home_page/home_page_widget.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';

class ViewAccidentsWidget extends StatefulWidget {
  const ViewAccidentsWidget({Key key}) : super(key: key);

  @override
  _ViewAccidentsWidgetState createState() => _ViewAccidentsWidgetState();
}

class _ViewAccidentsWidgetState extends State<ViewAccidentsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List accidents = [];
  var location;
  var time;
  var id;
@override
  void initState() {
   addtolist();
    super.initState();
  }

   void addtolist() async{

       int count = 0;
    var exists = await FirebaseFirestore.instance
        .collection('Accident').snapshots()
        .listen((event) {
      event.docs.forEach((element) async {
        setState(() {
          location = element.data()['Location'].toString();
          time = element.data()['Date_time'].toString();
          id = element.id.toString();
        });
String dtime = DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(DateTime.now());
String ddtime = DateFormat.Hms().format(DateTime.now());

  var value = {
          'location': 'اضغط هنا',
          'time': '${dtime}',
          'id': '${ddtime}',
         
        };

accidents.insert(count++, value);
   });
   
         } );
      

    

   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF85BBC2),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 130, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                color: Color(0xFFD8EBEE),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: accidentChild(accidents),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 60, 0, 0),
            child:   IconButton(
              icon : new Icon(Icons.chevron_left , size: 50,),
              color: Color(0xFF46494D),
              //size: 50,
              onPressed: () async =>  await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageWidget(),
                        ),
                        (r) => false,
  )
,  
            ),  
          ),
          Align(
            alignment: AlignmentDirectional(0, -0.82),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'البلاغات السابقة',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.title1.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF46494D),
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 Widget accidentChild(data) {
    return ListView(
      children: [

  
        for (var i = 0; i < data.length; i++)

        Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Container(
                      width: 360,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF85BBC2),
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                        
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: Text(
                                    ' الموقع : ${data[i]['location']} ',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    ' ${data[i]['time']} : التاريخ',
                                    textAlign: TextAlign.end,
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 0),
                                  child: Text(
                                    ' ${data[i]['id']} : الوقت',
                                    style: FlutterFlowTheme.bodyText1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                   FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'عرض التقرير',
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 40,
                                          color: Color(0xFF92D9E3),
                                          textStyle:
                                              FlutterFlowTheme.title1.override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius: 12,
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              
      ],
    );
  }