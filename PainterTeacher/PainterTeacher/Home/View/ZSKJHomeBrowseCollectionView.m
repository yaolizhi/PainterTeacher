//
//  ZSKJHomeBrowseCollectionView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeBrowseCollectionView.h"
#import "ZSKJHomeBrowseCollectionViewCell.h"
#import "ZSKJHomeBrowseHeaderView.h"





@interface ZSKJHomeBrowseCollectionView() <UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property(nonatomic)NSInteger totalNum;


@end


@implementation ZSKJHomeBrowseCollectionView

- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type
{
    self = [super initWithFrame:frame withType:type];
    if (self)
    {
        [self setBackgroundColor:KLineColor];
        self.delegate = self;
        self.dataSource = self;
        [self registerClass:[ZSKJHomeBrowseHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ZSKJHomeBrowseHeaderView"];
        [self registerClass:[ZSKJHomeBrowseCollectionViewCell class] forCellWithReuseIdentifier:@"ZSKJHomeBrowseCollectionViewCell"];
    }
    return self;
}



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 30;
}



- (ZSKJHomeBrowseCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeBrowseCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZSKJHomeBrowseCollectionViewCell" forIndexPath:indexPath];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


#pragma mark UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((ScreenWidth-90)/5.0, 175);
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


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(ScreenWidth, 480);
}



//设置头尾部内容
-(ZSKJHomeBrowseHeaderView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeBrowseHeaderView *reusableView = nil;

    if (kind ==UICollectionElementKindSectionHeader)
    {
        //定制头部视图的内容
        reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ZSKJHomeBrowseHeaderView" forIndexPath:indexPath];
    }
   return reusableView;
}





#pragma mark - Getter / Setter
- (void)setArray:(NSArray *)array
{
    
    [self reloadData];
}

@end
