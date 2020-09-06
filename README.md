![Project Logo](./Logo.png)

![License MIT](https://img.shields.io/github/license/LenisDev/FloatingInput)
![CI Tests](https://github.com/LenisDev/FloatingInput/workflows/GHActionCI/badge.svg)
![Carthage compatibility](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat")
![pod](https://img.shields.io/cocoapods/v/FloatingInput.svg)
![Plateform compatibility](https://img.shields.io/cocoapods/p/FloatingInput)

- [Overview](#overview)
- [Usage](#usage)
- [Installation Guide](#installation-guide)
- [Full Documentation](https://lenisdev.github.io/FloatingInput/index.html)
- [Contribute](#contribute)

### Overview
Easy to use functional floating input view for iOS projects.

Checkout [example project](https://github.com/LenisDev/FloatingInput/tree/master/Examples/FloatingInputExamples)
### Usage
```swift

  // Step 1 - create
  let floatingInput = FloatingInputView(data: FloatingInputViewModel(title: "Enter text"))
    
  // Step 2: Customize
  self.floatingInput.style(RectStyle())
```

<br>

### Installation Guide

#### Carthage

Step 1: 
Add following to your CartFile

```
github "LenisDev/FloatingInput" ~> 0.0.1
```

Step 2:
run `carthage update` from current project directory.

*That's all, you have it installed.*

<br>

#### CocoaPods

Step 1:
Add `pod 'FloatingInput', '~> 0.0.1'` to your Podfile:

```
target 'MyApp' do
  pod 'FloatingInput', '~> 0.0.1'
end
```

Step 2:
run `pod install` from current project directory.

*That's all, you have it installed.*

<br>

>
>
>Try it using following command
>```
>pod try FloatingInput
>```
>

<br>

#### Swift Package Manager
```
dependencies: [
    .package(url: "https://github.com/LenisDev/FloatingInput.git", .upToNextMajor(from: "0.0.1"))
]
```

<br>

### Contribute
> - Play around and report bugs
> - Fix issues and create PR
> - Add documentations and new features
