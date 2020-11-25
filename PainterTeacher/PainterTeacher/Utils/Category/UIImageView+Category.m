//
//  UIImageView+Category.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import "UIImageView+Category.h"

@implementation UIImageView (Category)

/// 设置图片名称
/// @param name 图片名称
-(void)setImageName:(NSString*)name
{
    [self setImage:[UIImage imageNamed:name]];
}

@end
