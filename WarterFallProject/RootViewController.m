//
//  RootViewController.m
//  WarterFallProject
//
//  Created by 许菠菠 on 16/5/6.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

#import "RootViewController.h"
#import "WarterCollectionViewController.h"
#import "WaterCollectionViewCell.h"
@interface RootViewController ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    UICollectionView * myCollectionView;
    UICollectionViewFlowLayout * layout;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"瀑布流";
    self.view.backgroundColor = [UIColor lightGrayColor];
    layout = [[UICollectionViewFlowLayout alloc] init];
    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    myCollectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    myCollectionView.dataSource = self;
    myCollectionView.delegate = self;
    myCollectionView.backgroundColor = [UIColor whiteColor];
    [myCollectionView registerClass:[WaterCollectionViewCell class] forCellWithReuseIdentifier:@"cellString"];
    [self.view addSubview:myCollectionView];
    // Do any additional setup after loading the view.
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellString = @"cellString";
    WaterCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellString forIndexPath:indexPath];
    if (cell == nil) {
        NSLog(@"创建cell失败");
    }
    return cell;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 2;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 10;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //设置单元格的尺寸
    CGFloat itemW = (self.view.bounds.size.width - 30)/2;
    return CGSizeMake(itemW, itemW);

}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(5,10,5,10);
}

//- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
//{
//    return 0;//每一列之间的间距
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
