//
//  ZSKJCollectionView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import "ZSKJCollectionView.h"

@implementation ZSKJCollectionView

- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type
{
    UICollectionViewFlowLayout *layouts = [[UICollectionViewFlowLayout alloc] init];
    
    switch (type)
    {
        case VerticalType:
        {
            [layouts setScrollDirection:UICollectionViewScrollDirectionVertical];
        }
            break;
        case HorizontalType:
        {
            [layouts setScrollDirection:UICollectionViewScrollDirectionHorizontal];
        }
            break;
    }
    self = [super initWithFrame:frame collectionViewLayout:layouts];
    if (self)
    {
        [self setBackgroundColor:KLineColor];
    }
    return self;
}


@end
