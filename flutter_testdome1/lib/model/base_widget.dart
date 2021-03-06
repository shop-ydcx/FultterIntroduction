import 'package:flutter/material.dart';

//final 是运行时赋值之后不可变
//const 是常量

// -----------------  文本 -----------------
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );

  final String _title = '一些测试的数据，就是为了试一下效果';
  final String _autor = 'liujilou';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '<${_title}> -- $_autor 对于有可变状态控件的管理，官方文档是写了有3种模式：控件自己管理状态、交给父控件管理状态以及混合管理。我个人初学对于自己管理比较好理解，对于父控件管理理解起来有点困难，所以只能多看多学。这里写一下两种状态管理的方式和代码，加深自己的印象，尤其是父控件管理方式。',
        textAlign: TextAlign.center, //文字靠那边显示，居中
        style: _textStyle,
        maxLines: 4, //最多几行
        overflow: TextOverflow.ellipsis, //显示省略号
      ),
    );
  }
}

// -----------------  富文本 -----------------
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '富文本的显示',
        style: TextStyle(fontSize: 30, color: Colors.black),
        children: <TextSpan>[
          TextSpan(
              text: '--',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              )),
          TextSpan(
              text: 'liujilou',
              style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ))
        ],
      ),
    );
  }
}

// -----------------  控件大小 -----------------
class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Row(
        children: <Widget>[
          Container(
            color: Colors.red,
            child: Icon(
              Icons.add,
              size: 45,
            ),
//            padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
//            padding: EdgeInsets.all(30),//同上效果
            margin: EdgeInsets.all(20),
            height: 200,
            width: 200,
          )
        ],
      ),
    );
  }
}
