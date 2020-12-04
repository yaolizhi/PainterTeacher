//
//  ZSKJScheduleModel.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/4.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger,ZSKJScheduleModelType)
{
    NotConfirmType = 1, //!< 未确认
    AttendType = 2, //!< 确定参加
    NotAttendType = 3, //!< 拒绝不能参加
};






NS_ASSUME_NONNULL_BEGIN

@interface ZSKJScheduleModel : NSObject


@property (nonatomic, assign) ZSKJScheduleModelType modelType;


@property (nonatomic, copy) NSString *date; //!< 日期
@property (nonatomic, copy) NSString *time; //!< 时间
@property (nonatomic, copy) NSString *teacher_takein; //!< 1用户确认 0 待确认 -1 已拒绝
@property (nonatomic, copy) NSString *type; //!< 1 正式课 2试听课
@property (nonatomic, copy) NSString *type_text; //!< 试听课
@property (nonatomic, copy) NSString *user_name; //!< 用户名称
@property (nonatomic, copy) NSString *user_age; //!< 用户年龄
@property (nonatomic, copy) NSString *user_headimgurl; //!< 用户头像




@end

NS_ASSUME_NONNULL_END
