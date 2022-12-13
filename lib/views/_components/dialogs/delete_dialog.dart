import 'package:flutter/foundation.dart' show immutable;
import 'package:flutter_starter/views/_components/dialogs/alert_dialog_model.dart';

@immutable
class DeleteDialog extends AlertDialogModel<bool> {
  const DeleteDialog()
      : super(
          title: 'Delete',
          message: 'Are you sure you want to delete it ?',
          buttons: const {
            'Cancel': false,
            'Delete': true,
          },
        );
}
