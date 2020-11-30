//
//  ZSKJUserinfoModel.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/27.
//

#pragma mark 全局单例，用于项目中需要访问用户信息的数据模型




#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSKJUserinfoModel : NSObject


+(ZSKJUserinfoModel *)shareUserinfo;





@end

NS_ASSUME_NONNULL_END
