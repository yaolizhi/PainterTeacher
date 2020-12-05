//
//  ZSKJHomeExaminationModel.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/30.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSInteger,ZSKJHomeExaminationModelType)
{
    FormalExaminationType = 1,
    AuditionlExaminationType = 2,
};



NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeExaminationModel : NSObject


@property (nonatomic, assign) ZSKJHomeExaminationModelType modelType; //!< 数据类型



@property (nonatomic, copy) NSString *course_id;
@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSString *time;
@property (nonatomic, copy) NSString *status;
@property (nonatomic, assign) NSInteger type; //!< 1 正式课 2 试听课
@property (nonatomic, copy) NSString *title; //!< 课程标题
@property (nonatomic, copy) NSString *img; //!< 课程图片
@property (nonatomic, copy) NSString *user_name; //!< 用户名字
@property (nonatomic, copy) NSString *user_age; //!< 用户年龄
@property (nonatomic, copy) NSString *user_headimgurl;  //!< 用户头像
@property (nonatomic, copy) NSString *type_text;  //!< type中文标示
@property (nonatomic, copy) NSString *status_text; //!< status中文标示
@property (nonatomic, copy) NSString *report_id; //!< 报告id






@end

NS_ASSUME_NONNULL_END
