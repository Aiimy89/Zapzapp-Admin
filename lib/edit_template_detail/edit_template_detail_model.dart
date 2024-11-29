import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_template_detail_widget.dart' show EditTemplateDetailWidget;
import 'package:flutter/material.dart';

class EditTemplateDetailModel
    extends FlutterFlowModel<EditTemplateDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for RadioButtonShipment widget.
  FormFieldController<String>? radioButtonShipmentValueController;
  // State field(s) for Design widget.
  String? designValue;
  FormFieldController<String>? designValueController;
  // State field(s) for RemarksTextField widget.
  FocusNode? remarksTextFieldFocusNode;
  TextEditingController? remarksTextFieldTextController;
  String? Function(BuildContext, String?)?
      remarksTextFieldTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    remarksTextFieldFocusNode?.dispose();
    remarksTextFieldTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonShipmentValue =>
      radioButtonShipmentValueController?.value;
}
