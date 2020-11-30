//
//  ZSKJHomeHeaderSoonView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#pragma mark 即将上课




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSKJHomeHeaderSoonView : UIControl


/**
 查看课件触发方法
 */
-(void)browseAddTarget:(nullable id)target action:(nonnull SEL)action forControlEvents:(UIControlEvents)events;

/**
 开始上课触发方法
 */
-(void)lectureAddTarget:(nullable id)target action:(nonnull SEL)action forControlEvents:(UIControlEvents)events;


@end

NS_ASSUME_NONNULL_END
