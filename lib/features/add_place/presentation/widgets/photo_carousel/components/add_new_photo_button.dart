import 'package:flutter/material.dart';
import 'package:places/features/add_place/presentation/add_place_screen.dart';
import 'package:places/features/add_place/presentation/widgets/photo_carousel/components/photo_picker.dart';
import 'package:places/mocks.dart' as mocked;

/// Кнопка добавления новой фотографии.
class AddNewPhotoButton extends StatelessWidget {
  const AddNewPhotoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorSchemePrimaryColor = theme.colorScheme.primary;

    return GestureDetector(
      onTap: () => addPhotoToList(context),
      child: Container(
        width: 72,
        height: 72,
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colorSchemePrimaryColor.withOpacity(0.48),
            width: 2,
          ),
        ),
        child: Icon(
          Icons.add,
          size: 45,
          color: colorSchemePrimaryColor,
        ),
      ),
    );
  }

  /// Открывает диалог для добавления нового фото в список добавляемых фото.
  Future<void> addPhotoToList(BuildContext context) async {
    await showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const PhotoPicker(),
    );
    // TODO(daniiliv): *Как будто сработал image picker*.
    const newPhotoUrl = mocked.newPhotoOnAddPlaceScreen;

    if (context.mounted) {
      InheritedAddPlaceBodyState.of(context).addPhotoToList(newPhotoUrl);
    }
  }
}