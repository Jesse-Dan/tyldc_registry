import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tools/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

enum TextFieldsType { password, text, multiline }

SizedBox buildTextFields(
    {required String errorText,
    required String fieldTitle,
    required bool iserror,
    required String label,
    required void Function(String)? onChanged,
    required bool requireSuffix,
    IconData? suffixIcon,
    void Function()? onClickIcon,
    String? Function(String?)? validator,
    required dynamic keyboardType,
    TextEditingController? controller,
    bool enabled = true,
    bool node = false,
    Function()? onEditingComplete,
    Function()? onTap,
    String? prefixText,
    int? maxLength,
    FocusNode? focusNode,
    suffixImage,
    prefixIcon,
    suffixIconsize,
    topLeft,
    bottomLeft,
    readOnly = false,
    isLoading = false,
    maxLines,
    required ctx,
    Color? loaderColor,
    TextFieldsType textFieldsType = TextFieldsType.text}) {
  return SizedBox(
    // width: MediaQuery.of(ctx).size.width,
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 15,
      ),
      Text(
        fieldTitle,
        style: GoogleFonts.dmSans(
          fontSize: kMidiText,
          fontWeight: FontWeight.w700,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      textFieldsType == TextFieldsType.multiline
          ? TextFormField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              maxLines: maxLines,
              decoration: InputDecoration(
                  hintText: label,
                  hintStyle: GoogleFonts.dmSans(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: const Radius.circular(5),
                        topRight: const Radius.circular(5),
                      )),
                  filled: true,
                  fillColor: kTextFieldColor),
            )
          : TextFormField(
              maxLines: maxLines,
              readOnly: readOnly,
              focusNode: focusNode,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              maxLength: maxLength,
              onTap: onTap,
              onEditingComplete: onEditingComplete,
              autofocus: node,
              enableInteractiveSelection: true,
              enableSuggestions: true,
              enabled: enabled,
              keyboardType: keyboardType,
              validator: (val) {
                final RegExp textExp = RegExp(r'^[A-Za-z ]+');
                if (val!.isEmpty) {
                  return errorText;
                } else if (textExp.hasMatch(val)) {}
                return null;
              },
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                // height: 15.62,
              ),
              controller: controller,
              onChanged: onChanged,
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                counterText: '',
                prefixText: prefixText,
                prefixStyle: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w500, fontSize: 14),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                fillColor: kTextFieldColor,
                suffixIcon: isLoading
                    ? Container(
                        height: 10,
                        width: 10,
                        child: Center(child: CircularProgressIndicator()))
                    : GestureDetector(
                        onTap: onClickIcon,
                        child: suffixImage == null
                            ? Icon(
                                requireSuffix ? suffixIcon : null,
                                color: enabled ? kgreyText : KPrimaryColor,
                                size: suffixIconsize,
                              )
                            : SvgPicture.asset(
                                suffixImage,
                                height: 2,
                                width: 2,
                              ),
                      ),
                errorText: iserror ? errorText : null,
                errorStyle: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  // height: 15.62,
                ),
                errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(topLeft ?? 5),
                      bottomLeft: Radius.circular(bottomLeft ?? 5),
                      bottomRight: const Radius.circular(
                        5,
                      ),
                      topRight: const Radius.circular(5),
                    )),
                filled: true,
                labelText: label,
                labelStyle: GoogleFonts.dmSans(
                  height: 15.62,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
    ]),
  );
}

Column buildPasswordTextFields({
  Function()? onTap,
  required String errorText,
  required String fieldTitle,
  required bool iserror,
  required String label,
  required void Function(String)? onChanged,
  required bool requireSuffix,
  IconData? suffixIcon,
  void Function()? onClickIcon,
  String? Function(String?)? validator,
  required dynamic keyboardType,
  TextEditingController? controller,
  bool enabled = true,
  required bool obscured,
}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    const SizedBox(
      height: 15,
    ),
    Text(
      fieldTitle,
      style: GoogleFonts.dmSans(
        fontSize: 14,
        fontWeight: FontWeight.w700,
      ),
    ),
    const SizedBox(
      height: 10,
    ),
    TextFormField(
      onTap: onTap,
      obscureText: obscured,
      enableInteractiveSelection: true,
      enableSuggestions: true,
      enabled: enabled,
      keyboardType: keyboardType,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: kTextFieldColor,
        suffixIcon: GestureDetector(
          onTap: onClickIcon,
          child: obscured
              ? const Icon(
                  Icons.remove_red_eye_sharp,
                  size: 15,
                )
              : const Icon(
                  Icons.remove_red_eye_outlined,
                  size: 15,
                ),
        ),
        errorText: iserror ? errorText : null,
        errorStyle: GoogleFonts.dmSans(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          // height: 15.62,
        ),
        errorBorder:
            const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        border: InputBorder.none,
        filled: true,
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  ]);
}
