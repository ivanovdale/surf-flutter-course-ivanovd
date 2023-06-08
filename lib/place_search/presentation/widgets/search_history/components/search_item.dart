import 'package:flutter/material.dart';
import 'package:places/domain/model/place.dart';
import 'package:places/place_search/presentation/widgets/search_history/components/delete_history_search_item_from_list_button.dart';
import 'package:places/place_search/presentation/widgets/search_history/components/history_search_item_text_button.dart';

/// Элемент истории поиска.
///
/// Содержит имя искомого ранее места.
/// Позволяет удалить элемент из списка истории поиска.
class SearchItem extends StatelessWidget {
  final Place place;
  final OnHistorySearchItemPressed? onHistorySearchItemPressed;
  final OnDeleteHistorySearchItemPressed? onDeleteHistorySearchItemPressed;

  const SearchItem({
    Key? key,
    required this.place,
    this.onHistorySearchItemPressed,
    this.onDeleteHistorySearchItemPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
      ),
      child: Row(
        children: [
          HistorySearchItemTextButton(
            place: place,
            onHistorySearchItemPressed: onHistorySearchItemPressed,
          ),
          const Spacer(),
          DeleteHistorySearchItemFromListButton(
            place: place,
            onDeleteHistorySearchItemPressed: onDeleteHistorySearchItemPressed,
          ),
        ],
      ),
    );
  }
}
