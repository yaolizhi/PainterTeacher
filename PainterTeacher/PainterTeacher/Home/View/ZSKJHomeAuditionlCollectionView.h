//
//  ZSKJHomeAuditionlCollectionView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#pragma mark 试听课后单





#import <UIKit/UIKit.h>
#import "ZSKJCollectionView.h"
#import "ZSKJHomeCollectionViewCell.h"
#import "ZSKJHomeHeaderView.h"


@protocol ZSKJHomeAuditionlCollectionViewDeletage <NSObject>

-(void)didAuditionlItem:(ZSKJHomeExaminationModel*_Nullable)model;


@end


NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeAuditionlCollectionView : ZSKJCollectionView

- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type withDeletage:(id<ZSKJHomeAuditionlCollectionViewDeletage>)deletage;


@end

NS_ASSUME_NONNULL_END
