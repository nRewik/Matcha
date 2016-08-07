# Matcha
An example of iOS project's structure with micro framework architecture.

## Getting started
Open `Matcha.xcworkspace`

## Explanation
- Matcha app contains micro frameworks as dependencies.
- It includes all module in `Matcha.xcworkspace`. This way you don't have to open many Xcode projects at the same time.
- When another module's code is changed, the changes will reflect immeditely after re-build the app.
- Frameworks will be built based on app configuration, `Debug` and `Release`.
- Each module has unit testing.

## File Structure
Each module has file structure like this.

```
Framework/
├── Framework.xcodeproj
├── Sources/
├── Supporting Files/
├── Tests/
├── UITests/
```

## Build Location
- Frameworks -> `./build`
- Xcode generated build files -> `./build/.DerivedData`.
