import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
export 'cart_model.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({
    Key? key,
    this.percentPrices,
  }) : super(key: key);

  final PercentPricesRecord? percentPrices;

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  late CartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartModel());
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
        List<CartRecord> cartCartRecordList = snapshot.data!;
        final cartCartRecord =
            cartCartRecordList.isNotEmpty ? cartCartRecordList.first : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                              'Detalle de Orden',
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
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final itemsSeleccionados = cartCartRecord!
                                      .selectedItemsList!
                                      .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: itemsSeleccionados.length,
                                    itemBuilder:
                                        (context, itemsSeleccionadosIndex) {
                                      final itemsSeleccionadosItem =
                                          itemsSeleccionados[
                                              itemsSeleccionadosIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                StreamBuilder<
                                                    SelectedItemsRecord>(
                                                  stream: SelectedItemsRecord
                                                      .getDocument(
                                                          itemsSeleccionadosItem),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 50.0,
                                                          height: 50.0,
                                                          child:
                                                              CircularProgressIndicator(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final productContainerSelectedItemsRecord =
                                                        snapshot.data!;
                                                    return Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.95,
                                                      height: 115.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 4.0,
                                                            color: Color(
                                                                0x3A000000),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      productContainerSelectedItemsRecord
                                                                          .image,
                                                                      'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2940&q=80',
                                                                    ),
                                                                    width: 74.0,
                                                                    height:
                                                                        74.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Text(
                                                                          productContainerSelectedItemsRecord
                                                                              .name!,
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                      ),
                                                                      if (cartCartRecord!
                                                                              .itemCount! >
                                                                          1)
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Eliminar'),
                                                                                        content: Text('¿Desea eliminar este producto?'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                            child: Text('Cancelar'),
                                                                                          ),
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                            child: Text('Confirmar'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ) ??
                                                                                  false;
                                                                              if (confirmDialogResponse) {
                                                                                final cartUpdateData = {
                                                                                  'itemCount': FieldValue.increment(-(productContainerSelectedItemsRecord.cantidad!)),
                                                                                  'amount': FieldValue.increment(-(productContainerSelectedItemsRecord.subTotal!)),
                                                                                  'selectedItems-List': FieldValue.arrayRemove([
                                                                                    productContainerSelectedItemsRecord.reference
                                                                                  ]),
                                                                                };
                                                                                await cartCartRecord!.reference.update(cartUpdateData);
                                                                                await productContainerSelectedItemsRecord.reference.delete();
                                                                              }
                                                                            },
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.trashAlt,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      if (cartCartRecord!
                                                                              .itemCount ==
                                                                          1)
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              var confirmDialogResponse = await showDialog<bool>(
                                                                                    context: context,
                                                                                    builder: (alertDialogContext) {
                                                                                      return AlertDialog(
                                                                                        title: Text('Eliminar'),
                                                                                        content: Text('¿Desea eliminar este producto?'),
                                                                                        actions: [
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                            child: Text('Cancelar'),
                                                                                          ),
                                                                                          TextButton(
                                                                                            onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                            child: Text('Confirmar'),
                                                                                          ),
                                                                                        ],
                                                                                      );
                                                                                    },
                                                                                  ) ??
                                                                                  false;
                                                                              if (confirmDialogResponse) {
                                                                                context.goNamed('Menu');

                                                                                await cartCartRecord!.reference.delete();
                                                                              }
                                                                            },
                                                                            child:
                                                                                FaIcon(
                                                                              FontAwesomeIcons.trashAlt,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            16.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Text(
                                                                          productContainerSelectedItemsRecord
                                                                              .cantidad!
                                                                              .toString(),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
                                                                        ),
                                                                        Text(
                                                                          formatNumber(
                                                                            productContainerSelectedItemsRecord.subTotal!,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.automatic,
                                                                            currency:
                                                                                '',
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).titleMedium,
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
                                                    );
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              StyledDivider(
                height: 9.0,
                color: Color(0x0095A1AC),
                lineStyle: DividerLineStyle.dotted,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x3A000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Resumen',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Productos',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                Text(
                                  cartCartRecord!.itemCount!.toString(),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: StreamBuilder<List<PercentPricesRecord>>(
                              stream: queryPercentPricesRecord(
                                queryBuilder: (percentPricesRecord) =>
                                    percentPricesRecord.where('price_Name',
                                        isEqualTo: 'iva'),
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                  );
                                }
                                List<PercentPricesRecord>
                                    orderSubTotalPercentPricesRecordList =
                                    snapshot.data!;
                                // Return an empty Container when the item does not exist.
                                if (snapshot.data!.isEmpty) {
                                  return Container();
                                }
                                final orderSubTotalPercentPricesRecord =
                                    orderSubTotalPercentPricesRecordList
                                            .isNotEmpty
                                        ? orderSubTotalPercentPricesRecordList
                                            .first
                                        : null;
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Subtotal',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                    StreamBuilder<List<PercentPricesRecord>>(
                                      stream: queryPercentPricesRecord(
                                        queryBuilder: (percentPricesRecord) =>
                                            percentPricesRecord.where(
                                                'price_Name',
                                                isEqualTo: 'envio'),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                            ),
                                          );
                                        }
                                        List<PercentPricesRecord>
                                            textPercentPricesRecordList =
                                            snapshot.data!;
                                        // Return an empty Container when the item does not exist.
                                        if (snapshot.data!.isEmpty) {
                                          return Container();
                                        }
                                        final textPercentPricesRecord =
                                            textPercentPricesRecordList
                                                    .isNotEmpty
                                                ? textPercentPricesRecordList
                                                    .first
                                                : null;
                                        return Text(
                                          formatNumber(
                                            functions.realPrice(
                                                cartCartRecord!.amount!,
                                                textPercentPricesRecord!
                                                    .percentValue!,
                                                orderSubTotalPercentPricesRecord!
                                                    .percentValue!),
                                            formatType: FormatType.decimal,
                                            decimalType: DecimalType.automatic,
                                            currency: '',
                                          ),
                                          textAlign: TextAlign.end,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                              ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'IVA',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                StreamBuilder<List<PercentPricesRecord>>(
                                  stream: queryPercentPricesRecord(
                                    queryBuilder: (percentPricesRecord) =>
                                        percentPricesRecord.where('price_Name',
                                            isEqualTo: 'iva'),
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    List<PercentPricesRecord>
                                        textPercentPricesRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textPercentPricesRecord =
                                        textPercentPricesRecordList.isNotEmpty
                                            ? textPercentPricesRecordList.first
                                            : null;
                                    return Text(
                                      formatNumber(
                                        cartCartRecord!.amount! *
                                            textPercentPricesRecord!
                                                .percentValue!,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.automatic,
                                        currency: '',
                                      ),
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Envío',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                                StreamBuilder<List<PercentPricesRecord>>(
                                  stream: queryPercentPricesRecord(
                                    queryBuilder: (percentPricesRecord) =>
                                        percentPricesRecord.where('price_Name',
                                            isEqualTo: 'envio'),
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      );
                                    }
                                    List<PercentPricesRecord>
                                        textPercentPricesRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final textPercentPricesRecord =
                                        textPercentPricesRecordList.isNotEmpty
                                            ? textPercentPricesRecordList.first
                                            : null;
                                    return Text(
                                      formatNumber(
                                        cartCartRecord!.amount! *
                                            textPercentPricesRecord!
                                                .percentValue!,
                                        formatType: FormatType.decimal,
                                        decimalType: DecimalType.automatic,
                                        currency: '',
                                      ),
                                      textAlign: TextAlign.end,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                          ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total',
                                  style:
                                      FlutterFlowTheme.of(context).titleMedium,
                                ),
                                Text(
                                  formatNumber(
                                    cartCartRecord!.amount!,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.automatic,
                                    currency: '',
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 14.0, 8.0, 14.0),
                      child: StreamBuilder<List<PercentPricesRecord>>(
                        stream: queryPercentPricesRecord(
                          queryBuilder: (percentPricesRecord) =>
                              percentPricesRecord.where('price_Name',
                                  isEqualTo: 'iva'),
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
                          List<PercentPricesRecord>
                              buttonPercentPricesRecordList = snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final buttonPercentPricesRecord =
                              buttonPercentPricesRecordList.isNotEmpty
                                  ? buttonPercentPricesRecordList.first
                                  : null;
                          return FFButtonWidget(
                            onPressed: () async {
                              final orderCreateData = {
                                ...createOrderRecordData(
                                  name: currentUserDisplayName,
                                  amount: cartCartRecord!.amount,
                                  status: 'en espera',
                                  tax: cartCartRecord!.amount! *
                                      buttonPercentPricesRecord!.percentValue!,
                                  createdAt: getCurrentTimestamp,
                                  creator: currentUserReference,
                                  cart: cartCartRecord!.reference,
                                ),
                                'selectedItems':
                                    cartCartRecord!.selectedItemsList!.toList(),
                              };
                              var orderRecordReference =
                                  OrderRecord.collection.doc();
                              await orderRecordReference.set(orderCreateData);
                              _model.orden = OrderRecord.getDocumentFromData(
                                  orderCreateData, orderRecordReference);

                              final cartUpdateData = createCartRecordData(
                                isActive: false,
                              );
                              await cartCartRecord!.reference
                                  .update(cartUpdateData);

                              final userUpdateData = {
                                'orderList': FieldValue.arrayUnion(
                                    [_model.orden!.reference]),
                              };
                              await currentUserReference!
                                  .update(userUpdateData);

                              setState(() {});
                            },
                            text: 'Confirmar orden',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
