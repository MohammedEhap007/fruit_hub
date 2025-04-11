import 'package:flutter/material.dart';
import 'package:fruit_hub_app/core/widgets/custom_text_form_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });

  final void Function(String?)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      keyboardType: TextInputType.visiblePassword,
      hintText: 'كلمة المرور',
      suffixIcon: GestureDetector(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: obscureText
            ? const Icon(
                Icons.visibility_off,
                color: Color(0XFFC9CECF),
              )
            : const Icon(
                Icons.remove_red_eye,
                color: Color(0XFFC9CECF),
              ),
      ),
    );
  }
}
