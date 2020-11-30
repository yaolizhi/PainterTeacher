//
//  ZSKJMineViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/20.
//

#import "ZSKJMineViewController.h"
#import "ZSKJLoginViewController.h"
#import "ZSKJMineCellItemControl.h"
#import "ZSKJMineNoticeControl.h"
#import "ZSKJMineResumeControl.h"
#import "ZSKJDeviceAlertView.h"

#import "ZSKJMineinformationViewController.h" //!< 个人信息
#import "ZSKJMineServiceViewController.h" //!< 客服
#import "ZSKJSettViewController.h" //!< 设置
#import "ZSKJCoursesViewController.h" //!< 历程
#import "ZSKJScheduleViewController.h" //!< 排课
#import "ZSKJTemporaryViewController.h"  //!<临时课堂
#import "ZSKJMineResumeViewController.h" //!< 我的简历
#import "ZSKJNoticeViewController.h" //!< 我的消息









@interface ZSKJMineViewController ()

@property (nonatomic, strong) UIImageView *headerBgView;
@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *uidLabel;
@property (nonatomic, strong) ZSKJMineNoticeControl *noticeControl; //!< 消息
@property (nonatomic, strong) ZSKJMineResumeControl *resumeControl; //!< 我的简历



@property (nonatomic, strong) ZSKJMineCellItemControl *coursedetailsItems; //!< 课程明细
@property (nonatomic, strong) ZSKJMineCellItemControl *informationItems; //!< 个人信息
@property (nonatomic, strong) ZSKJMineCellItemControl *courseItems; //!< 历程
@property (nonatomic, strong) ZSKJMineCellItemControl *temporaryItems; //!< 临时课堂
@property (nonatomic, strong) ZSKJMineCellItemControl *scheduleItems; //!< 排课
@property (nonatomic, strong) ZSKJMineCellItemControl *deviceItems; //!< 设置信息
@property (nonatomic, strong) ZSKJMineCellItemControl *serviceItems; //!< 客服
@property (nonatomic, strong) ZSKJMineCellItemControl *settItems; //!< 设置









@end

@implementation ZSKJMineViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"我的"];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated bottomBar:NO];
}

-(void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.headerBgView];
        [self.headerBgView addSubview:self.headerView];
        [self.headerBgView addSubview:self.nameLabel];
        [self.headerBgView addSubview:self.uidLabel];
        [self.headerBgView addSubview:self.noticeControl];
        [self.headerBgView addSubview:self.resumeControl];
        
        [self.view addSubview:self.coursedetailsItems];
        [self.view addSubview:self.informationItems];
        [self.view addSubview:self.courseItems];
        [self.view addSubview:self.temporaryItems];
        [self.view addSubview:self.scheduleItems];
        [self.view addSubview:self.deviceItems];
        [self.view addSubview:self.serviceItems];
        [self.view addSubview:self.settItems];
        
        
        [self.headerBgView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.view).offset(self.navbarHeight);
            make.left.right.equalTo(self.view);
            make.height.equalTo(@(300));
            
        }];
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerX.equalTo(self.headerBgView.mas_centerX);
            make.bottom.equalTo(self.headerBgView.mas_centerY);
            make.width.height.equalTo(@(50));
        }];
        
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.headerView.mas_bottom).offset(15);
            make.centerX.equalTo(self.headerBgView.mas_centerX);
                    
        }];
        
        [self.uidLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.nameLabel.mas_bottom).offset(15);
            make.centerX.equalTo(self.headerBgView.mas_centerX);
                    
        }];
        
        
        
        [self.noticeControl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.headerBgView.mas_top).offset(20);
            make.right.equalTo(self.headerBgView.mas_right).offset(-15);
            make.width.height.equalTo(@(40));
                    
        }];
        
        
        [self.resumeControl mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.right.equalTo(self.noticeControl.mas_right);
            make.top.equalTo(self.uidLabel.mas_top);
            make.width.equalTo(@(95));
            make.height.equalTo(@(44));
        }];
        
        
        [self.coursedetailsItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerY.equalTo(self.headerBgView.mas_bottom);
            make.left.equalTo(self.view.mas_left).offset(30);
            make.right.equalTo(self.view.mas_right).offset(-30);
            make.height.equalTo(@(60));
            
        }];
        
        [self.informationItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.coursedetailsItems.mas_bottom).offset(20);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        [self.courseItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.informationItems.mas_bottom);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        [self.temporaryItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.courseItems.mas_bottom);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        [self.scheduleItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.temporaryItems.mas_bottom);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        [self.deviceItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.scheduleItems.mas_bottom);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        [self.serviceItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.deviceItems.mas_bottom);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        
        [self.settItems mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.serviceItems.mas_bottom);
            make.left.height.right.equalTo(self.coursedetailsItems);
        }];
        
        
        
        
    }
}





