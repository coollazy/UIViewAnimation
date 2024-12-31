# UIViewAnimation

## Introduation

An Animation Extensions of the UIView


## How to install

- Package.swift 的 dependencies 增加

```
.package(name: "UIViewAnimation", url: "https://github.com/coollazy/UIViewAnimation.git", .upToNextMajor(from: "3.0.0")),
```

- target 的 dependencies 增加

```
.product(name: "UIViewAnimation", package: "UIViewAnimation"),
```


## How to use

- Import the UIViewAnimation in the file

```swift
	import UIViewAnimation
```

- Use the view instance to execute the animation method

```swift
	let view = UIView()
	
	// Call the animation you want as below
	view.animationFlipFromRight()
	
	view.animationPageCurl()
	
	view.animationCubeFromTop()
	
	view.animationRotate()
```

![](./Resources/demo.gif)



## License

The source code is distributed under the nonviral [MIT License](https://opensource.org/licenses/mit-license.php). It's the simplest most permissive license available.
