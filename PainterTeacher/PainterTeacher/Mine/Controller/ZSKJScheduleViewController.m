//
//  ZSKJScheduleViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import "ZSKJScheduleViewController.h"
#import "ZSKJScheduleOptionControl.h"


@interface ZSKJScheduleViewController () <ZSKJScheduleOptionControlDeletage>


@property (nonatomic, strong) ZSKJScheduleOptionControl *optionControl;



@end

@implementation ZSKJScheduleViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"排课信息"];
}


-(void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.optionControl];
    }
}



#pragma mark - Deletage Method
#pragma mark ZSKJScheduleOptionControlDeletage
-(void)optionItemAction:(NSInteger)index
{
    
    
    
    
    
}




#pragma mark - Getter / Setter
-(ZSKJScheduleOptionControl *)optionControl
{
    if (!_optionControl)
    {
        _optionControl = [[ZSKJScheduleOptionControl alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, 50) withDeletage:self];
        [_optionControl setOneTitle:@"待确认" withTwoTitle:@"已确认" withThreeTitle:@"已拒绝"];

    }
    return _optionControl;
}










@end
