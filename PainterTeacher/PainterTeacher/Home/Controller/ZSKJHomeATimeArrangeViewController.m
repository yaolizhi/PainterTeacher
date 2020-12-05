//
//  ZSKJHomeATimeArrangeViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/27.
//

#import "ZSKJHomeATimeArrangeViewController.h"
#import "ZSKJScheduleOptionControl.h"
#import "ZSKJHomeReportTableView.h"
#import "ZSKJHomeATimeArrangeTableView.h"





@interface ZSKJHomeATimeArrangeViewController () <ZSKJScheduleOptionControlDeletage,ZSKJOptionScrollViewDeletage>

@property (nonatomic, strong) ZSKJOptionScrollView *optionScrollView;
@property (nonatomic, strong) ZSKJScheduleOptionControl *optionControl;
@property (nonatomic, strong) ZSKJHomeATimeArrangeTableView *formalTableView;
@property (nonatomic, strong) ZSKJHomeATimeArrangeTableView *auditionlTableView;
@property (nonatomic, strong) ZSKJHomeReportTableView *reportTableView;







@end

@implementation ZSKJHomeATimeArrangeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"课程明细"];
}




- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.optionControl];
        [self.view addSubview:self.optionScrollView];
        [self.optionScrollView addSubview:self.formalTableView];
        [self.optionScrollView addSubview:self.auditionlTableView];
        [self.optionScrollView addSubview:self.reportTableView];
    }
}






#pragma mark - Deletage Method
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
#pragma mark - Getter / Setter
-(ZSKJScheduleOptionControl *)optionControl
{
    if (!_optionControl)
    {
        _optionControl = [[ZSKJScheduleOptionControl alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, 50) withDeletage:self];
        [_optionControl setOneTitle:@"正式课" withTwoTitle:@"试听课" withThreeTitle:@"成单数"];
    }
    return _optionControl;
}




-(ZSKJOptionScrollView *)optionScrollView
{
    if (!_optionScrollView)
    {
        _optionScrollView = [[ZSKJOptionScrollView alloc]initWithFrame:CGRectMake(0, self.optionControl.bottom, ScreenWidth, (ScreenHeight-self.optionControl.bottom)) witDeletage:self];
        [_optionScrollView setContentSize:CGSizeMake(3*ScreenWidth, (ScreenHeight-self.optionControl.bottom))];
    }
    return _optionScrollView;
}




-(ZSKJHomeATimeArrangeTableView *)formalTableView
{
    if (!_formalTableView)
    {
        _formalTableView = [[ZSKJHomeATimeArrangeTableView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, self.optionScrollView.height)];
        [_formalTableView setEnterType:FormalType];
    }
    return _formalTableView;
}


-(ZSKJHomeATimeArrangeTableView *)auditionlTableView
{
    if (!_auditionlTableView)
    {
        _auditionlTableView = [[ZSKJHomeATimeArrangeTableView alloc]initWithFrame:CGRectMake(self.formalTableView.right, 0, ScreenWidth, self.optionScrollView.height)];
        [_auditionlTableView setEnterType:AuditionlType];
    }
    return _auditionlTableView;
}




-(ZSKJHomeReportTableView *)reportTableView
{
    if (!_reportTableView)
    {
        _reportTableView = [[ZSKJHomeReportTableView alloc]initWithFrame:CGRectMake(self.auditionlTableView.right, 0, ScreenWidth, self.optionScrollView.height)];
    }
    return _reportTableView;
}





@end
