import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ScheduleRideTwo extends StatelessWidget {
  const ScheduleRideTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ride App')),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (_) => const ScheduleRideDialog(),
            );
          },
          child: const Text(
            'Schedule a Ride',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class ScheduleRideDialog extends StatefulWidget {
  const ScheduleRideDialog({super.key});

  @override
  State<ScheduleRideDialog> createState() => _ScheduleRideDialogState();
}

class _ScheduleRideDialogState extends State<ScheduleRideDialog> {
  late DateTime selectedDateTime;
  int tabIndex = 0; // 0: Today, 1: Tomorrow, 2: Select Date

  // For wheel picker (Today/Tomorrow)
  late FixedExtentScrollController hourController;
  late FixedExtentScrollController minuteController;

  // For manual 12-hour picker (Select Date)
  int hour12 = 12;
  int minute = 0;
  bool isAM = true;

  final double itemExtent = 60.0;  // Increased from 50 to 60 for better touch target

  @override
  void initState() {
    super.initState();
    selectedDateTime = DateTime.now().add(const Duration(hours: 1));
    _initializeControllers();
  }

  void _initializeControllers() {
    hourController = FixedExtentScrollController(
        initialItem: selectedDateTime.hour);
    minuteController = FixedExtentScrollController(
        initialItem: selectedDateTime.minute);
  }

  void _updateFromTabChange() {
    DateTime now = DateTime.now();

    DateTime baseDate = tabIndex == 0
        ? now
        : tabIndex == 1
        ? now.add(const Duration(days: 1))
        : selectedDateTime;

    setState(() {
      selectedDateTime = DateTime(
        baseDate.year,
        baseDate.month,
        baseDate.day,
        selectedDateTime.hour,
        selectedDateTime.minute,
      );

      if (tabIndex < 2) {
        hourController.jumpToItem(selectedDateTime.hour);
        minuteController.jumpToItem(selectedDateTime.minute);
      } else {
        // Update 12-hour view
        hour12 = selectedDateTime.hour == 0 || selectedDateTime.hour == 12
            ? 12
            : selectedDateTime.hour % 12;
        minute = selectedDateTime.minute;
        isAM = selectedDateTime.hour < 12;
      }
    });
  }

  String _getAmPm() {
    return selectedDateTime.hour < 12 ? 'AM' : 'PM';
  }

  void _updateDateTimeFrom12Hour() {
    int hour24 = isAM
        ? (hour12 == 12 ? 0 : hour12)
        : (hour12 == 12 ? 12 : hour12 + 12);

    setState(() {
      selectedDateTime = selectedDateTime.copyWith(
        hour: hour24,
        minute: minute,
      );
    });
  }

  @override
  void dispose() {
    hourController.dispose();
    minuteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      contentPadding: EdgeInsets.zero,
      content: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Schedule a Ride',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // Tabs: Today | Tomorrow | Select Date
            Row(
              children: ['Today', 'Tomorrow', 'Select Date'].asMap().entries.map((entry) {
                int idx = entry.key;
                String label = entry.value;
                bool isSelected = tabIndex == idx;

                return Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        tabIndex = idx;
                        _updateFromTabChange();
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.amber : Colors.transparent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        label,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: isSelected ? Colors.black : Colors.grey[600],
                          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            // Content based on selected tab
            if (tabIndex == 2)
            // Custom Date + 12-hour picker
              Column(
                children: [
                  CalendarDatePicker(
                    initialDate: selectedDateTime,
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                    onDateChanged: (date) {
                      setState(() {
                        selectedDateTime = selectedDateTime.copyWith(
                          year: date.year,
                          month: date.month,
                          day: date.day,
                        );
                      });
                    },
                  ),

                  // 12-hour time picker with arrows
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Hour
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.keyboard_arrow_up),
                              onPressed: () {
                                setState(() {
                                  hour12 = hour12 == 12 ? 1 : hour12 + 1;
                                  _updateDateTimeFrom12Hour();
                                });
                              },
                            ),
                            Text(
                              hour12.toString().padLeft(2, '0'),
                              style: const TextStyle(fontSize: 40),
                            ),
                            IconButton(
                              icon: const Icon(Icons.keyboard_arrow_down),
                              onPressed: () {
                                setState(() {
                                  hour12 = hour12 == 1 ? 12 : hour12 - 1;
                                  _updateDateTimeFrom12Hour();
                                });
                              },
                            ),
                          ],
                        ),

                        const Text(' : ', style: TextStyle(fontSize: 40)),

                        // Minute
                        Column(
                          children: [
                            IconButton(
                              icon: const Icon(Icons.keyboard_arrow_up),
                              onPressed: () {
                                setState(() {
                                  minute = (minute + 1) % 60;
                                  _updateDateTimeFrom12Hour();
                                });
                              },
                            ),
                            Text(
                              minute.toString().padLeft(2, '0'),
                              style: const TextStyle(fontSize: 40),
                            ),
                            IconButton(
                              icon: const Icon(Icons.keyboard_arrow_down),
                              onPressed: () {
                                setState(() {
                                  minute = minute == 0 ? 59 : minute - 1;
                                  _updateDateTimeFrom12Hour();
                                });
                              },
                            ),
                          ],
                        ),

                        const SizedBox(width: 30),

                        // AM/PM toggle
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isAM = !isAM;
                              _updateDateTimeFrom12Hour();
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              isAM ? 'AM' : 'PM',
                              style: const TextStyle(fontSize: 28),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            else
            // Wheel picker for Today / Tomorrow - FIXED VERSION
              SizedBox(
                height: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Hour Wheel
                    SizedBox(
                      width: 100,
                      child: ListWheelScrollView.useDelegate(
                        controller: hourController,
                        itemExtent: itemExtent,
                        physics: const FixedExtentScrollPhysics(),
                        magnification: 1.4,
                        useMagnifier: true,
                        overAndUnderCenterOpacity: 0.5,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedDateTime = selectedDateTime.copyWith(hour: index % 24);
                          });
                        },
                        childDelegate: ListWheelChildLoopingListDelegate(
                          children: List.generate(24, (h) {
                            return Center(
                              child: Text(
                                h.toString().padLeft(2, '0'),
                                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),

                    // Colon
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        ':',
                        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ),

                    // Minute Wheel
                    SizedBox(
                      width: 100,
                      child: ListWheelScrollView.useDelegate(
                        controller: minuteController,
                        itemExtent: itemExtent,
                        physics: const FixedExtentScrollPhysics(),
                        magnification: 1.4,
                        useMagnifier: true,
                        overAndUnderCenterOpacity: 0.5,
                        onSelectedItemChanged: (index) {
                          setState(() {
                            selectedDateTime = selectedDateTime.copyWith(minute: index % 60);
                          });
                        },
                        childDelegate: ListWheelChildLoopingListDelegate(
                          children: List.generate(60, (m) {
                            return Center(
                              child: Text(
                                m.toString().padLeft(2, '0'),
                                style: const TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),

                    // AM/PM Indicator
                    const SizedBox(width: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.amber.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.amber),
                      ),
                      child: Text(
                        _getAmPm(),
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            const SizedBox(height: 30),

            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Colors.orange),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel', style: TextStyle(color: Colors.orange)),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[700],
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      ),
                      onPressed: () {
                        // Handle the scheduled time here
                        print('Scheduled ride for: $selectedDateTime');
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Set Schedule',
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}