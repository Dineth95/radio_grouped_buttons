
## radio_grouped_buttons

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This Widget is specially designed for List of grouped radio buttons in grid manner flutter.
You can customize it any time with its all attributes. You can create radio button group in horizontal
manner or vertical manner as you wish. Button width,height spaces between buttons,colors all the things
are customizable.


## Installing
```
dependencies:
    radio_grouped_buttons: 1.0.0+1
```

## Creating radio button
Make sure You have included the parent widget with bounded like container with width and height.
By Default the initial selected value is the first value of the list that you provide for the button
value list.But You can customize your default button value by using initialSelection property.

### All Attributes
```
CustomRadioButton({this.buttonLables,
    this.buttonValues,
    this.radioButtonValue,
    this.buttonWidth,
    this.buttonColor,
    this.selectedColor,
    this.buttonHeight,
    this.horizontal,
    this.enableShape,
    this.elevation,
    this.customShape,
    this.fontSize,
    this.lineSpace,
    this.buttonSpace,
    this.buttonBorderColor,
    this.textColor,
    this.selectedTextColor,
    this.initialSelection,
    this.unselectedButtonBorderColor
  })
```

### creating horizontal radio button list
When It overflow container width It will be added to next line automatically.

```
            Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 160,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                                      print("Button value "+value.toString());
                                      print("Integer value "+index.toString());
                                    },
                  horizontal: true,
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                ),
              ),
```

### creating vertical radio button list
When It overflow container width in one line It will be automatically added to new column
inside the parent widget.

```
            Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                                      print("Button value "+value.toString());
                                      print("Integer value "+index.toString());
                                    },
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                ),
              ),
```

![horizontal and vertical radio buttons](/screenshots/gif2.gif)

### Creating Equal width vertical radio button list

If you want to create the buttons with equal width and height buttonWidth and buttonHeight attributes
are also available

```
            Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: CustomRadioButton(
                  buttonLables: buttonList,
                  buttonValues: buttonList,
                  radioButtonValue: (value,index){
                                      print("Button value "+value.toString());
                                      print("Integer value "+index.toString());
                                    },
                  enableShape: true,
                  buttonSpace: 5,
                  buttonColor: Colors.white,
                  selectedColor: Colors.cyan,
                  buttonWidth: 150,
                ),
              ),
```

### creating equal width horizontal button list

```
                  Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: CustomRadioButton(
                      buttonLables: buttonList,
                      buttonValues: buttonList,
                      radioButtonValue: (value,index){
                                          print("Button value "+value.toString());
                                          print("Integer value "+index.toString());
                                        },
                      horizontal: true,
                      enableShape: true,
                      buttonSpace: 5,
                      buttonColor: Colors.white,
                      selectedColor: Colors.cyan,
                      buttonWidth: 150,
                    ),
                  )
```

![horizontal and vertical radio buttons](/screenshots/gif1.gif)

### Set The Initial selected value as the Third Button
We can set the initial selected button for any index.But when we are concerning an array we have to
set the initial selected value= index(our button index)-1
For an example If we need to set the initial selected button for the third button in our button list.
when we are concerning an array so our button value is 2.

```
    Container(
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    child: CustomRadioButton(
                      buttonLables: buttonList,
                      buttonValues: buttonList,
                      radioButtonValue: (value,index){
                        print("Button value "+value.toString());
                        print("Integer value "+index.toString());
                      },
                      horizontal: true,
                      enableShape: true,
                      buttonSpace: 5,
                      initialSelection: 2,
                      buttonColor: Colors.white,
                      selectedColor: Colors.cyan,
                      buttonWidth: 150,
                    ),
                  )
```