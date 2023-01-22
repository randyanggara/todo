import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:intl/intl.dart';

class TaskListController {
  final selectedDate = ValueNotifier(DateTime.now());

  final pageController = PageController(viewportFraction: 0.18);
  final calendar = ValueNotifier<List<DateTime>>([]);

  void generateCalendarElements() {
    calendar.value = List.generate(
      120, // 120 days = 100 days before now and 20 after now
      (index) => DateTime.parse(
        DateTime.utc(
          DateTime.now().year,
          DateTime.now().month,
          DateTime.now().day - 100 + index,
        ).toString(),
      ),
    );
  }

  void updateCalendarElements(Function callback) {
    pageController.addListener(() {
      generateLastCalendarElements();
      generateFirstCalendarElements();
      callback();
    });
  }

  void scrollToSelectedIndex() {
    for (int i = 0; i < calendar.value.length; i++) {
      String selectedDayString = DateFormat.yMd().format(selectedDate.value);
      String calendarList = DateFormat.yMd().format(calendar.value[i]);
      if (selectedDayString == calendarList) {
        selectedDate.value = calendar.value[i];

        _scrollToElement(i);

        break;
      }
    }
  }

  void _scrollToElement(int index) {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await pageController.animateToPage(
        index,
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      );
    });
  }

  void generateFirstCalendarElements() {
    if (pageController.position.minScrollExtent ==
        pageController.position.pixels) {
      final firstElement = calendar.value.first;

      List<DateTime> first = List.generate(
        20,
        (index) => DateTime.parse(
          DateTime.utc(firstElement.year, firstElement.month,
                  firstElement.day - index)
              .toString(),
        ),
      );

      calendar.value.insertAll(0, first);
    }
  }

  void generateLastCalendarElements() {
    if (pageController.position.maxScrollExtent ==
        pageController.position.pixels) {
      final lastElement = calendar.value.last;

      List<DateTime> last = List.generate(
        20,
        (index) => DateTime.parse(
          DateTime.utc(
            lastElement.year,
            lastElement.month,
            lastElement.day + 1 + index,
          ).toString(),
        ),
      );

      calendar.value.addAll(last);
    }
  }
}
