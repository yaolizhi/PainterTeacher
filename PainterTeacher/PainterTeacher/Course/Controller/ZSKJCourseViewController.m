//
//  ZSKJCourseViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/20.
//

#import "ZSKJCourseViewController.h"
#import "ZSKJDeviceAlertView.h"


@interface ZSKJCourseViewController ()



@end

@implementation ZSKJCourseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}






-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated bottomBar:NO];
}







- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
    
    [ZSKJDeviceAlertView showWithTitle:@"" witIcon:@"" submitBlock:^(NSString * _Nonnull code) {
    }];
    
    
    
}
@end
