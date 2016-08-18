//
//  ViewController.m
//  testWaterFlow
//
//  Created by 赵春浩 on 16/8/4.
//  Copyright © 2016年 赵春浩. All rights reserved.
//

#import "ViewController.h"
#import "TTLayout.h"

static NSString *ID = @"UICollectionViewCell";
@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) TTLayout *layout;

@end


@implementation ViewController

#pragma mark - 懒加载layout
- (TTLayout *)layout {
    if (_layout == nil) {
        _layout = [[TTLayout alloc] init];
        
    }
    return _layout;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.alpha = 1.0;
    
    self.collectionView.collectionViewLayout = self.layout;
    // 透明时用这个属性(保证collectionView 不会被遮挡, 也不会向下移)
//    self.edgesForExtendedLayout = UIRectEdgeNone;
    // 不透明时用这个属性
    self.extendedLayoutIncludesOpaqueBars = YES;
    
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:ID];
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    self.collectionView.backgroundColor = [UIColor lightGrayColor];
    
    [self.layout computeIndexCellHeightWithWidthBlock:^CGFloat(NSIndexPath *indexPath, CGFloat width) {
        
        int randomNum = arc4random_uniform(200);
        
        return (CGFloat)randomNum;
    }];
    
}

#pragma mark - UICollectionViewDataSource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    cell.contentView.backgroundColor = [self randomColor];
    
    return cell;
}


- (UIColor *)randomColor {
    
    return [UIColor colorWithRed:arc4random_uniform(256) / 255.0 green:arc4random_uniform(256) / 255.0 blue:arc4random_uniform(256) / 255.0 alpha:1.0];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
