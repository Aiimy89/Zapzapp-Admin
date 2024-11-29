import '/flutter_flow/flutter_flow_util.dart';
import 'edit_code_widget.dart' show EditCodeWidget;
import 'package:flutter/material.dart';

class EditCodeModel extends FlutterFlowModel<EditCodeWidget> {
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
