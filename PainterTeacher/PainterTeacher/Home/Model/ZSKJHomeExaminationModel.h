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


@property (nonatomic, assign) ZSKJHomeExaminationModelType type; //!< 数据类型




@end

NS_ASSUME_NONNULL_END
