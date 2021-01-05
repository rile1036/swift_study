# Swift Study

## 1. AutoLayout 코드로 정의하기

UI를 구성할 때, storyboard를 사용하면 편하고 시각적으로 확인을 할 수 있지만, storyboard로 제작하면 협업을 할 때, conflict가 상당히 많이 일어나는 문제가 있었습니다.

때문에 코드를 통해 간단한 레이아웃을 제작하였습니다.

```
1. some_View.translatesAutoresizingMaskIntoConstraints = false
2. .isActive = true
3. NSLayoutconstraint.activate()
```

## 2. UITextField UnderLine

Code로 작성 시, Textfield 크기 렌더링이 늦게 된다는 것을 확인하였습니다. 때문에 해당 constraint를 비교하여 넓이를 구해 제작하였습니다.

```
bottomLine = CALayer()
bottomLine.frame = CGRectMake(0.0, view.frame.height - 1, view.frame.width, 1.0)
borderStyle = .none
layer.addSublayer(bottomLine)
```