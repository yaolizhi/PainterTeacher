//
//  ZSKJEvaluationOptionControl.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@protocol ZSKJEvaluationOptionControlDeletage <NSObject>

-(void)optionItemAction:(NSInteger)index;

@end


@interface ZSKJEvaluationOptionControl : UIControl

- (instancetype)initWithFrame:(CGRect)frame withDeletage:(id<ZSKJEvaluationOptionControlDeletage>)deletage;

-(void)setOneTitle:(NSString*)oneTitle withTwoTitle:(NSString*)twoTitle;


-(void)setIndexTag:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
