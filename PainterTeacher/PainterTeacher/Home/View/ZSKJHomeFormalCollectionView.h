//
//  ZSKJHomeFormalCollectionView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#pragma mark 正式课后单






#import <UIKit/UIKit.h>
#import "ZSKJCollectionView.h"
#import "ZSKJHomeCollectionViewCell.h"
#import "ZSKJHomeHeaderView.h"


@protocol ZSKJHomeFormalCollectionViewDeletage <NSObject>

-(void)didFormalItem:(ZSKJHomeExaminationModel*_Nullable)model;


@end


NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeFormalCollectionView : ZSKJCollectionView

- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type withDeletage:(id<ZSKJHomeFormalCollectionViewDeletage>)deletage;




@end

NS_ASSUME_NONNULL_END
