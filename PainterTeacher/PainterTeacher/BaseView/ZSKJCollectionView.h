//
//  ZSKJCollectionView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger,FlowLayoutType)
{
    VerticalType = 1, //!< 垂直
    HorizontalType = 2, //!< 水平
};



NS_ASSUME_NONNULL_BEGIN

@interface ZSKJCollectionView : UICollectionView <UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>


- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type;


@end

NS_ASSUME_NONNULL_END
