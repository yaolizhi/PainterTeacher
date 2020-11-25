//
//  ZSKJHomeHeaderOptionControl.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeHeaderOptionControl.h"

@interface ZSKJHomeHeaderOptionControl ()


@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;
@property (nonatomic, strong) UIImageView *iconView;





@end

@implementation ZSKJHomeHeaderOptionControl


/// 创建不同类型
/// @param type 1 课时管理 2 正式课报告 3 试听课报告
- (instancetype)initWithType:(NSInteger)type
{
    self = [super init];
    if (self)
    {
        [self addSubview:self.titleLabel];
        [self addSubview:self.subtitleLabel];
        [self addSubview:self.iconView];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.top.equalTo(self).offset(15);
            
        }];
        
        
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.bottom.right.equalTo(self).offset(-15);
        }];
        
        
        
        switch (type)
        {
            case 1:
            {
                [self.subtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                   
                    make.top.equalTo(self.titleLabel.mas_bottom).offset(15);
                    make.left.equalTo(self.titleLabel.mas_left);
                    make.right.equalTo(self.mas_right).offset(-15);
                }];
                
            }
                break;
            case 2:
            case 3:
            {
    
                [self.subtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
                   
                    make.top.equalTo(self.titleLabel.mas_bottom).offset(15);
                    make.left.equalTo(self.titleLabel.mas_left);
                }];
                
            }
                break;
        }
    }
    return self;
}



-(void)setTitle:(NSString*)title
       subtitle:(NSString*)subtitle
       withIcon:(NSString*)icon
{
    [self.titleLabel setText:title];
    [self.subtitleLabel setText:subtitle];
    [self.iconView setImage:imageName(icon)];
}






#pragma mark - Getter / Setter
-(UIImageView *)iconView
{
    if (!_iconView)
    {
        _iconView = [[UIImageView alloc]init];
    }
    return _iconView;
}


-(UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [[UILabel alloc]init];
        [_titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
        [_titleLabel setTextColor:KWhiteColor];
    }
    return _titleLabel;
}


-(UILabel *)subtitleLabel
{
    if (!_subtitleLabel)
    {
        _subtitleLabel = [[UILabel alloc]init];
        [_subtitleLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [_subtitleLabel setTextColor:KWhiteColor];
        [_subtitleLabel setNumberOfLines:0];
    }
    return _subtitleLabel;
}

@end
