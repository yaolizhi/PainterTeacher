//
//  ZSKJCoursesViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import "ZSKJCoursesViewController.h"
#import "ZSKJCoursesCellItemControl.h"


@interface ZSKJCoursesViewController ()

@property (nonatomic, strong) ZSKJCoursesCellItemControl *durationControl;
@property (nonatomic, strong) ZSKJCoursesCellItemControl *countControl;


@end

@implementation ZSKJCoursesViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"历程"];
    
    [self.durationControl setTitle:@"所上课程总时长" duration:@"163小时"];
    [self.countControl setTitle:@"总课时量" duration:@"85小时"];
    
    
}


- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.durationControl];
        [self.view addSubview:self.countControl];
        
        
        [self.durationControl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.view.mas_top).offset(self.navbarHeight+20);
            make.left.equalTo(self.view.mas_left).offset(15);
            make.right.equalTo(self.view.mas_right).offset(-15);
            make.height.equalTo(@(111));
            
        }];
        
        [self.countControl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.durationControl.mas_bottom).offset(15);
            make.left.height.right.equalTo(self.durationControl);
                    
        }];
        
        
        [self.durationControl byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(5, 5)];
        
        [self.countControl byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(5, 5)];
    }
}





#pragma mark - Getter / Setter
-(ZSKJCoursesCellItemControl *)durationControl
{
    if (!_durationControl)
    {
        _durationControl = [[ZSKJCoursesCellItemControl alloc]init];
        [_durationControl setWidth:ScreenWidth-30];
        [_durationControl setHeight:111];
    }
    return _durationControl;
}

-(ZSKJCoursesCellItemControl *)countControl
{
    if (!_countControl)
    {
        _countControl = [[ZSKJCoursesCellItemControl alloc]init];
        [_countControl setWidth:ScreenWidth-30];
        [_countControl setHeight:111];
    }
    return _countControl;
}






@end
