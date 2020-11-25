//
//  ZSKJMineResumeViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import "ZSKJMineResumeViewController.h"
#import "ZSKJMineResumeCollectionView.h"
#import "SSKJ_ScrollView.h"


@interface ZSKJMineResumeViewController ()


@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) SSKJ_ScrollView *scrollView;
@property (nonatomic, strong) ZSKJMineResumeCollectionView *resumeCollectionView;
@property (nonatomic, strong) UIImageView *bgView;
@property (nonatomic, strong) UIView *topBaordView;
@property (nonatomic, strong) UIImageView *topDecorateView;
@property (nonatomic, strong) UILabel *topLabel;
@property (nonatomic, strong) UIView *bottomBaordView;
@property (nonatomic, strong) UIImageView *bottomDecorateView;
@property (nonatomic, strong) UILabel *bottomLabel;

@property (nonatomic, strong) UIButton *moreBtn; //!< 更多
















@end

@implementation ZSKJMineResumeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"我的简历"];
    [self.view setBackgroundColor:KMainColor];
}


-(void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.scrollView];
        [self.scrollView addSubview:self.bgView];
        [self.bgView addSubview:self.headerView];
        [self.bgView addSubview:self.titleLabel];
        [self.scrollView addSubview:self.topBaordView];
        [self.scrollView addSubview:self.topDecorateView];
        [self.topDecorateView addSubview:self.topLabel];
        
        
        
        
        
        
        [self.scrollView addSubview:self.bottomBaordView];
        [self.scrollView addSubview:self.bottomDecorateView];
        [self.bottomDecorateView addSubview:self.bottomLabel];
        [self.bottomBaordView addSubview:self.resumeCollectionView];
        [self.bottomBaordView addSubview:self.moreBtn];
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.scrollView.mas_top);
            make.left.right.equalTo(self.view);
            make.height.equalTo(@(200));
        }];
        
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.bgView.mas_top).offset(40);
            make.height.width.equalTo(@(60));
            make.centerX.equalTo(self.bgView);
        }];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.headerView.mas_bottom).offset(20);
            make.centerX.equalTo(self.headerView);
        }];
        
        
        
        [self.topDecorateView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerY.equalTo(self.topBaordView.mas_top);
            make.centerX.equalTo(self.topBaordView.mas_centerX);
     
        }];
        
        
        [self.topLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.centerY.equalTo(self.topDecorateView);
        }];
        

        [self.bottomDecorateView mas_makeConstraints:^(MASConstraintMaker *make) {

            make.centerY.equalTo(self.bottomBaordView.mas_top);
            make.centerX.equalTo(self.bottomBaordView.mas_centerX);
        }];

        [self.bottomLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.centerY.equalTo(self.bottomDecorateView);
        }];
        
        
        [self.moreBtn mas_makeConstraints:^(MASConstraintMaker *make)
        {
            
            make.bottom.equalTo(self.bottomBaordView.mas_bottom).offset(-50);
            make.centerX.mas_equalTo(self.bottomBaordView.mas_centerX);
        }];
    }
}




#pragma mark - Private Method
-(void)moreBtnAction:(UIButton*)sender
{
    [sender setHidden:YES];
    [self.scrollView setContentSize:CGSizeMake(ScreenWidth, ScreenHeight+(ScreenHeight/2.0))];
    [self.resumeCollectionView setHeight:ScreenHeight-150];
    [self.bottomBaordView setHeight:ScreenHeight-100];
    [self.scrollView scrollToBottomAnimated:YES];
}










#pragma mark - Getter / Setter
-(SSKJ_ScrollView *)scrollView
{
    if (!_scrollView)
    {
        _scrollView = [[SSKJ_ScrollView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, (ScreenHeight-self.navbarHeight))];
        [_scrollView setContentSize:CGSizeMake(ScreenWidth, ScreenHeight+100)];
    }
    return _scrollView;
}



-(UIImageView *)bgView
{
    if (!_bgView)
    {
        _bgView = [[UIImageView alloc]init];
//        [_bgView setImageName:@"mineResume"];
        [_bgView setContentMode:UIViewContentModeScaleAspectFit];
        [_bgView setBackgroundColor:[UIColor redColor]];
    }
    return _bgView;
}


-(UIImageView *)topDecorateView
{
    if (!_topDecorateView)
    {
        _topDecorateView = [[UIImageView alloc]init];
        [_topDecorateView setImageName:@"mineResumeDecorate"];
    }
    return _topDecorateView;
}


-(UIView *)topBaordView
{
    if (!_topBaordView)
    {
        _topBaordView = [[UIView alloc]initWithFrame:CGRectMake(30, 250, ScreenWidth-60, 275)];
        [_topBaordView setBackgroundColor:KWhiteColor];
        [_topBaordView setCornerRadius:CornerRadius];
    }
    return _topBaordView;
}


-(UILabel *)topLabel
{
    if (!_topLabel)
    {
        _topLabel = [[UILabel alloc]init];
        [_topLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [_topLabel setTextColor:KWhiteColor];
        [_topLabel setText:@"基本信息"];
    }
    return _topLabel;
}




-(UIImageView *)bottomDecorateView
{
    if (!_bottomDecorateView)
    {
        _bottomDecorateView = [[UIImageView alloc]init];
        [_bottomDecorateView setImageName:@"mineResumeDecorate"];
    }
    return _bottomDecorateView;
}


-(UIView *)bottomBaordView
{
    if (!_bottomBaordView)
    {
        _bottomBaordView = [[UIView alloc]initWithFrame:CGRectMake(30, (self.topBaordView.bottom+60), (ScreenWidth-60), 400)];
        [_bottomBaordView setBackgroundColor:KWhiteColor];
        [_bottomBaordView setCornerRadius:CornerRadius];
    }
    return _bottomBaordView;
}


-(UILabel *)bottomLabel
{
    if (!_bottomLabel)
    {
        _bottomLabel = [[UILabel alloc]init];
        [_bottomLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [_bottomLabel setTextColor:KWhiteColor];
        [_bottomLabel setText:@"个人作品"];
    }
    return _bottomLabel;
}





-(ZSKJMineResumeCollectionView *)resumeCollectionView
{
    if (!_resumeCollectionView)
    {
        _resumeCollectionView = [[ZSKJMineResumeCollectionView alloc]initWithFrame:CGRectMake(0, 40,self.bottomBaordView.width, 310) withType:VerticalType];
    }
    return _resumeCollectionView;
}

-(UIButton *)moreBtn
{
    if (!_moreBtn)
    {
        _moreBtn = [[UIButton alloc]init];
        [_moreBtn setImage:imageName(@"mineMore") forState:UIControlStateNormal];
        [_moreBtn addTarget:self action:@selector(moreBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _moreBtn;
}


-(UIImageView *)headerView
{
    if (!_headerView)
    {
        _headerView = [[UIImageView alloc]init];
        [_headerView setBackgroundColor:[UIColor blueColor]];
    }
    return _headerView;
}


- (UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [[UILabel alloc]init];
        [_titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_titleLabel setTextColor:KWhiteColor];
        [_titleLabel setText:@"李嘉 | 28岁"];
    }
    return _titleLabel;
}












@end
