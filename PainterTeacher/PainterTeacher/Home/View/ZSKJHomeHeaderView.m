//
//  ZSKJHomeHeaderView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeHeaderView.h"
#import "ZSKJHomeHeaderSoonView.h"
#import "ZSKJHomeHeaderOptionControl.h"
#import "ZSKJExhibitionControl.h" //!< 轮播图




@interface ZSKJHomeHeaderView ()

@property (nonatomic, strong) ZSKJExhibitionControl *topView;
@property (nonatomic, strong) ZSKJHomeHeaderSoonView *soonView;
@property (nonatomic, strong) ZSKJHomeHeaderOptionControl *timeControl;
@property (nonatomic, strong) ZSKJHomeHeaderOptionControl *formalControl; //!< 正式报告
@property (nonatomic, strong) ZSKJHomeHeaderOptionControl *auditionlControl; //!< 试听报告










@end



@implementation ZSKJHomeHeaderView

- (instancetype)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setBackgroundColor:KLineColor];
        [self addSubview:self.topView];
        [self addSubview:self.soonView];
        [self addSubview:self.timeControl];
        [self addSubview:self.formalControl];
        [self addSubview:self.auditionlControl];
        
        
        NSMutableArray *aray = [NSMutableArray array];
        for (int i = 0; i < 5; i++)
        {
            ZSKJExhibitionModel *model = [[ZSKJExhibitionModel alloc]init];
            [model setUrl:[NSString stringWithFormat:@"banner%d",i]];
            
            [aray addObject:model];
        }
        
        [self.topView setItemsArray:aray];
        
        
        
        [self.soonView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.topView.mas_bottom).offset(-40);
            make.left.equalTo(self.mas_left).offset(15);
            make.right.equalTo(self.mas_right).offset(-15);
            make.height.equalTo(@(260));
                    
        }];

        [self.timeControl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.soonView.mas_bottom).offset(30);
            make.left.equalTo(self.soonView.mas_left);
            make.height.equalTo(@(350));
            make.width.equalTo(@(250));
                    
        }];
        
        
        [self.formalControl mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.timeControl.mas_top);
            make.left.equalTo(self.timeControl.mas_right).offset(15);
            make.right.equalTo(self.mas_right).offset(-15);
            make.bottom.equalTo(self.timeControl.mas_centerY).offset(-8);
                    
        }];
        
        
        
        
        [self.auditionlControl mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.timeControl.mas_centerY).offset(8);
            make.left.right.equalTo(self.formalControl);
            make.bottom.equalTo(self.timeControl.mas_bottom);
                    
        }];
        
        
        
    }
    return self;
}



#pragma mark - Private Method
-(void)itemACtion:(UIControl*)sender
{
    if ([self.deletage respondsToSelector:@selector(headerOptionAction:)])
    {
        [self.deletage headerOptionAction:sender.tag];
    }
}



#pragma mark - Getter / Setter
- (ZSKJExhibitionControl *)topView
{
    if (!_topView)
    {
        _topView = [[ZSKJExhibitionControl alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, 250) withType:HorizontalType];
        [_topView setBackgroundColor:[UIColor blueColor]];
    }
    return _topView;
}

-(ZSKJHomeHeaderSoonView *)soonView
{
    if (!_soonView)
    {
        _soonView = [[ZSKJHomeHeaderSoonView alloc]init];
        [_soonView setCornerRadius:CornerRadius_8];
        [_soonView browseAddTarget:self action:@selector(itemACtion:) forControlEvents:UIControlEventTouchUpInside];
        [_soonView lectureAddTarget:self action:@selector(itemACtion:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _soonView;
}


-(ZSKJHomeHeaderOptionControl *)timeControl
{
    if (!_timeControl)
    {
        _timeControl = [[ZSKJHomeHeaderOptionControl alloc]initWithType:1];
        [_timeControl setBackgroundColor:KMainColor];
        [_timeControl setCornerRadius:CornerRadius_8];
        [_timeControl setTitle:@"时间管理" subtitle:@"教师课时明细，请假开关上课时间段" withIcon:@"timeGL"];
        [_timeControl setTag:3];
        [_timeControl addTarget:self action:@selector(itemACtion:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _timeControl;
}


-(ZSKJHomeHeaderOptionControl *)formalControl
{
    if (!_formalControl)
    {
        _formalControl = [[ZSKJHomeHeaderOptionControl alloc]initWithType:2];
        [_formalControl setBackgroundColor:KBlueColor];
        [_formalControl setCornerRadius:CornerRadius_8];
        [_formalControl setTitle:@"正式课报告" subtitle:@"学生的课程学习提交报告" withIcon:@"formalBG"];
        [_formalControl setTag:4];
        [_formalControl addTarget:self action:@selector(itemACtion:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _formalControl;
}

-(ZSKJHomeHeaderOptionControl *)auditionlControl
{
    if (!_auditionlControl)
    {
        _auditionlControl = [[ZSKJHomeHeaderOptionControl alloc]initWithType:3];
        [_auditionlControl setBackgroundColor:KGreenColor];
        [_auditionlControl setCornerRadius:CornerRadius_8];
        [_auditionlControl setTitle:@"试听课报告" subtitle:@"教师课时明细，请假，开关上课时间段" withIcon:@"auditionlBG"];
        [_auditionlControl setTag:5];
        [_auditionlControl addTarget:self action:@selector(itemACtion:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _auditionlControl;
}

@end
