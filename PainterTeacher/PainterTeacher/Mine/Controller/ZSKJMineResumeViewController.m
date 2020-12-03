//
//  ZSKJMineResumeViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import "ZSKJMineResumeViewController.h"
#import "ZSKJMineResumeCollectionView.h"
#import "SSKJ_ScrollView.h"
#import "ZSKJNatureCollectionView.h"


@interface ZSKJMineResumeViewController ()


@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) SSKJ_ScrollView *scrollView;
@property (nonatomic, strong) ZSKJMineResumeCollectionView *resumeCollectionView;
@property (nonatomic, strong) UIImageView *bgView;
@property (nonatomic, strong) UIView *topBaordView;
@property (nonatomic, strong) UILabel *tipSchoolLabel; //!< 毕业院校
@property (nonatomic, strong) UILabel *schoolLabel; //!< 毕业院校
@property (nonatomic, strong) UILabel *tipNatureLabel; //!< 性格
@property (nonatomic, strong) UILabel *tipHobbyLabel; //!< 特点

@property (nonatomic, strong) ZSKJNatureCollectionView *natureCollectionView;
@property (nonatomic, strong) ZSKJNatureCollectionView *hobbyCollectionView;





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
    
    
    
    
    
    #pragma mark 设置用户信息
    [self.headerView sd_setImageWithURL:[NSURL URLWithString:[ZSKJUserinfoModel shareUserinfo].headimgurl] placeholderImage:imageName(@"")];
    [self.titleLabel setText:[NSString stringWithFormat:@"%@ | %@岁",[ZSKJUserinfoModel shareUserinfo].name,[ZSKJUserinfoModel shareUserinfo].age]];
    [self.schoolLabel setText:[ZSKJUserinfoModel shareUserinfo].school];
    [self.natureCollectionView setItemObjectArry:[ZSKJUserinfoModel shareUserinfo].nature];
    [self.hobbyCollectionView setItemObjectArry:[ZSKJUserinfoModel shareUserinfo].hobby];
    [self.resumeCollectionView setItemObjectArry:[ZSKJUserinfoModel shareUserinfo].imgs];
    
    
    
    
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
        [self.topBaordView addSubview:self.tipSchoolLabel];
        [self.topBaordView addSubview:self.schoolLabel];
        [self.topBaordView addSubview:self.tipNatureLabel];
        [self.topBaordView addSubview:self.tipHobbyLabel];
        [self.topBaordView addSubview:self.natureCollectionView];
        [self.topBaordView addSubview:self.hobbyCollectionView];
        
        
        
        [self.scrollView addSubview:self.bottomBaordView];
        [self.scrollView addSubview:self.bottomDecorateView];
        [self.bottomDecorateView addSubview:self.bottomLabel];
        [self.bottomBaordView addSubview:self.resumeCollectionView];
        [self.bottomBaordView addSubview:self.moreBtn];
        
        
        
        #pragma mark 基本信息
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.scrollView.mas_top);
            make.left.right.equalTo(self.view);
            make.height.equalTo(@(200));
        }];
        
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.bgView.mas_top).offset(40);
            make.height.width.equalTo(@(80));
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
        

        
        [self.tipSchoolLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.bottom.equalTo(self.tipNatureLabel.mas_top).offset(-40);
            make.left.width.equalTo(self.tipNatureLabel);
        }];
        
        
        [self.schoolLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.equalTo(self.tipSchoolLabel.mas_right).offset(10);
            make.centerY.equalTo(self.tipSchoolLabel);
                    
        }];
        
        
        [self.tipNatureLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.centerY.equalTo(self.topBaordView.mas_centerY);
            make.left.equalTo(self.topBaordView.mas_left).offset(50);
            make.width.equalTo(@(150));
        }];
        
        
        [self.natureCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.tipNatureLabel.mas_right);
            make.centerY.equalTo(self.tipNatureLabel.mas_centerY);
            make.right.equalTo(self.topBaordView.mas_right);
            make.height.equalTo(@(50));
        }];
        
        
        [self.tipHobbyLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.tipNatureLabel.mas_bottom).offset(40);
            make.left.width.equalTo(self.tipNatureLabel);
        }];
        
        [self.hobbyCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.tipHobbyLabel.mas_right);
            make.centerY.equalTo(self.tipHobbyLabel.mas_centerY);
            make.right.equalTo(self.topBaordView.mas_right);
            make.height.equalTo(self.natureCollectionView);
            
        }];
        
        
        
        
        
        
        
        
        #pragma mark  个人作品
        
        
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
        [_bgView setImageName:@"mineResume"];
        [_bgView setContentMode:UIViewContentModeScaleAspectFit];
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
        [_topBaordView setCornerRadius:CornerRadius_8];
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
        [_bottomBaordView setCornerRadius:CornerRadius_8];
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
        [_headerView setCornerRadius:40];
        [_headerView setBackgroundColor:KLineColor];
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
    }
    return _titleLabel;
}


-(UILabel *)tipSchoolLabel
{
    if (!_tipSchoolLabel)
    {
        _tipSchoolLabel = [[UILabel alloc]init];
        [_tipSchoolLabel setFont:[UIFont systemFontOfSize:18]];
        [_tipSchoolLabel setTextAlignment:NSTextAlignmentRight];
        [_tipSchoolLabel setTextColor:KTextColor];
        [_tipSchoolLabel setText:@"毕业院校："];
    }
    return _tipSchoolLabel;
}


-(UILabel *)schoolLabel
{
    if (!_schoolLabel)
    {
        _schoolLabel = [[UILabel alloc]init];
        [_schoolLabel setFont:[UIFont systemFontOfSize:18]];
        [_schoolLabel setTextColor:KTextColor];
    }
    return _schoolLabel;
}


-(UILabel *)tipNatureLabel
{
    if (!_tipNatureLabel)
    {
        _tipNatureLabel = [[UILabel alloc]init];
        [_tipNatureLabel setFont:[UIFont systemFontOfSize:18]];
        [_tipNatureLabel setTextAlignment:NSTextAlignmentRight];
        [_tipNatureLabel setTextColor:KTextColor];
        [_tipNatureLabel setText:@"性格特点："];
    }
    return _tipNatureLabel;
}


-(UILabel *)tipHobbyLabel
{
    if (!_tipHobbyLabel)
    {
        _tipHobbyLabel = [[UILabel alloc]init];
        [_tipHobbyLabel setFont:[UIFont systemFontOfSize:18]];
        [_tipHobbyLabel setTextAlignment:NSTextAlignmentRight];
        [_tipHobbyLabel setTextColor:KTextColor];
        [_tipHobbyLabel setText:@"爱好："];
    }
    return _tipHobbyLabel;
}


-(ZSKJNatureCollectionView *)natureCollectionView
{
    if (!_natureCollectionView)
    {
        _natureCollectionView = [[ZSKJNatureCollectionView alloc]initWithType:2];
    }
    return _natureCollectionView;
}


-(ZSKJNatureCollectionView *)hobbyCollectionView
{
    if (!_hobbyCollectionView)
    {
        _hobbyCollectionView = [[ZSKJNatureCollectionView alloc]initWithType:2];

    }
    return _hobbyCollectionView;
}
















@end
