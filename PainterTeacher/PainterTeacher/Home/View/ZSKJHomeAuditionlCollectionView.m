//
//  ZSKJHomeAuditionlCollectionView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeAuditionlCollectionView.h"
#import "ZSKJHomeCollectionViewCell.h"
#import "ZSKJHomeHeaderView.h"





@interface ZSKJHomeAuditionlCollectionView() <UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>



@end


@implementation ZSKJHomeAuditionlCollectionView

- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type
{
    self = [super initWithFrame:frame withType:type];
    if (self)
    {
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[ZSKJHomeHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ZSKJHomeHeaderView"];
        [self registerClass:[ZSKJHomeCollectionViewCell class] forCellWithReuseIdentifier:@"ZSKJHomeCollectionViewCell"];
    }
    return self;
}



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}



- (ZSKJHomeCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZSKJHomeCollectionViewCell" forIndexPath:indexPath];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


#pragma mark UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((ScreenWidth-45)/2.0, 250);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 15, 15, 15);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}




@end
