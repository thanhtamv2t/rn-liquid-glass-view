# 🧊 React Native Liquid Glass

Bring your UI into the future with **React Native Liquid Glass** — a sleek, glassmorphic view powered by Apple’s new `UIGlassEffect` in **iOS 18**. Perfectly frosted. Surprisingly easy.

> ⚠️ **iOS 26+ only**
> On Android and on iOS versions below 26, this component returns a `<Pressable />` as a fallback.

---

## ✨ Features

- **System-native glassmorphism** — powered by `UIGlassEffect` for real iOS-level transparency and blur.
- **Plug-and-play simplicity** — drop it in your component tree, no native configuration required.
- **Built with TypeScript** — get full IntelliSense and prop validation out of the box.
- **Safe by design** — auto-fallback ensures compatibility across platforms without conditional logic.
- **Lightweight and fast** — minimal footprint with zero extra dependencies.

---

## 🎬 Demo

[![Watch the demo](https://img.youtube.com/vi/v8gXXOGDfE8/0.jpg)](https://youtube.com/shorts/v8gXXOGDfE8?feature=share)

> _Try tapping it. Feel the magic. (Unless you're on Android — in that case, imagine it’s cool.)_

---

## 📦 Installation

```sh
npm install react-native-liquid-glass
# or
yarn add react-native-liquid-glass
```

---

## 🛠 Requirements

- iOS 26 or higher
- Xcode 26

---

## 🚀 Usage

```tsx
import { LiquidGlassView } from 'react-native-liquid-glass';

<LiquidGlassView
  style={{ width: 200, height: 200 }}
  onPress={() => console.log('Tapped the glass!')}
/>;
```

---

## 🤝 Contributing

We welcome contributions! Check out our [contributing guide](CONTRIBUTING.md) to get started.

---

## 📄 License

MIT
