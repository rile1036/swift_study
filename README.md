# Swift Study

## 1. AutoLayout 코드로 정의하기

UI를 구성할 때, storyboard를 사용하면 편하고 시각적으로 확인을 할 수 있지만, storyboard로 제작하면 협업을 할 때, conflict가 상당히 많이 일어나는 문제가 있었습니다.

때문에 코드를 통해 간단한 레이아웃을 제작하였습니다.

```
1. some_View.translatesAutoresizingMaskIntoConstraints = false
2. .isActive = true
3. NSLayoutconstraint.activate()
```