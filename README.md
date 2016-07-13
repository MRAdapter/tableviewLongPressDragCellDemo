# 长按cell交换位置例子

已经封装好了分类，只需要引入文件，在other link flag 添加 －Objc 即可编译成功<br /> 
然后实现方法[self.tableView agreeLongPressDarg] 就可以实现拖动效果<br /> 
```java  
[self.tableView finishExchange:^(NSIndexPath *fromIndexPath, NSIndexPath *toIndexpath) {
        NSLog(@"%@~~~%@",fromIndexPath,toIndexpath);
    }];
```
可看到交换的位置
