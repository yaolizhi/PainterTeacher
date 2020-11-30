//
//  ZSKJHomeATimeArrangeViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/27.
//

#import "ZSKJHomeATimeArrangeViewController.h"
#import "ZSKJScheduleOptionControl.h"
#import "ZSKJHomeReportTableView.h"





@interface ZSKJHomeATimeArrangeViewController () <ZSKJScheduleOptionControlDeletage>

@property (nonatomic, strong) ZSKJScheduleOptionControl *optionControl;
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
        [self.view addSubview:self.reportTableView];
        [self.reportTableView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.optionControl.mas_bottom);
            make.left.bottom.right.equalTo(self.view);
        }];
    }
}






#pragma mark - Deletage Method
-(void)optionItemAction:(NSInteger)index
{
    
    
    
    
}






#pragma mark - Getter / Setter
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

-(ZSKJHomeReportTableView *)reportTableView
{
    if (!_reportTableView)
    {
        _reportTableView = [[ZSKJHomeReportTableView alloc]init];
    }
    return _reportTableView;
}





@end
