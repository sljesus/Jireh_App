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
import 'item_detail_model.dart';
export 'item_detail_model.dart';

class ItemDetailWidget extends StatefulWidget {
  const ItemDetailWidget({
    Key? key,
    this.itemParametro,
  }) : super(key: key);

  final ItemsRecord? itemParametro;

  @override
  _ItemDetailWidgetState createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  late ItemDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemDetailModel());

    _model.instruccionesCampoController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<CartRecord>>(
      stream: queryCartRecord(
        queryBuilder: (cartRecord) => cartRecord
            .where('creator', isEqualTo: currentUserReference)
            .where('isActive', isEqualTo: true),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        List<CartRecord> itemDetailCartRecordList = snapshot.data!;
        final itemDetailCartRecord = itemDetailCartRecordList.isNotEmpty
            ? itemDetailCartRecordList.first
            : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              actions: [],
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 40.0, 30.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                context.pop();
                              },
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Text(
                              widget.itemParametro!.name!,
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                background: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/Madera_.png',
                    fit: BoxFit.cover,
                  ),
                ),
                centerTitle: true,
                expandedTitleScale: 1.0,
              ),
              elevation: 2.0,
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 220.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFDBE2E7),
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          valueOrDefault<String>(
                                            widget.itemParametro!.image,
                                            'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
                                          ),
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 16.0, 24.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'DESCRIPCIÓN',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Text(
                                formatNumber(
                                  () {
                                    if ((_model.choiceChipsValue1 ==
                                            'Clásico') &&
                                        (_model.choiceChipsValue2 ==
                                            '250 ml')) {
                                      return widget.itemParametro!.price!;
                                    } else if ((_model.choiceChipsValue1 ==
                                            'Cremoso') &&
                                        (_model.choiceChipsValue2 ==
                                            '250 ml')) {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioCrema!);
                                    } else if ((_model.choiceChipsValue1 ==
                                            'Clásico') &&
                                        (_model.choiceChipsValue2 ==
                                            '500 ml')) {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioMedio!);
                                    } else if ((_model.choiceChipsValue1 ==
                                            'Cremoso') &&
                                        (_model.choiceChipsValue2 ==
                                            '500 ml')) {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioCrema! +
                                          widget.itemParametro!.precioMedio!);
                                    } else if ((_model.choiceChipsValue1 ==
                                            'Clásico') &&
                                        (_model.choiceChipsValue2 ==
                                            '1 Litro')) {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioLitro!);
                                    } else if ((_model.choiceChipsValue1 ==
                                            'Cremoso') &&
                                        (_model.choiceChipsValue2 ==
                                            '1 Litro')) {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioCrema! +
                                          widget.itemParametro!.precioLitro!);
                                    } else if (_model.choiceChipsValue2 ==
                                        '500 ml') {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioMedio!);
                                    } else if (_model.choiceChipsValue2 ==
                                        '1 Litro') {
                                      return (widget.itemParametro!.price! +
                                          widget.itemParametro!.precioLitro!);
                                    } else {
                                      return widget.itemParametro!.price!;
                                    }
                                  }(),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                  currency: '',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 4.0, 24.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  widget.itemParametro!.description!,
                                  textAlign: TextAlign.justify,
                                  maxLines: 6,
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (widget.itemParametro!.choice1 ?? true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 0.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowChoiceChips(
                                    options: [
                                      ChipData('Clásico'),
                                      ChipData('Cremoso')
                                    ],
                                    onChanged: (val) => setState(() =>
                                        _model.choiceChipsValue1 = val?.first),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      iconColor: Colors.white,
                                      iconSize: 18.0,
                                      elevation: 4.0,
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      iconColor: Color(0xFFE3E7ED),
                                      iconSize: 18.0,
                                      elevation: 8.0,
                                    ),
                                    chipSpacing: 20.0,
                                    multiselect: false,
                                    initialized:
                                        _model.choiceChipsValue1 != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController1 ??=
                                            FormFieldController<List<String>>(
                                      ['Clásico'],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        if (widget.itemParametro!.choice2 ?? true)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 16.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowChoiceChips(
                                    options: [
                                      ChipData('250 ml'),
                                      ChipData('500 ml'),
                                      ChipData('1 Litro')
                                    ],
                                    onChanged: (val) => setState(() =>
                                        _model.choiceChipsValue2 = val?.first),
                                    selectedChipStyle: ChipStyle(
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                          ),
                                      iconColor: Colors.white,
                                      iconSize: 18.0,
                                      elevation: 4.0,
                                    ),
                                    unselectedChipStyle: ChipStyle(
                                      backgroundColor: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                      iconColor: Color(0xFFE3E7ED),
                                      iconSize: 18.0,
                                      elevation: 8.0,
                                    ),
                                    chipSpacing: 20.0,
                                    multiselect: false,
                                    initialized:
                                        _model.choiceChipsValue2 != null,
                                    alignment: WrapAlignment.start,
                                    controller:
                                        _model.choiceChipsValueController2 ??=
                                            FormFieldController<List<String>>(
                                      ['250 ml'],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 16.0),
                          child: Container(
                            width: 160.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Color(0xFF9E9E9E),
                                width: 1.0,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? Color(0xDD000000)
                                    : Color(0xFFEEEEEE),
                                size: 20.0,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).primary
                                    : Color(0xFFEEEEEE),
                                size: 20.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              count: _model.countControllerValue ??= 1,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue = count),
                              stepSize: 1,
                              minimum: 1,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 16.0),
                          child: TextFormField(
                            controller: _model.instruccionesCampoController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Instrucciones Especiales ',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontSize: 14.0,
                                  ),
                              hintText:
                                  'Agrega una nota (salsa, sin cebolla, etc)',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).gray600,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).textColor,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 0.0, 24.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).gray600,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w300,
                                ),
                            validator: _model
                                .instruccionesCampoControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 18.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 5.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    formatNumber(
                                      functions.subtotalItem(
                                          _model.countControllerValue!, () {
                                        if ((_model.choiceChipsValue1 ==
                                                'Clásico') &&
                                            (_model.choiceChipsValue2 ==
                                                '250 ml')) {
                                          return widget.itemParametro!.price!;
                                        } else if ((_model.choiceChipsValue1 ==
                                                'Cremoso') &&
                                            (_model.choiceChipsValue2 ==
                                                '250 ml')) {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioCrema!);
                                        } else if ((_model.choiceChipsValue1 ==
                                                'Clásico') &&
                                            (_model.choiceChipsValue2 ==
                                                '500 ml')) {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioMedio!);
                                        } else if ((_model.choiceChipsValue1 ==
                                                'Cremoso') &&
                                            (_model.choiceChipsValue2 ==
                                                '500 ml')) {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioCrema! +
                                              widget
                                                  .itemParametro!.precioMedio!);
                                        } else if ((_model.choiceChipsValue1 ==
                                                'Clásico') &&
                                            (_model.choiceChipsValue2 ==
                                                '1 Litro')) {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioLitro!);
                                        } else if ((_model.choiceChipsValue1 ==
                                                'Cremoso') &&
                                            (_model.choiceChipsValue2 ==
                                                '1 Litro')) {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioCrema! +
                                              widget
                                                  .itemParametro!.precioLitro!);
                                        } else if (_model.choiceChipsValue2 ==
                                            '500 ml') {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioMedio!);
                                        } else if (_model.choiceChipsValue2 ==
                                            '1 Litro') {
                                          return (widget.itemParametro!.price! +
                                              widget
                                                  .itemParametro!.precioLitro!);
                                        } else {
                                          return widget.itemParametro!.price!;
                                        }
                                      }()),
                                      formatType: FormatType.decimal,
                                      decimalType: DecimalType.automatic,
                                      currency: '',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'subtotal',
                                  style: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .black600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              if (loggedIn) {
                                if (itemDetailCartRecord != null) {
                                  final selectedItemsCreateData1 =
                                      createSelectedItemsRecordData(
                                    name: widget.itemParametro!.name,
                                    item: widget.itemParametro!.reference,
                                    description:
                                        widget.itemParametro!.description,
                                    image: widget.itemParametro!.image,
                                    price: () {
                                      if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return widget.itemParametro!.price;
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '500 ml') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '1 Litro') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else {
                                        return widget.itemParametro!.price;
                                      }
                                    }(),
                                    subTotal: functions.subtotalItem(
                                        _model.countControllerValue!, () {
                                      if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return widget.itemParametro!.price!;
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '500 ml') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '1 Litro') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else {
                                        return widget.itemParametro!.price!;
                                      }
                                    }()),
                                    creator: currentUserReference,
                                    cantidad: _model.countControllerValue,
                                    instrucciones: _model
                                        .instruccionesCampoController.text,
                                  );
                                  var selectedItemsRecordReference1 =
                                      SelectedItemsRecord.collection.doc();
                                  await selectedItemsRecordReference1
                                      .set(selectedItemsCreateData1);
                                  _model.productoCreadoExiste =
                                      SelectedItemsRecord.getDocumentFromData(
                                          selectedItemsCreateData1,
                                          selectedItemsRecordReference1);

                                  final cartUpdateData = {
                                    'itemCount': FieldValue.increment(
                                        _model.countControllerValue!),
                                    'amount': FieldValue.increment(
                                        _model.productoCreadoExiste!.subTotal!),
                                    'selectedItems-List':
                                        FieldValue.arrayUnion([
                                      _model.productoCreadoExiste!.reference
                                    ]),
                                  };
                                  await itemDetailCartRecord!.reference
                                      .update(cartUpdateData);
                                } else {
                                  final selectedItemsCreateData2 =
                                      createSelectedItemsRecordData(
                                    name: widget.itemParametro!.name,
                                    item: widget.itemParametro!.reference,
                                    description:
                                        widget.itemParametro!.description,
                                    image: widget.itemParametro!.image,
                                    price: () {
                                      if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return widget.itemParametro!.price;
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '500 ml') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '1 Litro') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else {
                                        return widget.itemParametro!.price;
                                      }
                                    }(),
                                    subTotal: functions.subtotalItem(
                                        _model.countControllerValue!, () {
                                      if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return widget.itemParametro!.price!;
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '250 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '500 ml')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Clásico') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if ((_model.choiceChipsValue1 ==
                                              'Cremoso') &&
                                          (_model.choiceChipsValue2 ==
                                              '1 Litro')) {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioCrema! +
                                            widget.itemParametro!.precioLitro!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '500 ml') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioMedio!);
                                      } else if (_model.choiceChipsValue2 ==
                                          '1 Litro') {
                                        return (widget.itemParametro!.price! +
                                            widget.itemParametro!.precioLitro!);
                                      } else {
                                        return widget.itemParametro!.price!;
                                      }
                                    }()),
                                    creator: currentUserReference,
                                    cantidad: _model.countControllerValue,
                                    instrucciones: _model
                                        .instruccionesCampoController.text,
                                  );
                                  var selectedItemsRecordReference2 =
                                      SelectedItemsRecord.collection.doc();
                                  await selectedItemsRecordReference2
                                      .set(selectedItemsCreateData2);
                                  _model.productoCreado =
                                      SelectedItemsRecord.getDocumentFromData(
                                          selectedItemsCreateData2,
                                          selectedItemsRecordReference2);

                                  final cartCreateData = {
                                    ...createCartRecordData(
                                      creator: currentUserReference,
                                      itemCount: _model.countControllerValue,
                                      isActive: true,
                                      amount: valueOrDefault<double>(
                                        functions.subtotalItem(
                                            _model.countControllerValue!, () {
                                          if ((_model.choiceChipsValue1 ==
                                                  'Clásico') &&
                                              (_model.choiceChipsValue2 ==
                                                  '250 ml')) {
                                            return widget.itemParametro!.price!;
                                          } else if ((_model
                                                      .choiceChipsValue1 ==
                                                  'Cremoso') &&
                                              (_model.choiceChipsValue2 ==
                                                  '250 ml')) {
                                            return (widget
                                                    .itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioCrema!);
                                          } else if ((_model
                                                      .choiceChipsValue1 ==
                                                  'Clásico') &&
                                              (_model.choiceChipsValue2 ==
                                                  '500 ml')) {
                                            return (widget
                                                    .itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioMedio!);
                                          } else if ((_model
                                                      .choiceChipsValue1 ==
                                                  'Cremoso') &&
                                              (_model.choiceChipsValue2 ==
                                                  '500 ml')) {
                                            return (widget.itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioCrema! +
                                                widget.itemParametro!
                                                    .precioMedio!);
                                          } else if ((_model
                                                      .choiceChipsValue1 ==
                                                  'Clásico') &&
                                              (_model.choiceChipsValue2 ==
                                                  '1 Litro')) {
                                            return (widget
                                                    .itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioLitro!);
                                          } else if ((_model
                                                      .choiceChipsValue1 ==
                                                  'Cremoso') &&
                                              (_model.choiceChipsValue2 ==
                                                  '1 Litro')) {
                                            return (widget.itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioCrema! +
                                                widget.itemParametro!
                                                    .precioLitro!);
                                          } else if (_model.choiceChipsValue2 ==
                                              '500 ml') {
                                            return (widget
                                                    .itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioMedio!);
                                          } else if (_model.choiceChipsValue2 ==
                                              '1 Litro') {
                                            return (widget
                                                    .itemParametro!.price! +
                                                widget.itemParametro!
                                                    .precioLitro!);
                                          } else {
                                            return widget.itemParametro!.price!;
                                          }
                                        }()),
                                        0.0,
                                      ),
                                    ),
                                    'selectedItems-List': [
                                      _model.productoCreado!.reference
                                    ],
                                  };
                                  await CartRecord.collection
                                      .doc()
                                      .set(cartCreateData);
                                }

                                context.pop();
                              } else {
                                context.pushNamed('Login');
                              }

                              setState(() {});
                            },
                            text: loggedIn
                                ? 'Anadir a carrito'
                                : 'Iniciar Sesion',
                            options: FFButtonOptions(
                              width: 180.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: valueOrDefault<Color>(
                                !loggedIn
                                    ? Color(0xFFCE2626)
                                    : FlutterFlowTheme.of(context).primary,
                                FlutterFlowTheme.of(context).primary,
                              ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
