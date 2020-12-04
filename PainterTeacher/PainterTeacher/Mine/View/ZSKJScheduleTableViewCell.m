//
//  ZSKJScheduleTableViewCell.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/4.
//

#import "ZSKJScheduleTableViewCell.h"

@interface ZSKJScheduleTableViewCell ()

@property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UILabel *dateLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *longtermLabel;
@property (nonatomic, strong) UIView *lineView; //!< 分割线
@property (nonatomic, strong) UIButton *detailsBtn; //!< 学员详情
@property (nonatomic, strong) UILabel *statusLabel; //!< 课程状态
@property (nonatomic, strong) UIButton *attendBtn; //!< 能够参加
@property (nonatomic, strong) UIButton *notAttendBtn; //!< 不能够参加




@end

@implementation ZSKJScheduleTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self.contentView setBackgroundColor:KLineColor];
        [self.contentView addSubview:self.bgView];
        [self.bgView addSubview:self.headerView];
        [self.bgView addSubview:self.dateLabel];
        [self.bgView addSubview:self.nameLabel];
        [self.bgView addSubview:self.longtermLabel];
        [self.bgView addSubview:self.statusLabel];
        [self.bgView addSubview:self.lineView];
        [self.bgView addSubview:self.detailsBtn];
        [self.bgView addSubview:self.attendBtn];
        [self.bgView addSubview:self.notAttendBtn];
        
        
        
        [self.bgView mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.top.equalTo(self.contentView).offset(15);
            make.right.equalTo(self.contentView.mas_right).offset(-15);
            make.bottom.equalTo(self.contentView.mas_bottom);
            
        }];
        
        [self.dateLabel mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.top.equalTo(self.bgView).offset(15);
            make.height.equalTo(@(40));
            
        }];
        
        [self.longtermLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(self.bgView.mas_right).offset(-15);
            make.centerY.equalTo(self.dateLabel.mas_centerY);
        }];
        
        
        [self.lineView mas_makeConstraints:^(MASConstraintMaker *make) {

            make.top.equalTo(self.dateLabel.mas_bottom);
            make.left.right.equalTo(self.bgView);
            make.height.equalTo(@(1));
        }];
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.lineView.mas_bottom).offset(25);
            make.left.equalTo(self.dateLabel.mas_left);
            make.height.width.equalTo(@(50));
                    
        }];
        
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.headerView.mas_right).offset(15);
            make.centerY.equalTo(self.headerView.mas_centerY);
                    
        }];
        
        
        [self.detailsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerY.equalTo(self.nameLabel.mas_centerY);
            make.left.equalTo(self.nameLabel.mas_right).offset(10);
        }];
        
        
        [self.statusLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            
            make.right.equalTo(self.bgView.mas_right).offset(-15);
            make.centerY.equalTo(self.headerView.mas_centerY);
            make.height.equalTo(@(30));
            make.width.equalTo(@(80));
        }];
        
        
        
        [self.attendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(self.bgView.mas_right).offset(-15);
            make.height.equalTo(@(35));
            make.width.equalTo(@(100));
            make.centerY.equalTo(self.headerView.mas_centerY);
        }];
        
        
        [self.notAttendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(self.attendBtn.mas_left).offset(-15);
            make.centerY.height.width.equalTo(self.attendBtn);
        }];
        
        
        
        
        
        
        
        
        
        

        
    }
    return self;
}



-(void)setModel:(ZSKJScheduleModel *)model
{
    _model = model;
    
    [self.dateLabel setText:[NSString stringWithFormat:@"%@ %@",model.date,model.time]];
    [self.nameLabel setText:[NSString stringWithFormat:@"%@（%@）",model.user_name,model.user_age]];
    [self.longtermLabel setText:model.type_text];
    
    
    [self.detailsBtn setHidden:YES];
    [self.notAttendBtn setHidden:YES];
    [self.attendBtn setHidden:YES];
    [self.statusLabel setHidden:YES];
    
    
    switch (model.modelType)
    {
        case NotAttendType:
        {
            [self.detailsBtn setHidden:NO];
            [self.statusLabel setHidden:NO];
            [self.statusLabel setText:@"已拒绝"];
        }
            break;
        case NotConfirmType:
        {
            [self.notAttendBtn setHidden:NO];
            [self.attendBtn setHidden:NO];
        }
            break;
        case AttendType:
        {
            [self.detailsBtn setHidden:NO];
            [self.statusLabel setHidden:NO];
            [self.statusLabel setText:@"已确定"];
        }
            break;
    }
    
    
    
    
}


