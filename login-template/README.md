# Login Template

A reusable Flutter login/sign-up UI starting point — pulled from `main.dart` and `LoginUI.dart` of a previous project. Use this as a base whenever a new app needs an auth screen instead of building one from scratch.

## What's included

- **Login screen** — email/phone + password fields, show/hide password toggle, "Forgot password?" link, "Log In" button, "Sign in with Google" button, and a "Don't have an account?" link to sign-up.
- **Sign-up screen** — first/last/middle name, NRC number, mobile number, optional business name, passcode + confirm passcode fields with show/hide toggles.
- **Responsive layout** — form card auto-adjusts sizing/spacing for phone vs tablet (breakpoint at 600px width), and caps its own height so it never overflows on short screens.
- **Full-bleed background image** — sits behind a translucent white rounded card, structured to stay stable when the on-screen keyboard opens (image lives outside the `Scaffold`, so keyboard resizing never touches it).
- **Navigation wired up** — "Create account" / "Log in" links use `Navigator.push` / `Navigator.pop` to move between the two screens.

## How to reuse

1. Copy `login.dart` and `signup.dart` into the new project's `lib/` folder.
2. Replace `assets/images/bg.png` and `assets/images/google.png` with the new app's assets, and register them in `pubspec.yaml`.
3. Update the labels/fields in `signup.dart` if the new app needs different sign-up info.
4. Swap the `print(...)` placeholders in the button `onPressed` callbacks for real logic (auth calls, navigation to the next screen, etc.).
5. Update colors (currently green/white) to match the new app's branding — search for `Colors.green` and `Colors.white` throughout both files.

## Not included

- No backend/auth logic wired up — buttons are UI-only placeholders (`onPressed: () {}` or `print(...)`).
- No form validation yet (empty fields, password matching, etc.).
- No `TextEditingController`s — fields don't currently read their typed values.

## Known quirks to watch for

- The white card uses `SingleChildScrollView` + `ConstrainedBox(maxHeight: ...)`, which always renders at the *maximum* allowed height, not just what the content needs — factor that in if content length changes a lot.
- If reusing on a project where the background image must survive keyboard opening without flicker, keep the image as a sibling of `Scaffold` inside an outer `Stack`, not nested inside `Scaffold`'s `body` — nesting it inside can cause resize/positioning glitches.
