import '/flutter_flow/flutter_flow_util.dart';
import 'edit_price_widget.dart' show EditPriceWidget;
import 'package:flutter/material.dart';

class EditPriceModel extends FlutterFlowModel<EditPriceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
