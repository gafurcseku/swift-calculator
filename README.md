<h1>Build a Calculator App with Swift 4 And AutoLayout </h1>

A calculator app is a great to start learing and developing a simple iOS application.A calculator app can go from simple to complex very quickly.

<b> key steps fllow to develop Calculator App: </b>

1. Use AutoLayout to design screen and also use stackView to design layout.
2. Design are support all device from iphone 5 to iphone 7 . 
3. Make seperate class for all math operation. 

```swift
class Calculator {

    func Add(firstNumber:Double ,secondNumber:Double) -> Double {
        return firstNumber+secondNumber;
    }
    
    func subtract(firstNumber:Double ,secondNumber:Double  ) -> Double {
        return firstNumber-secondNumber;
    }
    
    func Multiple(firstNumber:Double ,secondNumber:Double  ) -> Double {
        return firstNumber*secondNumber;
    }
    
    func Division(firstNumber:Double ,secondNumber:Double  ) -> Double {
        return firstNumber/secondNumber;
    }
    
}
```

4. Use Tag to define UIButton Action. 

```swift
inputTextField.text = inputTextField.text! + String(sender.tag);
```

<H2> Calculator App Screen Shot</H2>

<b>iPhone 5 Screen shot</b>

![Alt text](https://github.com/gafurcseku/swift-calculator/blob/master/ScreenShot/Iphone%205_01.png "iPhone 5 Screen shot")

<b>iPhone 5 Screen shot</b>

![Alt text](https://github.com/gafurcseku/swift-calculator/blob/master/ScreenShot/Iphone%205_02.png "iPhone 5 Screen shot")

<b>iPhone 7 Screen shot</b>

![Alt text](https://github.com/gafurcseku/swift-calculator/blob/master/ScreenShot/Iphone%207%20Plus_01.png "iPhone 7 Screen shot")

<b>iPhone 7 Screen shot</b>

![Alt text](https://github.com/gafurcseku/swift-calculator/blob/master/ScreenShot/Iphone%207%20Plus_02.png "iPhone 7 Screen shot")

</br>

Develop By:
Md Abdul Gafur.
