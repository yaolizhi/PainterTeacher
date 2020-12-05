//
//  ZSKJHomeReportTableViewCell.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/27.
//

#import "ZSKJHomeReportTableViewCell.h"

@interface ZSKJHomeReportTableViewCell ()


@property (nonatomic, strong) UILabel *dateLabel;
@property (nonatomic, strong) UIView *topLineView;
@property (nonatomic, strong) UILabel *orderTipLabel; //!< 成单时间
@property (nonatomic, strong) UILabel *orderLabel;
@property (nonatomic, strong) UILabel *beginTipLabel; //!< 开课时间
@property (nonatomic, strong) UILabel *beginLabel;
@property (nonatomic, strong) UIView *bottomLineView;









@end

@implementation ZSKJHomeReportTableViewCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self.contentView addSubview:self.dateLabel];
        [self.contentView addSubview:self.topLineView];
        [self.contentView addSubview:self.orderTipLabel];
        [self.contentView addSubview:self.orderLabel];
        [self.contentView addSubview:self.beginTipLabel];
        [self.contentView addSubview:self.beginLabel];
        [self.contentView addSubview:self.bottomLineView];
        
        
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.contentView.mas_top);
            make.left.equalTo(self.contentView.mas_left).offset(15);
            make.height.equalTo(@(60));
                    
        }];
        
        [self.topLineView mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.dateLabel.mas_bottom);
            make.left.equalTo(self.contentView.mas_left).offset(15);
            make.right.equalTo(self.contentView.mas_right).offset(-15);
            make.height.equalTo(@(1));
            
        }];
        
        [self.orderTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.topLineView.mas_bottom).offset(18);
            make.left.equalTo(self.dateLabel.mas_left);
        }];
    
        [self.orderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(self.contentView.mas_right).offset(-15);
            make.centerY.equalTo(self.orderTipLabel.mas_centerY);
                    
        }];
        
        [self.beginTipLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.orderTipLabel.mas_bottom).offset(25);
            make.left.equalTo(self.dateLabel.mas_left);
                    
        }];
        
        [self.beginLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(self.contentView.mas_right).offset(-15);
            make.centerY.equalTo(self.beginTipLabel.mas_centerY);
                    
        }];
        
        
        [self.bottomLineView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            
            make.left.bottom.right.equalTo(self.contentView);
            make.height.equalTo(@(1));
            
        }];
    }
    return self;
}



-(void)setModel:(ZSKJHomeReportModel *)model
{
    _model = model;
    [self.dateLabel setText:model.date];
    [self.beginLabel setText:model.beDate];
    [self.orderLabel setText:model.orderDate];
}


#pragma mark - Getter / Setter
-(UILabel *)dateLabel
{
    if (!_dateLabel)
    {
        _dateLabel = [[UILabel alloc]init];
        [_dateLabel setFont:[UIFont boldSystemFontOfSize:17]];
        [_dateLabel setTextColor:KTextColor];
    }
    return _dateLabel;
}


-(UILabel *)orderTipLabel
{
    if (!_orderTipLabel)
    {
        _orderTipLabel = [[UILabel alloc]init];
        [_orderTipLabel setFont:[UIFont systemFontOfSize:14]];
        [_orderTipLabel setTextColor:KTextColor];
        [_orderTipLabel setText:@"成单时间"];
    }
    return _orderTipLabel;
}


-(UILabel *)orderLabel
{
    if (!_orderLabel)
    {
        _orderLabel = [[UILabel alloc]init];
        [_orderLabel setFont:[UIFont systemFontOfSize:14]];
        [_orderLabel setTextColor:KSubTextColor];
    }
    return _orderLabel;
}



-(UILabel *)beginTipLabel
{
    if (!_beginTipLabel)
    {
        _beginTipLabel = [[UILabel alloc]init];
        [_beginTipLabel setFont:[UIFont systemFontOfSize:14]];
        [_beginTipLabel setTextColor:KTextColor];
        [_beginTipLabel setText:@"开课时间"];
    }
    return _beginTipLabel;
}


-(UILabel *)beginLabel
{
    if (!_beginLabel)
    {
        _beginLabel = [[UILabel alloc]init];
        [_beginLabel setFont:[UIFont systemFontOfSize:14]];
        [_beginLabel setTextColor:KSubTextColor];
    }
    return _beginLabel;
}


-(UIView *)topLineView
{
    if (!_topLineView)
    {
        _topLineView = [[UIView alloc]init];
        [_topLineView setBackgroundColor:KLineColor];
    }
    return _topLineView;
}

-(UIView *)bottomLineView
{
    if (!_bottomLineView)
    {
        _bottomLineView = [[UIView alloc]init];
        [_bottomLineView setBackgroundColor:KLineColor];
    }
    return _bottomLineView;
}







@end
