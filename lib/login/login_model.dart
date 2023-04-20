import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEmailAddress widget.
  TextEditingController? textFieldEmailAddressController;
  String? Function(BuildContext, String?)?
      textFieldEmailAddressControllerValidator;
  // State field(s) for TextFieldPassword widget.
  TextEditingController? textFieldPasswordController;
  late bool textFieldPasswordVisibility;
  String? Function(BuildContext, String?)? textFieldPasswordControllerValidator;
  // State field(s) for emailAddress-Create widget.
  TextEditingController? emailAddressCreateController;
  String? Function(BuildContext, String?)?
      emailAddressCreateControllerValidator;
  // State field(s) for password-Create widget.
  TextEditingController? passwordCreateController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)? passwordCreateControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldPasswordVisibility = false;
    passwordCreateVisibility = false;
  }

  void dispose() {
    textFieldEmailAddressController?.dispose();
    textFieldPasswordController?.dispose();
    emailAddressCreateController?.dispose();
    passwordCreateController?.dispose();
  }

  /// Additional helper methods are added here.

}
