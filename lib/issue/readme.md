# 布局中遇到的问题
## TextField 需要明确宽度
* 如果在row中使用，则报错信息如下
```
An InputDecorator, which is typically created by a TextField, cannot have an unbounded width.
This happens when the parent widget does not provide a finite width constraint. For example, if the InputDecorator is contained by a Row, then its width must be constrained. An Expanded widget or a SizedBox can be used to constrain the width of the InputDecorator or the TextField that contains it.
'package:flutter/src/material/input_decorator.dart':
package:flutter/…/material/input_decorator.dart:1
Failed assertion: line 959 pos 7: 'layoutConstraints.maxWidth < double.infinity'

```
* 解决方法：嵌套一层 Expanded
* Expanded： 使子部件在 Row，Column，Flex 中 填充可用空间
* 官网介绍：`Creates a widget that expands a child of a [Row], [Column], or [Flex] so that the child fills the available space along the flex widget's main axis.`

## 关于键盘弹起屏幕超出边界溢出问题
* 解决方案： 在 Scaffold 组件中增加  resizeToAvoidBottomInset:false , //输入框抵住键盘 ,防止键盘弹起布局溢出

## 设置底部边框
```
  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Color(0xffEDEDED),
                      width: 1,
                    ))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('我的订单'), Icon(Icons.navigate_next)],
                    ),
                  )
```

## 设置图片圆角
```
ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.network(
                    'https://semantic-ui.com/images/avatar2/large/kristy.png',
                    fit: BoxFit.cover,
                    ),
            ),
```

## 关于调用实例中的方法问题
封装了一个类 ，调用实例方法的时候报错，如下调用
```
  result = CacuHelp.cacu(_text,num.parse(leftVal),num.parse(rightVal));
```
报错信息：`Instance member 'cacu' can't be accessed using static access`:不可以静态的访问 实例成员
修改如下：即，调用实例方式的时候，要先初始化创建一个实例
```
  result = CacuHelp().cacu(_text,num.parse(leftVal),num.parse(rightVal));
```

