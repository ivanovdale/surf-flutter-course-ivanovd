import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:places/helpers/app_strings.dart';
// TODO(daniiliv): Воспользуемся глобальной переменной на время, пока нет DI.
import 'package:places/main.dart' show isDarkModeEnabled, changeNotifier;
import 'package:places/ui/screens/components/custom_app_bar.dart';
import 'package:places/ui/screens/components/custom_bottom_navigation_bar.dart';
import 'package:places/ui/screens/components/custom_divider.dart';

/// Отображает переключатель тёмной/светлой темы. Позволяет перейти на экран онбординга.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppStrings.settings,
        titleTextStyle: Theme.of(context).textTheme.subtitle1,
        centerTitle: true,
        toolbarHeight: 56,
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: const _SettingsBody(),
    );
  }
}

/// Содержит переключатель тёмной темы и кнопку для перехода на экран онбординга.
class _SettingsBody extends StatelessWidget {
  const _SettingsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 42.0,
        left: 16.0,
        right: 16.0,
      ),
      child: Column(
        children: const [
          _DarkModeSetting(),
          _DividerWithPaddingAndThickness(),
          _WatchTutorialInfo(),
          _DividerWithPaddingAndThickness(),
        ],
      ),
    );
  }
}

/// Кастомный разделитель с заданным отступом и толщиной.
class _DividerWithPaddingAndThickness extends StatelessWidget {
  const _DividerWithPaddingAndThickness({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomDivider(
      padding: EdgeInsets.only(
        top: 12,
        bottom: 14,
      ),
      thickness: 0.8,
    );
  }
}

/// Переключатель тёмной темы.
class _DarkModeSetting extends StatefulWidget {
  const _DarkModeSetting({Key? key}) : super(key: key);

  @override
  State<_DarkModeSetting> createState() => _DarkModeSettingState();
}

/// Хранит состояние переключателя тёмной темы.
class _DarkModeSettingState extends State<_DarkModeSetting> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.darkTheme,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        const Spacer(),
        CupertinoSwitch(
          value: isDarkModeEnabled,
          onChanged: (newValue) => setState(() {
            isDarkModeEnabled = newValue;
            changeNotifier.notifyListeners();
          }),
        ),
      ],
    );
  }
}

/// Позволяет перейти на экран онбординга.
class _WatchTutorialInfo extends StatelessWidget {
  const _WatchTutorialInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Text(
          AppStrings.watchTutorial,
          style: theme.textTheme.bodyText1,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.info_outline,
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}