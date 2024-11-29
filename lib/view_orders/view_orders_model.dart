import '/flutter_flow/flutter_flow_util.dart';
import 'view_orders_widget.dart' show ViewOrdersWidget;
import 'package:flutter/material.dart';

class ViewOrdersModel extends FlutterFlowModel<ViewOrdersWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
