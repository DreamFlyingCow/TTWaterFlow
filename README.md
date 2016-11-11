# TTWaterFlow
This is a demo about waterFlow With UICollectionView

## <a id="演示动画"></a>演示动画

<center>
<img src="https://raw.githubusercontent.com/DreamFlyingCow/TTWaterFlow/master/演示.gif" width="25%" height="25%" />
</center>

<center>
演示.gif
</center>

## <a id="如何使用TTLayout"></a>如何使用TTLayout
* cocoapods导入：`pod 'TTLayout'`
* 手动导入：
    * 将`TTLayout`文件夹中的所有文件拽入项目中
    * 导入主头文件：`#import "TTLayout.h"`


## <a id="具体用法:"></a>具体用法:

在适当的位置加上这个代码块, 返回值是item的高度, 这样就可以自动布局了...

```
[self.layout computeIndexCellHeightWithWidthBlock:^CGFloat(NSIndexPath *indexPath, CGFloat width) {
        
        // block返回值就是你的item的高度
        
        int randomNum = arc4random_uniform(200);
        return (CGFloat)randomNum;
    }];


```
