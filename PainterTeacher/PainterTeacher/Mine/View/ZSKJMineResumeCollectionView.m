//
//  ZSKJMineResumeCollectionView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import "ZSKJMineResumeCollectionView.h"
#import "ZSKJMineResumeCollectionViewCell.h"


@implementation ZSKJMineResumeCollectionView



- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type
{
    self = [super initWithFrame:frame withType:type];
    if (self)
    {
        [self setBackgroundColor:KWhiteColor];
        self.delegate = self;
        self.dataSource = self;
        
        [self registerClass:[ZSKJMineResumeCollectionViewCell class] forCellWithReuseIdentifier:@"ZSKJMineResumeCollectionViewCell"];
    }
    return self;
}


-(void)setItemObjectArry:(NSArray *)itemArry
{
    [self.itemArry setArray:itemArry];
    [self reloadData];
}




#pragma mark - Deletage Method
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [self.itemArry count];
}



- (ZSKJMineResumeCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJMineResumeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZSKJMineResumeCollectionViewCell" forIndexPath:indexPath];
    [cell setUrl:[self.itemArry objectAtIndex:indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


#pragma mark UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((ScreenWidth-120)/3.0, 180);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 15.0, 15.0, 15.0);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 7.5;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 7.5;
}







#pragma mark - Getter / Setter
- (void)setArray:(NSArray *)array
{
    
    [self reloadData];
}




@end
