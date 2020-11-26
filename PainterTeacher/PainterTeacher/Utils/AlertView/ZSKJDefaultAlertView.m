//
//  ZSKJDefaultAlertView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import "ZSKJDefaultAlertView.h"

@interface ZSKJDefaultAlertView ()


@property (nonatomic, strong) UIView *boardView; //!< 承载面板
@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *submitBtn; //!< 提交按钮
@property (nonatomic, copy) void (^submitBlock)(NSString *code);





@end

@implementation ZSKJDefaultAlertView


+(void)showWithTitle:(NSString*)title witIcon:(NSString*)icon submitBlock:(void(^)(NSString *code))submitBlcok
{
    ZSKJDefaultAlertView *alert = [[ZSKJDefaultAlertView alloc]initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight)];
    [alert.titleLabel setText:title];
    [alert.iconView setBackgroundColor:KMainColor];
    [alert.iconView setImageName:icon];
    [alert addTarget:alert action:@selector(hide) forControlEvents:UIControlEventTouchUpInside];
    
    alert.submitBlock = submitBlcok;
    [alert show];
}





-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {

        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.3];
        
        
        [self addSubview:self.boardView];
        [self.boardView addSubview:self.iconView];
        [self.boardView addSubview:self.titleLabel];
        [self.boardView addSubview:self.submitBtn];
        
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.boardView.mas_top).offset(50);
            make.width.height.equalTo(@(50));
            make.centerX.equalTo(self.boardView);
            
        }];
        
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.iconView.mas_bottom).offset(30);
            make.centerX.equalTo(self.boardView);
        }];
        
        
        [self.submitBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.bottom.right.equalTo(self.boardView);
            make.height.equalTo(@(44));
            
        }];
        
        
        
    }
    return self;
}











#pragma mark - Private Method
-(void)show
{
    [AppWindow addSubview:self];
}

// 隐藏
-(void)hide
{
    if (self.submitBlock)
    {
        self.submitBlock(@"确定");
    }
    [self removeFromSuperview];
}





#pragma mark - Getter / Setter
-(UIView *)boardView
{
    if (nil == _boardView)
    {
        _boardView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 435, 225)];
        [_boardView setBackgroundColor:KWhiteColor];
        [_boardView setCenter:CGPointMake(self.centerX, self.centerY)];
        [_boardView byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(10, 10)];
    }
    return _boardView;
}


- (UIImageView *)iconView
{
    if (!_iconView)
    {
        _iconView = [[UIImageView alloc]init];
    }
    return _iconView;
}









-(UILabel *)titleLabel
{
    if (nil == _titleLabel)
    {
        _titleLabel = [[UILabel alloc]init];
        [_titleLabel setFont:[UIFont systemFontOfSize:14]];
        [_titleLabel setTextColor:KTextColor];
    }
    return _titleLabel;
}


-(UIButton *)submitBtn
{
    if (!_submitBtn)
    {
        _submitBtn = [[UIButton alloc]init];
        [_submitBtn setBackgroundColor:KMainColor];
        [_submitBtn setTitle:@"确定" forState:UIControlStateNormal];
        [_submitBtn setTitleColor:KWhiteColor forState:UIControlStateNormal];
        [_submitBtn addTarget:self action:@selector(hide) forControlEvents:UIControlEventTouchUpInside];
    }
    return _submitBtn;
}

@end
