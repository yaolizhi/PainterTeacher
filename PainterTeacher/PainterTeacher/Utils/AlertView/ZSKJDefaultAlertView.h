//
//  ZSKJDefaultAlertView.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZSKJDefaultAlertView : UIControl



+(void)showWithTitle:(NSString*)title witIcon:(NSString*)icon submitBlock:(void(^)(NSString *code))submitBlcok;


-(void)hide;


-(void)show;





@end

NS_ASSUME_NONNULL_END
