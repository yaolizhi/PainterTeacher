//
//  ZSKJHomeExaminationViewController.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#pragma mark 测试报告



typedef NS_ENUM(NSInteger,InitType)
{
    AuditionlType = 1, //!< 试听课程
    FormalType = 2,    //!< 正式课
};








#import "ZSKJBaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeExaminationViewController : ZSKJBaseViewController


- (instancetype)initWithType:(InitType)type;



@end

NS_ASSUME_NONNULL_END
