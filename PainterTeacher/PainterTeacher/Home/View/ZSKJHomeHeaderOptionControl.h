//
//  ZSKJHomeHeaderOptionControl.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeHeaderOptionControl : UIControl

/// 创建不同类型
/// @param type 1 课时管理 2 正式课报告 3 试听课报告
- (instancetype)initWithType:(NSInteger)type;


-(void)setTitle:(NSString*)title
       subtitle:(NSString*)subtitle
       withIcon:(NSString*)icon;



@end

NS_ASSUME_NONNULL_END
