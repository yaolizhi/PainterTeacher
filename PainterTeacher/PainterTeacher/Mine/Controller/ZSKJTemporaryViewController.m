//
//  ZSKJTemporaryViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJTemporaryViewController.h"
#import "TPPasswordTextView.h"


@interface ZSKJTemporaryViewController ()


@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *tipLabel;
@property (nonatomic, strong) TPPasswordTextView *passwordTextView;





@end

@implementation ZSKJTemporaryViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"临时课堂"];
}

- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.passwordTextView];
        [self.passwordTextView setCenter:CGPointMake(self.view.centerX, 200)];
        [self.passwordTextView setPasswordDidChangeBlock:^(NSString *password) {

            
        }];
    }
}



#pragma mark - Getter / Setter
-(TPPasswordTextView *)passwordTextView
{
    if (!_passwordTextView)
    {
        _passwordTextView = [[TPPasswordTextView alloc]initWithFrame:CGRectMake(0, 0, 300, 60)];
        [_passwordTextView setBackgroundColor:KLineColor];
        [_passwordTextView setElementCount:6];
    }
    return _passwordTextView;
}




-(UIImageView *)iconView
{
    if (!_iconView)
    {
        _iconView = [[UIImageView alloc]init];
        [_iconView setImage:imageName(@"")];
    }
    return _iconView;
}


-(UILabel *)tipLabel
{
    if (!_tipLabel)
    {
        _tipLabel = [[UILabel alloc]init];
        [_tipLabel setTextColor:KTextColor];
        [_tipLabel setFont:[UIFont systemFontOfSize:16]];
        [_tipLabel setText:@"请输入秘钥"];
    }
    return _tipLabel;
}


@end
