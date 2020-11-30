//
//  ZSKJUserinfoModel.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/27.
//

#import "ZSKJUserinfoModel.h"

@implementation ZSKJUserinfoModel

static ZSKJUserinfoModel *shareUserinfo = nil;

+(ZSKJUserinfoModel *)shareUserinfo
{
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken,
        ^{
            shareUserinfo = [[self alloc] init];
        });
  
    return shareUserinfo;
}




@end
