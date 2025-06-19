# 💪 Fitzen App

**Fitzen** is a modern fitness app designed to connect trainers and trainees in one platform.  
It allows users to browse and book training sessions, follow personalized fitness programs, and track their progress easily.

The app is built with **Flutter** and follows **Clean Architecture** principles.  

---
## 🏗 Project Structure (Clean Architecture)
lib/
├── core/                # Shared logic and services
│   ├── constant/
│   ├── error/
│   ├── routing/         # go_router setup
│   ├── services/        # shared_preferences setup
│   ├── usecases/
│   ├── utils/
│   └── widgets/
├── features/
│   ├── onboarding/      # Onboarding feature
│   └── auth/            # Coming soon
├── fitzen_app.dart
├── main.dart

## 🧠 Tech Stack

| Technology            | Use                                      |
|-----------------------|-------------------------------------------|
| Flutter               | UI development                           |
| Riverpod              | State management                         |
| GoRouter              | Navigation and redirection               |
| SharedPreferences     | Local storage                            |
| ScreenUtil            | Responsive UI                            |
| SmoothPageIndicator   | Page indicators in onboarding            |

---

## ✅ Completed Features

### 1. 🚀 Onboarding Flow

- 3 screen onboarding using `PageView`.
- Controlled via `PageController` injected with Riverpod.
- `SmoothPageIndicator` used for dots.
- User state saved locally using `SharedPreferences`.
- After completion, user is redirected to `/SignUpTester`.
- Redirection is handled with `GoRouter` and guarded with `redirect`.

---