import '/flutter_flow/flutter_flow_util.dart';
import 'receipt_page_widget.dart' show ReceiptPageWidget;
import 'package:flutter/material.dart';

class ReceiptPageModel extends FlutterFlowModel<ReceiptPageWidget> {
  ///  Local state fields for this page.

  DocumentReference? url;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
