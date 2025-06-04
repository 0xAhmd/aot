# AOT Fandom (Attack on Titan)

**AOT Fandom** is a fan-made Flutter application dedicated to the *Attack on Titan* universe. It provides fans with rich, categorized information and lore about the characters, titans, organizations, and locations within the world of *Shingeki no Kyojin*.

<p align="center">
  <img src="https://github.com/user-attachments/assets/ca7505e7-c269-4099-8a14-9fc508ecf7cf" alt="aot" width="500"/>
</p>

## ✨ Features

- 🧍‍♂️ **Characters** – Browse detailed descriptions of your favorite characters.
- 🧟 **Titans** – Learn about the Nine Titans and their power.
- 🏛️ **Organizations** – Explore various groups such as the Scouts, Military Police, and Marleyan forces.
- 🌍 **Locations** – Dive into lore about important locations like Paradis Island, Shiganshina District, and more.
- 🔍 **Search** – Easily find any character, titan, organization, or place using the powerful search functionality.
- 🎶 **Background Music** – Enjoy immersive background music while exploring the app.
- 💬 **Animated Text** – Engaging animations for a dynamic user experience.
- 📱 **Custom Launcher Icon & Splash Screen** – Fully branded app startup experience.

## 🧠 Technical Highlights

The project follows modern Flutter development practices and leverages a well-structured architecture and toolset:

### ✅ Architecture & State Management

- **Clean Architecture** (without a domain layer)
- **Cubit (from flutter_bloc)** for reactive state management
- **Dependency Injection** using `get_it`

### 📡 Networking & Data

- **Retrofit** for API calls
- **JSON Serialization** using `json_serializable`
- **Pagination** support for character listing and more
- **Public API** powered by [Zach McMullen’s Attack on Titan API](https://www.attackontitanapi.com)  

### 🎵 UI/UX

- **Animated Text Kit** for stylish text animations
- **Background Audio Player** for music playback during app usage
- **Custom Icons & Splash Screen** via `flutter_launcher_icons` and `flutter_native_splash`

## 🚀 Getting Started

Clone the repository:

```bash
git clone https://github.com/0xAhmd/aot.git
cd aot
````

Install dependencies:

```bash
flutter pub get
```

Generate necessary files (JSON serialization, Retrofit):

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

Run the app:

```bash
flutter run
```

## 📦 Dependencies

Some of the major packages used:

* [`flutter_bloc`](https://pub.dev/packages/flutter_bloc)
* [`retrofit`](https://pub.dev/packages/retrofit)
* [`dio`](https://pub.dev/packages/dio)
* [`json_serializable`](https://pub.dev/packages/json_serializable)
* [`get_it`](https://pub.dev/packages/get_it)
* [`hive`](https://pub.dev/packages/hive)
* [`audioplayers`](https://pub.dev/packages/audioplayers)
* [`animated_text_kit`](https://pub.dev/packages/animated_text_kit)
* [`flutter_launcher_icons`](https://pub.dev/packages/flutter_launcher_icons)
* [`flutter_native_splash`](https://pub.dev/packages/flutter_native_splash)

> View the full list of dependencies in `pubspec.yaml`.

## 📸 Screenshots
<p align="center">
  <img src="https://github.com/user-attachments/assets/05d0df4e-6254-4075-a009-cfe09864b879" alt="aot" width="1200"/>
</p>


## 🤝 Contributions

Feel free to fork the repo, open issues, or submit PRs. All help is appreciated to grow this fandom app!


### 🧪 Try It Out

***Try the app on your Android device***  
<p align="center">
  <a href="https://github.com/0xAhmd/aot/releases/tag/v1.0.0">
    <img src="https://img.shields.io/badge/Download-APK-green?style=for-the-badge&logo=android" alt="Download APK"/>
  </a>
</p>



## 📜 Disclaimer

This app is made by fans for fans. All characters, names, and content belong to their respective owners including Hajime Isayama and the publishers of *Attack on Titan*.

---

Made with ❤️ by [@0xAhmd](https://github.com/0xAhmd)

