//
//  ZSKJHomeCollectionViewCell.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeCollectionViewCell.h"

@interface ZSKJHomeCollectionViewCell ()

@property (nonatomic, strong) UILabel *dataLabel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *typeLabel;

@property (nonatomic, strong) UIImageView *preview;
@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UIImageView *typeView;
@property (nonatomic, strong) UIButton *lectureBtn;


@end

@implementation ZSKJHomeCollectionViewCell



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self.contentView setBackgroundColor:KWhiteColor];
        [self.contentView setLayerBorderColor:KLineColor];
        [self.contentView setLayerBorderWidth:1];
        [self.contentView setCornerRadius:CornerRadius];
        [self.contentView addSubview:self.dataLabel];
        [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.subtitleLabel];
        [self.contentView addSubview:self.nameLabel];
        [self.contentView addSubview:self.preview];
        [self.contentView addSubview:self.typeView];
        [self.typeView addSubview:self.typeLabel];
        [self.contentView addSubview:self.headerView];
        [self.contentView addSubview:self.lectureBtn];
        
        
        
        [self.dataLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.mas_top);
            make.left.equalTo(self.mas_left).offset(15);
            make.height.equalTo(@(44));
                    
        }];
        
        
        [self.typeView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.mas_top);
            make.right.equalTo(self.mas_right).offset(-15);
            
        }];
        
        
        [self.typeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.typeView.mas_top).offset(10);
            make.centerX.equalTo(self.typeView.mas_centerX);
            
        }];
        
        [self.preview mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.dataLabel.mas_bottom).offset(20);
            make.left.equalTo(self.dataLabel.mas_left);
            make.height.width.equalTo(@(80));
        }];
        
        [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            
            make.top.equalTo(self.preview.mas_top).offset(30);
            make.left.equalTo(self.preview.mas_right).offset(10);
        }];
        
        [self.subtitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.titleLabel.mas_bottom).offset(15);
            make.left.equalTo(self.titleLabel);
                    
        }];
        
        
        [self.headerView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.top.equalTo(self.preview.mas_bottom).offset(10);
            make.left.equalTo(self.preview.mas_left);
            make.height.width.equalTo(@(30));
            
        }];
        
        [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.left.equalTo(self.headerView.mas_right).offset(15);
            make.centerY.equalTo(self.headerView.mas_centerY);
                    
        }];
        

        
        [self.lectureBtn mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.bottom.right.equalTo(self);
            make.height.equalTo(@(44));
                    
        }];
        
        
        
        
        
    }
    return self;
}


#pragma mark - Getter / Setter
-(UILabel *)dataLabel
{
    if (!_dataLabel)
    {
        _dataLabel = [[UILabel alloc]init];
        [_dataLabel setFont:[UIFont boldSystemFontOfSize:17]];
        [_dataLabel setTextColor:KTextColor];
        [_dataLabel setText:@"2020-11-16  10:00-11:00"];
    }
    return _dataLabel;
}

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



-(UILabel *)nameLabel
{
    if (!_nameLabel)
    {
        _nameLabel = [[UILabel alloc]init];
        [_nameLabel setFont:[UIFont boldSystemFontOfSize:14]];
        [_nameLabel setTextColor:KTextColor];
        [_nameLabel setText:@"张明明（7岁）"];
    }
    return _nameLabel;
}





-(UILabel *)typeLabel
{
    if (!_typeLabel)
    {
        _typeLabel = [[UILabel alloc]init];
        [_typeLabel setFont:[UIFont boldSystemFontOfSize:12]];
        [_typeLabel setTextColor:KWhiteColor];
        [_typeLabel setText:@"正式课"];
    }
    return _typeLabel;
}


-(UIImageView *)typeView
{
    if (!_typeView)
    {
        _typeView = [[UIImageView alloc]init];
        [_typeView setImage:imageName(@"typeitems")];
    }
    return _typeView;
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


-(UIImageView *)headerView
{
    if (!_headerView)
    {
        _headerView = [[UIImageView alloc]init];
        [_headerView setBackgroundColor:[UIColor blueColor]];
    }
    return _headerView;
}


-(UIButton *)lectureBtn
{
    if (!_lectureBtn)
    {
        _lectureBtn = [[UIButton alloc]init];
        [_lectureBtn setTitle:@"开始讲课" forState:UIControlStateNormal];
        [_lectureBtn setTitleColor:KWhiteColor forState:UIControlStateNormal];
        [_lectureBtn setBackgroundColor:KMainColor];
    }
    return _lectureBtn;
}







@end
