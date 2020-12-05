//
//  ZSKJHomeATimeArrangeTableViewCell.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/5.
//

#import "ZSKJHomeATimeArrangeTableViewCell.h"

@interface ZSKJHomeATimeArrangeTableViewCell ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIView *lineView;


@end

@implementation ZSKJHomeATimeArrangeTableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.lineView];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.equalTo(self.contentView.mas_left).offset(15);
            make.centerY.equalTo(self.contentView.mas_centerY);
                    
        }];
        
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.right.bottom.equalTo(self.contentView);
            make.height.equalTo(@(1));
                    
        }];
    }
    return self;
}


#pragma mark 设置数据源
- (void)setModel:(ZSKJHomeATimeArrangeModel *)model
{
    _model = model;
    [self.titleLabel setText:model.title];
}






#pragma mark - Getter / Setter
-(UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [[UILabel alloc]init];
        [_titleLabel setFont:[UIFont systemFontOfSize:15]];
        [_titleLabel setTextColor:KSubTextColor];
    }
    return _titleLabel;
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