-(void)itemAction:(UIControl*)sender
{
    switch (sender.tag)
    {
#pragma mark case 1 通知消息
        case 1:
        {
            [self pushViewController:[[ZSKJNoticeViewController alloc]init] animated:YES];
        }
            break;
#pragma mark case 2 简历
        case 2:
        {
            [self pushViewController:[[ZSKJMineResumeViewController alloc]init] animated:YES];
        }
            break;
#pragma mark case 3 课时明细
        case 3:
        {
            
        }
            break;
#pragma mark case 4 个人信息
        case 4:
        {
            
            
            
            
            

            ZSKJMineinformationViewController *information = [[ZSKJMineinformationViewController alloc]init];
            [self pushViewController:information animated:YES];
            
        }
            break;
#pragma mark case 5 历程
        case 5:
        {
            ZSKJCoursesViewController *course = [[ZSKJCoursesViewController alloc]init];
            [self pushViewController:course animated:YES];
        }
            break;
#pragma mark case 6 临时课堂
        case 6:
        {
            [self pushViewController:[[ZSKJTemporaryViewController alloc]init] animated:YES];
        }
            break;
#pragma mark case 7 排课消息
        case 7:
        {
            ZSKJScheduleViewController *schedule = [[ZSKJScheduleViewController alloc]init];
            [self pushViewController:schedule animated:YES];
        }
            break;
#pragma mark case 8 设备检查
        case 8:
        {
            
            [ZSKJDeviceAlertView showWithTitle:@"" witIcon:@"" submitBlock:^(NSString * _Nonnull code) {
            }];
        }
            break;
#pragma mark case 9 客服
        case 9:
        {
            ZSKJMineServiceViewController *service = [[ZSKJMineServiceViewController alloc]init];
            [self pushViewController:service animated:YES];
        }
            break;
#pragma mark case 10 设置
        case 10:
        {
            ZSKJSettViewController *set = [[ZSKJSettViewController alloc]init];
            [self pushViewController:set animated:YES];
        }
            break;
        
            
        default:
            break;
    }
}













#pragma mark - Getter / Setter
-(UIImageView *)headerBgView
{
    if (!_headerBgView)
    {
        _headerBgView = [[UIImageView alloc]init];
        [_headerBgView setImageName:@"mineBg"];
        [_headerBgView setBackgroundColor:KMainColor];
        [_headerBgView setUserInteractionEnabled:YES];
    }
    return _headerBgView;
}


-(UIImageView *)headerView
{
    if (!_headerView)
    {
        _headerView = [[UIImageView alloc]init];
        [_headerView setImageName:@"mineHeader"];
        [_headerView setCornerRadius:25];
        [_headerView setBackgroundColor:KWhiteColor];
    }
    return _headerView;
}


-(UILabel *)nameLabel
{
    if (!_nameLabel)
    {
        _nameLabel = [[UILabel alloc]init];
        [_nameLabel setTextColor:KWhiteColor];
        [_nameLabel setFont:[UIFont systemFontOfSize:15]];
        [_nameLabel setText:@"李嘉"];
    }
    return _nameLabel;
}


