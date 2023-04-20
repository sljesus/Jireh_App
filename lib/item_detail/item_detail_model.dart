import '/auth/firebase_auth/auth_util.dart';
import '/auth/firebase_auth/firebase_user_provider.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ItemDetailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;
  FormFieldController<List<String>>? choiceChipsValueController2;
  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for InstruccionesCampo widget.
  TextEditingController? instruccionesCampoController;
  String? Function(BuildContext, String?)?
      instruccionesCampoControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectedItemsRecord? productoCreadoExiste;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  SelectedItemsRecord? productoCreado;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    instruccionesCampoController?.dispose();
  }

  /// Additional helper methods are added here.

}
