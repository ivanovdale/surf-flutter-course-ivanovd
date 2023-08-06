import 'package:flutter/material.dart';
import 'package:places/features/place_details/presentation/widgets/sliver_place_details/components/buttons/to_favourites_button.dart';
import 'package:places/features/place_details/presentation/widgets/sliver_place_details/components/buttons/to_plan_button.dart';

/// Виджет для отображения кнопок для работы с местом.
///
/// Предоставляет возможность запланировать поход в место и добавить его в список избранного.
class PlaceActionsButtons extends StatelessWidget {
  const PlaceActionsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: ToPlanButton(),
        ),
        Expanded(
          child: ToFavouritesButton(),
        ),
      ],
    );
  }
}
