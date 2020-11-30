//
//  ZSKJHomeHeaderView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import <UIKit/UIKit.h>


@protocol ZSKJHomeHeaderViewDeletage <NSObject>


/// 代理方法
/// @param sender 传出控件的tag值
-(void)headerOptionAction:(NSInteger)sender;


@end


NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeHeaderView : UICollectionReusableView


@property (nonatomic,weak) id <ZSKJHomeHeaderViewDeletage>  deletage; //!< 代理对象




@end

NS_ASSUME_NONNULL_END