#pragma mark - Getter / Setter
-(UIView *)bgView
{
    if (!_bgView)
    {
        _bgView = [[UIView alloc]init];
        [_bgView setBackgroundColor:KWhiteColor];
        [_bgView setCornerRadius:CornerRadius_8];
    }
    return _bgView;
}


-(UIImageView *)headerView
{
    if (!_headerView)
    {
        _headerView = [[UIImageView alloc]init];
        [_headerView setContentMode:UIViewContentModeScaleAspectFit];
        [_headerView setBackgroundColor:KLineColor];
        [_headerView setCornerRadius:25.0];
    }
    return _headerView;
}






-(UILabel *)dateLabel
{
    if (!_dateLabel)
    {
        _dateLabel = [[UILabel alloc]init];
        [_dateLabel setFont:[UIFont boldSystemFontOfSize:18]];
        [_dateLabel setTextColor:KTextColor];
    }
    return _dateLabel;
}


-(UILabel *)longtermLabel
{
    if (!_longtermLabel)
    {
        _longtermLabel = [[UILabel alloc]init];
        [_longtermLabel setFont:[UIFont systemFontOfSize:14]];
        [_longtermLabel setTextColor:KBlueColor];
    }
    return _longtermLabel;
}



-(UILabel *)nameLabel
{
    if (!_nameLabel)
    {
        _nameLabel = [[UILabel alloc]init];
        [_nameLabel setFont:[UIFont systemFontOfSize:15]];
        [_nameLabel setTextColor:KTextColor];
    }
    return _nameLabel;
}

-(UILabel *)statusLabel
{
    if (!_statusLabel)
    {
        _statusLabel = [[UILabel alloc]init];
        [_statusLabel setTextAlignment:NSTextAlignmentCenter];
        [_statusLabel setFont:[UIFont systemFontOfSize:14]];
        [_statusLabel setTextColor:KSubTextColor];
        [_statusLabel setBackgroundColor:KGrayBGColor];
        [_statusLabel setText:@"已确认"];
        [_statusLabel setCornerRadius:15];
    }
    return _statusLabel;
}


-(UIButton *)detailsBtn
{
    if (!_detailsBtn)
    {
        _detailsBtn = [[UIButton alloc]init];
        [_detailsBtn setTitle:@"查看学员详情 >" forState:UIControlStateNormal];
        [_detailsBtn setTitleColor:KSubTextColor forState:UIControlStateNormal];
        [_detailsBtn.titleLabel setFont:[UIFont systemFontOfSize:14]];
    }
    return _detailsBtn;
}


-(UIButton *)attendBtn
{
    if (!_attendBtn)
    {
        _attendBtn = [[UIButton alloc]init];
        [_attendBtn setTitle:@"确认出席" forState:UIControlStateNormal];
        [_attendBtn setTitleColor:KWhiteColor forState:UIControlStateNormal];
        [_attendBtn.titleLabel setFont:[UIFont systemFontOfSize:13.0]];
        [_attendBtn setBackgroundColor:KMainColor];
        [_attendBtn setCornerRadius:17.5];
    }
    return _attendBtn;
}


-(UIButton *)notAttendBtn
{
    if (!_notAttendBtn)
    {
        _notAttendBtn = [[UIButton alloc]init];
        [_notAttendBtn setTitle:@"不能出席" forState:UIControlStateNormal];
        [_notAttendBtn setTitleColor:KMainColor forState:UIControlStateNormal];
        [_notAttendBtn setLayerBorderColor:KMainColor];
        [_notAttendBtn setLayerBorderWidth:1];
        [_notAttendBtn setCornerRadius:17.5];
        [_notAttendBtn.titleLabel setFont:[UIFont systemFontOfSize:13.0]];
        [_notAttendBtn setBackgroundColor:KWhiteColor];
    }
    return _notAttendBtn;
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
