//
//  ZSKJCoursesCellItemControl.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import "ZSKJCoursesCellItemControl.h"

@interface ZSKJCoursesCellItemControl ()

@property (nonatomic, strong) UILabel *titleLabel; //!< 标题
@property (nonatomic, strong) UILabel *durationLabel; //!< 时长
@property (nonatomic, strong) UIView *lineView; //!< 分割线


@end

@implementation ZSKJCoursesCellItemControl


- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setBackgroundColor:KWhiteColor];
        
        [self addSubview:self.titleLabel];
        [self addSubview:self.durationLabel];
        [self addSubview:self.lineView];
        
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.mas_top);
            make.left.equalTo(self.mas_left).offset(15);
            make.height.equalTo(@(50));
            
        }];
        
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.titleLabel.mas_bottom);
            make.left.right.equalTo(self);
            make.height.equalTo(@(1));
        }];
        
        [self.durationLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.top.equalTo(self.lineView.mas_bottom);
            make.left.equalTo(self.titleLabel);
            make.height.equalTo(@(60));
        }];
    }
    return self;
}

-(void)setTitle:(NSString*)title duration:(NSString*)duration
{
    [self.titleLabel setText:title];
    [self.durationLabel setText:duration];
}




#pragma mark - Getter / Setter
-(UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [[UILabel alloc]init];
        [_titleLabel setFont:[UIFont systemFontOfSize:20]];
        [_titleLabel setTextColor:KTextColor];
    }
    return _titleLabel;
}


-(UILabel *)durationLabel
{
    if (!_durationLabel)
    {
        _durationLabel = [[UILabel alloc]init];
        [_durationLabel setFont:[UIFont boldSystemFontOfSize:30]];
        [_durationLabel setTextColor:KMainColor];
    }
    return _durationLabel;
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
