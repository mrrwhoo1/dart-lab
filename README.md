# dart-lab 

A collection of small Dart projects I'm building while learning the language, on my way toward Flutter development.

Each folder is a self-contained mini-project — mostly CLI tools — focused on practicing a specific set of Dart concepts (OOP, collections, async/await, JSON, HTTP, streams) before applying them in a real Flutter app.

## Projects

| Project | Concepts practiced |
|---|---|
| [WeatherConverter](weatherconverter/./WeatherConverter.dart) | functions, RegExp, string parsing, nullable types, switch-like conditionals |
| [RandomGuesser](random_number_guess/./random.dart) | loops, control flow, Random, comparison operators |

*(table updated as projects are added)*

## Running a project

Each project has its own folder with a `main.dart` (and sometimes a small `pubspec.yaml` if it uses external packages).

```bash
cd project-folder
dart run main.dart
```

## Setup

Requires the Dart SDK (bundled with Flutter, or installed standalone).

```bash
dart --version
```

## Why

Learning Dart syntax and idioms in plain CLI projects first, before layering on Flutter's widget/state model trying to make sure the "new" parts of Flutter are actually just Flutter, not Flutter *and* Dart at the same time.
