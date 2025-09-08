# Test task for TBR Group

![Preview](/assets/resources/preview.gif)

## Task

- Create a single-page Flutter application that fetches and displays SpaceX rocket launch data.

### Design Reference

- Follow the Figma design for UI implementation: [Design link](https://www.figma.com/file/i4PIS6eHDDkcbH3MO5Q5QW/Test-task-design?type=design&node-id=20-272)
- Pay attention to sizes, colors, paddings, and UI details.

---

## Features / Screens

1. Top Label
   - Displays static text: SpaceX Launches at the top of the screen.
2. Rocket Images Slider
   - Swipe left/right to select a rocket.
   - Selected rocket image is larger than adjacent ones.
   - Selected image width + paddings take 78% of slider width.
   - When a rocket is selected, all its launches are loaded.
3. Current Page Indicator
   - Shows the currently selected rocket in the slider.
4. Launches List
   - Vertically scrollable list showing all launches of the selected rocket.
   - Each launch item displays:
     - Formatted launch date and time
     - Mission name
     - Launch site name
   - Optional Bonus: tapping a launch opens the corresponding Wikipedia page in the browser.

---

## API Reference

1. Use the [SpaceX API REST](https://docs.spacexdata.com/) (v3 recommended) to fetch relevant data:
- Rocket images
- Rocket IDs
- Launch dates, mission names, launch site names

---

## Requirements

1. Use Flutter latest stable version.
2. Use [state management](https://docs.flutter.dev/data-and-backend/state-mgmt/options/) (any solution except setState).
3. Use any pub packages.
4. Show a progress indicator while fetching data.
5. Push the code to GitHub and share the repository link.

---

## Bonus

- Open Wikipedia page on launch tap.
- Smooth animations for slider transitions.
- Nicely formatted date/time strings.

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/TishchenkoSergey/spacex_launches_app.git
cd spacex_launches_app
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Install Dependencies

```bash
flutter run
```
