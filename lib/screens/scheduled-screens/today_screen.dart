import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class ScheduleRideScreen extends StatefulWidget {
  const ScheduleRideScreen({super.key});

  @override
  State<ScheduleRideScreen> createState() => _ScheduleRideScreenState();
}

class _ScheduleRideScreenState extends State<ScheduleRideScreen> {
  int selectedTab = 0; // 0: Today, 1: Tomorrow, 2: Select Date

  DateTime selectedDate = DateTime.now();
  int selectedHour = 12;
  int selectedMinute = 0;
  bool isAm = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 16),
            _header(),
            const SizedBox(height: 16),
            _tabBar(),
            const SizedBox(height: 16),

            if (selectedTab == 2) _calendar(),

            _timePicker(),

            const Spacer(),
            _bottomButtons(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return const Text(
      'Schedule a Ride',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _tabBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: List.generate(3, (index) {
          final titles = ['Today', 'Tomorrow', 'Select Date'];

          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = index;

                  if (index == 0) {
                    selectedDate = DateTime.now();
                  } else if (index == 1) {
                    selectedDate = DateTime.now().add(const Duration(days: 1));
                  }
                });
              },
              child: Container(
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedTab == index
                      ? Colors.amber
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  titles[index],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: selectedTab == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _calendar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: TableCalendar(
          focusedDay: selectedDate,
          firstDay: DateTime.now(),
          lastDay: DateTime.now().add(const Duration(days: 365)),
          selectedDayPredicate: (day) =>
              isSameDay(day, selectedDate),
          onDaySelected: (selected, focused) {
            setState(() {
              selectedDate = selected;
            });
          },
          calendarStyle: CalendarStyle(
            selectedDecoration: const BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle,
            ),
            todayDecoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.3),
              shape: BoxShape.circle,
            ),
          ),
          headerStyle: const HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
          ),
        ),
      ),
    );
  }

  Widget _timePicker() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _numberPicker(
                value: selectedHour,
                min: 1,
                max: 12,
                onChanged: (v) => setState(() => selectedHour = v),
              ),
              const Text(" : ", style: TextStyle(fontSize: 24)),
              _numberPicker(
                value: selectedMinute,
                min: 0,
                max: 59,
                onChanged: (v) => setState(() => selectedMinute = v),
              ),
              const SizedBox(width: 16),
              _amPmToggle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _numberPicker({
    required int value,
    required int min,
    required int max,
    required ValueChanged<int> onChanged,
  }) {
    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_up),
          onPressed: () {
            if (value < max) onChanged(value + 1);
          },
        ),
        Text(
          value.toString().padLeft(2, '0'),
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.keyboard_arrow_down),
          onPressed: () {
            if (value > min) onChanged(value - 1);
          },
        ),
      ],
    );
  }

  Widget _amPmToggle() {
    return Column(
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            setState(() => isAm = true);
          },
        ),
        Text(
          isAm ? 'AM' : 'PM',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        IconButton(
          icon: const Icon(Icons.chevron_right),
          onPressed: () {
            setState(() => isAm = false);
          },
        ),
      ],
    );
  }

  Widget _bottomButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                final formattedDate =
                DateFormat('yyyy-MM-dd').format(selectedDate);

                final time =
                    '${selectedHour.toString().padLeft(2, '0')}:${selectedMinute
                    .toString().padLeft(2, '0')} ${isAm ? 'AM' : 'PM'}';

                debugPrint('Date: $formattedDate');
                debugPrint('Time: $time');
              },
              child: const Text('Set Schedule'),
            ),
          ),
        ],
      ),
    );
  }
}