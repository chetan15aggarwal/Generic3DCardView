# Generic 3D Card View


Welcome to Generic 3D Card View, a delightful project showcasing the implementation of a parallax effect on a generic card view using SwiftUI.

## Overview

This project is a testament to creativity and SwiftUI's capabilities, offering a visually engaging parallax effect that brings a 3D-like dimension to a generic card view.

## Features

* Customizable: Tailor the generic card to your preferences with easy customization options. Inject values for the card background, character image, frame, offset, overlay, and more. Make it uniquely yours by experimenting with different layouts and styles.

* Modular Design: The code is thoughtfully organized in a modular and reusable manner. This design choice ensures that integrating the parallax effect into other SwiftUI projects is a breeze. Discover the ease of adapting and expanding upon the provided code.

* Parallax Effect: Immerse yourself in a captivating parallax effect that responds to user interactions. The SwiftUI animations create a sense of depth and movement, enhancing the overall visual experience.

## Getting Started



## Documentation



```bash
            let viewModel = CardViewDetails(
                backgroundImage: "BatmanBGCard",
                characterImage: "batman",
                backgroundFrame: CardViewDetails.Frame(width: 316, height: 417),
                overlayFrame: CardViewDetails.Frame(width: 300, height: 50),
                overlayBlur: 50,
                characterOffset: CardViewDetails.Point(x: 0, y: 5),
                characterFrame: CardViewDetails.Frame(width: 180, height: 180),
                viewBackgroundColor: .black
            )
            Generic3DCardView(viewModel: viewModel)
```
## Demo

NA


## Installation

Install Generic 3D Card View with Swift Package Manager

## Contributions
Contributions and feedback are enthusiastically encouraged. Whether you're reporting issues, suggesting improvements, or adding your touch to the project, your participation is valued.

Embark on the journey of SwiftUI Parallax Card View and infuse your projects with dynamic and playful elements!

## License

[MIT](https://github.com/chetan15aggarwal/Generic3DCardView/blob/1.0.0/LICENSE)

