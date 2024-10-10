import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lienhoa_gate_controller/constants/app_sizes.dart';
import 'package:lienhoa_gate_controller/features/settings/domain/camera_settings.dart';
import 'package:lienhoa_gate_controller/utils/list_extention.dart';

class CameraConfigField extends HookConsumerWidget {
  const CameraConfigField({super.key, required this.field});
  final FormFieldState<CameraSettings> field;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = field.value!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormBuilderTextField(
          name: 'videoStreamAddress',
          decoration: const InputDecoration(
            labelText: 'Địa chỉ camera',
            hintText: 'Mặc định: ***REMOVED***:554/ch1/main',
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          initialValue: settings.videoStreamAddress,
          onChanged: (value) {
            field.didChange(settings.copyWith(videoStreamAddress: value));
          },
        ),
        FormBuilderTextField(
          name: 'videoStreamUser',
          decoration: const InputDecoration(
            labelText: 'Tên đăng nhập camera',
            hintText: 'Mặc định: admin',
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
          initialValue: settings.videoStreamUser,
          onChanged: (value) {
            field.didChange(settings.copyWith(videoStreamUser: value));
          },
        ),
        HookBuilder(
          builder: (context) {
            final obscurePassword = useState(true);

            return FormBuilderTextField(
              name: 'videoStreamPassword',
              decoration: InputDecoration(
                labelText: 'Mật khẩu camera',
                hintText: 'Mặc định: Default0',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: UnconstrainedBox(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    icon: Icon(
                      obscurePassword.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () =>
                        obscurePassword.value = !obscurePassword.value,
                  ),
                ),
              ),
              initialValue: settings.videoStreamPassword,
              obscureText: obscurePassword.value,
              onChanged: (value) {
                field.didChange(settings.copyWith(videoStreamPassword: value));
              },
            );
          },
        ),
      ].separated(const Gap(kSize_20)),
    );
  }
}
