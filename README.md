# TTWaterFlow
This is a demo about waterFlow With UICollectionView


<center>
<img src="https://raw.githubusercontent.com/DreamFlyingCow/TTWaterFlow/master/演示.gif" width="25%" height="25%" />
</center>

<center>
演示.gif
</center>



##### 在适当的位置加上这个代码块, 返回值是item的高度, 这样就可以自动布局了
```
[self.layout computeIndexCellHeightWithWidthBlock:^CGFloat(NSIndexPath *indexPath, CGFloat width) {
        
        int randomNum = arc4random_uniform(200);
        
        return (CGFloat)randomNum;
    }];


```
