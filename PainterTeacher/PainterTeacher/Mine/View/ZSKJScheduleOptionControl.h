//
//  ZSKJScheduleOptionControl.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ZSKJScheduleOptionControlDeletage <NSObject>

-(void)optionItemAction:(NSInteger)index;

@end




@interface ZSKJScheduleOptionControl : UIControl


- (instancetype)initWithFrame:(CGRect)frame withDeletage:(id<ZSKJScheduleOptionControlDeletage>)deletage;

-(void)setOneTitle:(NSString*)oneTitle withTwoTitle:(NSString*)twoTitle withThreeTitle:(NSString*)threeTitle;


-(void)setIndexTag:(NSInteger)index;

@end

NS_ASSUME_NONNULL_END
