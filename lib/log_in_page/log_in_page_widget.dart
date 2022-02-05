import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tayseer/Tracking/Tracking.dart';

import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogInPageWidget extends StatefulWidget {
  const LogInPageWidget({Key key}) : super(key: key);

  @override
  _LogInPageWidgetState createState() => _LogInPageWidgetState();
}

class _LogInPageWidgetState extends State<LogInPageWidget> {
  TextEditingController emailTextController;
  TextEditingController passwordTextController;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
    passwordTextController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF85BBC2),
        body: Padding(
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Image.asset(
                    'assets/images/WhatsApp_Image_2022-01-24_at_5.31.50_PM.jpeg',
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(195, 30, 0, 0),
                  child: Text(
                    '*رقم الهوية/الإقامة',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: emailTextController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFFA6C9CF),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                    ),
                    textAlign: TextAlign.center,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'الرجاء  ادخال رقم الهويه/الإقامة';
                      }
                      if (val.length < 10) {
                        return 'الرجاء  ادخال رقم صحيح';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(250, 30, 0, 0),
                  child: Text(
                    '*كلمة السر',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                  child: TextFormField(
                    controller: passwordTextController,
                    obscureText: !passwordVisibility,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 10,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Color(0xFFA6C9CF),
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => passwordVisibility = !passwordVisibility,
                        ),
                        child: Icon(
                          passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Color(0xFF757575),
                          size: 22,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Noto Sans',
                    ),
                    textAlign: TextAlign.end,
                    validator: (val) {
                      if (val.isEmpty) {
                        return 'الرجاء  ادخال كلمة السر';
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (!formKey.currentState.validate()) {
                        return;
                      }
                      final String Driver_ID = emailTextController.text;

                      QuerySnapshot snap = await FirebaseFirestore.instance
                          .collection("Car_driver")
                          .where("Driver_ID", isEqualTo: Driver_ID)
                          .get();
                      final user = await signInWithEmail(
                        context,
                        snap.docs[0]['email'],
                        passwordTextController.text,
                      );
                      if (user == null) {
                        // print("رقم الهوية/الإقامة او كلمة السر غير صحيحه");

                        return;
                      }

                      await Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePageWidget(),
                        ),
                        (r) => false,
                      );
                    },
                    text: 'تسجيل الدخول',
                    options: FFButtonOptions(
                      width: 200,
                      height: 50,
                      color: Color(0xFF85BBC2),
                      textStyle: FlutterFlowTheme.subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
