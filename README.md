
# AnimatedTableView 🚀

## Overview 📚
**AnimatedTableView** is a Swift package that enhances your `UITableView` and `UITableViewCell` with a variety of customizable animations, bringing life to your iOS app's UI. Create engaging and interactive user experiences with animations like slide, fade, bounce, scale, and more.

### Requirements 📋
- iOS 13.0+
- Xcode 12.0+
- Swift 5.0+

---

## Demo 🎥

### Table View and Cell Animations

<p align="center">
    <img src="https://github.com/user-attachments/assets/00fbeecc-79e5-4500-bc2c-9e1d6dbfc9bc" width="45%" alt="Table View Animation"/>
    <img src="https://github.com/user-attachments/assets/7b2b987a-f92d-4d45-af11-c804403b410d" width="45%" alt="Cell Animation"/>
</p>

---

## TableView Animations

These animations apply to the entire `UITableView`, making your table view appear dynamically.

### Available Animations:
1. **Slide-in Animation**: Animates the table view sliding in from the bottom.
   ```swift
   tableView.animateTableViewSlideIn()
   ```
2. **Fade-in Animation**: Fades in the table view smoothly.
   ```swift
   tableView.animateTableViewFadeIn()
   ```
3. **Scale-in Animation**: Applies a scale effect to the table view.
   ```swift
   tableView.animateTableViewScaleIn()
   ```
4. **Slide-in from Left**: Animates the table view sliding in from the left.
   ```swift
   tableView.animateTableViewSlideInFromLeft()
   ```
5. **Slide-in from Right**: Animates the table view sliding in from the right.
   ```swift
   tableView.animateTableViewSlideInFromRight()
   ```
6. **Zoom-in with Rotation**: Adds a zoom-in effect with rotation.
   ```swift
   tableView.animateTableViewZoomInWithRotation()
   ```
7. **Flip Animation**: Flips the table view for a dramatic entrance.
   ```swift
   tableView.animateTableViewFlip()
   ```

### Usage Example:
Make sure to import the library: `AnimatedTableView`

```swift
import AnimatedTableView

override func viewDidLoad() {
    super.viewDidLoad()
    tableView.animateTableViewFlip() // Choose any animation method here
}
```

---

## TableViewCell Animations

These animations apply to individual cells, creating interactive effects when a cell is tapped or displayed.

### Available Animations:

1. **Bounce Animation**: Adds a bounce effect when a cell is tapped.
   ```swift
   cell.animateBounce {
       print("Bounce animation completed")
   }
   ```

2. **Scale Animation**: Applies a scaling effect to the cell.
   ```swift
   cell.animateScale {
       print("Scale animation completed")
   }
   ```

3. **Fade-Out Animation**: Fades out the cell and restores it.
   ```swift
   cell.animateFadeOut {
       print("Fade-out animation completed")
   }
   ```

4. **Slide Left Animation**: Slides the cell to the left and restores it.
   ```swift
   cell.animateSlideLeft {
       print("Slide-left animation completed")
   }
   ```

5. **Rotate Animation**: Rotates the cell by 45 degrees and fades it out.
   ```swift
   cell.animateRotate {
       print("Rotate animation completed")
   }
   ```

6. **Combined Animation**: Applies scale, fade, and slide effects simultaneously.
   ```swift
   cell.animateCombined {
       print("Combined animation completed")
   }
   ```

### Usage Example:
Make sure to import the library: `AnimatedTableView`

```swift
import AnimatedTableView

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let cell = tableView.cellForRow(at: indexPath) {
        cell.animateCombined {
            print("Cell animation completed")
        }
    }
}
```

---

## Installation 📦

### Swift Package Manager (SPM)
1. In Xcode, go to **File > Add Packages**.
2. Paste the repository URL:
   ```
   https://github.com/lymanny/iOS-AnimatedTableViewLib.git
   ```
3. Select the version and click **Add Package**.

## Acknowledgements 🌟
The animations in this package are implemented using Apple's UIKit framework, leveraging techniques like `UIView.animate()` and `CGAffineTransform` to create smooth and engaging visual effects.

## Contributing 🤝
Contributions are welcome! Please feel free to submit issues, fork the repository, and create pull requests.

## License 📄
This project is licensed under the [MIT License](LICENSE).

## Author 👩‍💻
lymanny - iOS Developer  
🌐 [Portfolio](https://lymanny.onrender.com)