-(UILabel *)uidLabel
{
    if (!_uidLabel)
    {
        _uidLabel = [[UILabel alloc]init];
        [_uidLabel setTextColor:KWhiteColor];
        [_uidLabel setFont:[UIFont systemFontOfSize:13]];
        [_uidLabel setText:@"ID：508976324"];
    }
    return _uidLabel;
}

-(ZSKJMineNoticeControl *)noticeControl
{
    if (!_noticeControl)
    {
        _noticeControl = [[ZSKJMineNoticeControl alloc]init];
        [_noticeControl setTag:1];
        [_noticeControl addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _noticeControl;
}

-(ZSKJMineResumeControl *)resumeControl
{
    if (!_resumeControl)
    {
        _resumeControl = [[ZSKJMineResumeControl alloc]init];
        [_resumeControl setCornerRadius:CornerRadius_5];
        [_resumeControl setTag:2];
        [_resumeControl addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _resumeControl;
}






-(ZSKJMineCellItemControl *)coursedetailsItems
{
    if (!_coursedetailsItems)
    {
        _coursedetailsItems = [[ZSKJMineCellItemControl alloc]init];
        [_coursedetailsItems setIcon:@"coursedetails" title:@"课时明细" accessory:@"arrowRight"];
        [_coursedetailsItems setTag:3];
        [_coursedetailsItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _coursedetailsItems;
}

-(ZSKJMineCellItemControl *)informationItems
{
    if (!_informationItems)
    {
        _informationItems = [[ZSKJMineCellItemControl alloc]init];
        [_informationItems setIcon:@"information" title:@"个人信息" accessory:@"arrowRight"];
        [_informationItems setTag:4];
        [_informationItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _informationItems;
}


-(ZSKJMineCellItemControl *)courseItems
{
    if (!_courseItems)
    {
        _courseItems = [[ZSKJMineCellItemControl alloc]init];
        [_courseItems setIcon:@"course" title:@"历程" accessory:@"arrowRight"];
        [_courseItems setTag:5];
        [_courseItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _courseItems;
}



-(ZSKJMineCellItemControl *)temporaryItems
{
    if (!_temporaryItems)
    {
        _temporaryItems = [[ZSKJMineCellItemControl alloc]init];
        [_temporaryItems setIcon:@"temporary" title:@"临时课堂" accessory:@"arrowRight"];
        [_temporaryItems setTag:6];
        [_temporaryItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _temporaryItems;
}



-(ZSKJMineCellItemControl *)scheduleItems
{
    if (!_scheduleItems)
    {
        _scheduleItems = [[ZSKJMineCellItemControl alloc]init];
        [_scheduleItems setIcon:@"schedule" title:@"排课信息" accessory:@"arrowRight"];
        [_scheduleItems setTag:7];
        [_scheduleItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _scheduleItems;
}



-(ZSKJMineCellItemControl *)deviceItems
{
    if (!_deviceItems)
    {
        _deviceItems = [[ZSKJMineCellItemControl alloc]init];
        [_deviceItems setIcon:@"device" title:@"设备检查" accessory:@"arrowRight"];
        [_deviceItems setTag:8];
        [_deviceItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _deviceItems;
}


-(ZSKJMineCellItemControl *)serviceItems
{
    if (!_serviceItems)
    {
        _serviceItems = [[ZSKJMineCellItemControl alloc]init];
        [_serviceItems setIcon:@"service" title:@"客服" accessory:@"arrowRight"];
        [_serviceItems setTag:9];
        [_serviceItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _serviceItems;
}


-(ZSKJMineCellItemControl *)settItems
{
    if (!_settItems)
    {
        _settItems = [[ZSKJMineCellItemControl alloc]init];
        [_settItems setIcon:@"sett" title:@"设置" accessory:@"arrowRight"];
        [_settItems setTag:10];
        [_settItems addTarget:self action:@selector(itemAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _settItems;
}







@end
