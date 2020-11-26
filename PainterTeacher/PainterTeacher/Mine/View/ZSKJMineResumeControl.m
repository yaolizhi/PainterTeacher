//
//  ZSKJMineResumeControl.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/23.
//

#import "ZSKJMineResumeControl.h"

@interface ZSKJMineResumeControl ()

@property (nonatomic, strong) UIImageView *iconView;
@property (nonatomic, strong) UILabel *resumeLabel;




@end



@implementation ZSKJMineResumeControl


- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setBackgroundColor:KWhiteColor];
        [self addSubview:self.iconView];
        [self addSubview:self.resumeLabel];
        
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.mas_left).offset(10);
            make.centerY.equalTo(self.mas_centerY);
            make.height.width.equalTo(@(30));
            
        }];
        
        [self.resumeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.iconView.mas_right).offset(10);
            make.centerY.equalTo(self.mas_centerY);
                    
        }];
        
    }
    return self;
}


#pragma mark - Getter / Setter
-(UIImageView *)iconView
{
    if (!_iconView)
    {
        _iconView  = [[UIImageView alloc]init];
        [_iconView setImageName:@"resume"];
    }
    return _iconView;
}



-(UILabel *)resumeLabel
{
    if (!_resumeLabel)
    {
        _resumeLabel = [[UILabel alloc]init];
        [_resumeLabel setFont:[UIFont systemFontOfSize:15]];
        [_resumeLabel setTextColor:KMainColor];
        [_resumeLabel setText:@"简历"];
    }
    return _resumeLabel;
}



@end
