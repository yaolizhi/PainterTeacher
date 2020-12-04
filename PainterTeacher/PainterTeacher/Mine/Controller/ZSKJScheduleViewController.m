//
//  ZSKJScheduleViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import "ZSKJScheduleViewController.h"
#import "ZSKJScheduleOptionControl.h"
#import "ZSKJScheduleTableView.h"
#import "ZSKJOptionScrollView.h"




@interface ZSKJScheduleViewController () <ZSKJScheduleOptionControlDeletage,ZSKJOptionScrollViewDeletage>


@property (nonatomic, strong) ZSKJScheduleOptionControl *optionControl;
@property (nonatomic, strong) ZSKJOptionScrollView *optionScrollView;


@property (nonatomic, strong) ZSKJScheduleTableView *notConfirmTableView;
@property (nonatomic, strong) ZSKJScheduleTableView *attendTableView;
@property (nonatomic, strong) ZSKJScheduleTableView *notAttendTableView;




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
        [self.view addSubview:self.optionScrollView];
        [self.optionScrollView addSubview:self.notAttendTableView];
        [self.optionScrollView addSubview:self.attendTableView];
        [self.optionScrollView addSubview:self.notConfirmTableView];
    }
}






#pragma mark - Deletage Method
#pragma mark ZSKJScheduleOptionControlDeletage
-(void)optionItemAction:(NSInteger)index
{
    [self.optionScrollView setContentOffPage:index];
}

#pragma mark ZSKJOptionScrollViewDeletage
-(void)optionScrollPage:(NSInteger)page
{
    [self.optionControl setIndexTag:page];
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


-(ZSKJOptionScrollView *)optionScrollView
{
    if (!_optionScrollView)
    {
        _optionScrollView = [[ZSKJOptionScrollView alloc]initWithFrame:CGRectMake(0, self.optionControl.bottom, ScreenWidth, (ScreenHeight-self.optionControl.height)) witDeletage:self];
        [_optionScrollView setContentSize:CGSizeMake((3*ScreenWidth), (ScreenHeight-self.optionControl.height))];
    }
    return _optionScrollView;
}


-(ZSKJScheduleTableView *)notConfirmTableView
{
    if (!_notConfirmTableView)
    {
        _notConfirmTableView = [[ZSKJScheduleTableView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, (ScreenHeight-self.optionControl.height)) witDeletage:self];
        [_notConfirmTableView setType:NotConfirmType];
    }
    return _notConfirmTableView;
}


-(ZSKJScheduleTableView *)attendTableView
{
    if (!_attendTableView)
    {
        _attendTableView = [[ZSKJScheduleTableView alloc]initWithFrame:CGRectMake(ScreenWidth, 0, ScreenWidth, (ScreenHeight-self.optionControl.height)) witDeletage:self];
        [_attendTableView setType:AttendType];
    }
    return _attendTableView;
}


-(ZSKJScheduleTableView *)notAttendTableView
{
    if (!_notAttendTableView)
    {
        _notAttendTableView = [[ZSKJScheduleTableView alloc]initWithFrame:CGRectMake(2*ScreenWidth, 0, ScreenWidth, (ScreenHeight-self.optionControl.height)) witDeletage:self];
        [_notAttendTableView setType:NotAttendType];
    }
    return _notAttendTableView;
}










@end
