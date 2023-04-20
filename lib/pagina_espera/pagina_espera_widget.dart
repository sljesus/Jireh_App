import '/auth/firebase_auth/auth_util.dart';
import '/auth/firebase_auth/firebase_user_provider.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pagina_espera_model.dart';
export 'pagina_espera_model.dart';

class PaginaEsperaWidget extends StatefulWidget {
  const PaginaEsperaWidget({Key? key}) : super(key: key);

  @override
  _PaginaEsperaWidgetState createState() => _PaginaEsperaWidgetState();
}

class _PaginaEsperaWidgetState extends State<PaginaEsperaWidget> {
  late PaginaEsperaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaginaEsperaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn) {
        if (valueOrDefault<bool>(currentUserDocument?.primerInicio, false)) {
          context.goNamed('CompleteProfile');
        } else {
          context.goNamed('Menu');
        }
      } else {
        context.goNamed('Login');
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
