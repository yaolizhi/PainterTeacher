//
//  ZSKJHomeBrowseHeaderView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeBrowseHeaderView.h"


@interface ZSKJHomeBrowseHeaderView ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;
@property (nonatomic, strong) UIView *lineView;
@property (nonatomic, strong) UILabel *coursewareLabel;
@property (nonatomic, strong) UIImageView *preview;


@end

@implementation ZSKJHomeBrowseHeaderView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setBackgroundColor:KWhiteColor];
        [self addSubview:self.preview];
        [self addSubview:self.titleLabel];
        [self addSubview:self.subtitleLabel];
        [self addSubview:self.lineView];
        [self addSubview:self.coursewareLabel];
        
        [self.preview mas_makeConstraints:^(MASConstraintMaker *make) {
                
            make.left.top.right.equalTo(self);
            make.height.equalTo(@(300));
                    
        }];
        
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.preview.mas_bottom).offset(30);
            make.left.equalTo(self.mas_left).offset(15);
                    
        }];
        
        
        [self.subtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.titleLabel.mas_bottom).offset(15);
            make.left.equalTo(self.titleLabel);
        }];
        
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.subtitleLabel.mas_bottom).offset(20);
            make.left.right.equalTo(self);
            make.height.equalTo(@(10));
                    
        }];
        
        [self.coursewareLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.lineView.mas_bottom).offset(20);
            make.left.equalTo(self.titleLabel);
        }];
        
        
        
    }
    return self;
}




#pragma mark - Getter / Setter
-(UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [[UILabel alloc]init];
        [_titleLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [_titleLabel setTextColor:KTextColor];
        [_titleLabel setText:@"狗狗和小鸟"];
    }
    return _titleLabel;
}


-(UILabel *)subtitleLabel
{
    if (!_subtitleLabel)
    {
        _subtitleLabel = [[UILabel alloc]init];
        [_subtitleLabel setFont:[UIFont boldSystemFontOfSize:12]];
        [_subtitleLabel setTextColor:KSubTextColor];
        [_subtitleLabel setText:@"线条与色彩-0基础，初学者"];
    }
    return _subtitleLabel;
}


-(UILabel *)coursewareLabel
{
    if (!_coursewareLabel)
    {
        _coursewareLabel = [[UILabel alloc]init];
        [_coursewareLabel setFont:[UIFont boldSystemFontOfSize:15]];
        [_coursewareLabel setTextColor:KTextColor];
        [_coursewareLabel setText:@"课件"];
    }
    return _coursewareLabel;
}



-(UIImageView *)preview
{
    if (!_preview)
    {
        _preview = [[UIImageView alloc]init];
        [_preview setBackgroundColor:[UIColor purpleColor]];
    }
    return _preview;
}


-(UIView *)lineView
{
    if (!_lineView)
    {
        _lineView = [[UIView alloc]init];
        [_lineView setBackgroundColor:KLineColor];
    }
    return _lineView;
}


@end
