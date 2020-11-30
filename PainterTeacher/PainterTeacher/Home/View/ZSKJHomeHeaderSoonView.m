//
//  ZSKJHomeHeaderSoonView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeHeaderSoonView.h"
#import "ZSKJHomeBrowseViewController.h"



@interface ZSKJHomeHeaderSoonView ()

@property (nonatomic, strong) UILabel *dataLabel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *subtitleLabel;
@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UILabel *typeLabel;

@property (nonatomic, strong) UIImageView *preview;
@property (nonatomic, strong) UIImageView *headerView;
@property (nonatomic, strong) UIImageView *typeView;
@property (nonatomic, strong) UIButton *browseBtn;
@property (nonatomic, strong) UIButton *lectureBtn;


@end

@implementation ZSKJHomeHeaderSoonView



- (instancetype)init
{
    self = [super init];
    if (self)
    {
        [self setBackgroundColor:KWhiteColor];
        [self addSubview:self.dataLabel];
        [self addSubview:self.titleLabel];
        [self addSubview:self.subtitleLabel];
        [self addSubview:self.nameLabel];
        [self addSubview:self.preview];
        [self addSubview:self.typeView];
        [self.typeView addSubview:self.typeLabel];
        [self addSubview:self.headerView];
        [self addSubview:self.browseBtn];
        [self addSubview:self.lectureBtn];
        
        
        
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
        
        [self.browseBtn mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.equalTo(self.typeView.mas_right);
            make.centerY.equalTo(self.headerView.mas_centerY);
            make.width.equalTo(@(100));
            make.height.equalTo(@(30));
            
        }];
        
        [self.lectureBtn mas_makeConstraints:^(MASConstraintMaker *make) {

            make.left.bottom.right.equalTo(self);
            make.height.equalTo(@(44));
                    
        }];
    }
    return self;
}


/**
 查看课件触发方法
 */
-(void)browseAddTarget:(nullable id)target action:(nonnull SEL)action forControlEvents:(UIControlEvents)events
{
    [self.browseBtn addTarget:target action:action forControlEvents:events];
}

/**
 开始上课触发方法
 */
-(void)lectureAddTarget:(nullable id)target action:(nonnull SEL)action forControlEvents:(UIControlEvents)events
{
    [self.lectureBtn addTarget:target action:action forControlEvents:events];
}



-(void)itemAction:(UIButton*)sender
{
    
    
    
    
    
    
    
    
    
    
    
    switch (sender.tag)
    {
        case 1:
        {
            
            
            
        }
            break;
        case 2:
        {
            
        }
            break;
    }
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
        [_typeView setImageName:@"typeitems"];
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


-(UIButton *)browseBtn
{
    if (!_browseBtn)
    {
        _browseBtn = [[UIButton alloc]init];
        [_browseBtn setTitle:@"查看课件" forState:UIControlStateNormal];
        [_browseBtn setTitleColor:KMainColor forState:UIControlStateNormal];
        [_browseBtn setLayerBorderColor:KMainColor];
        [_browseBtn setLayerBorderWidth:1];
        [_browseBtn setCornerRadius:15];
        [_browseBtn setTag:1];
    }
    return _browseBtn;
}




-(UIButton *)lectureBtn
{
    if (!_lectureBtn)
    {
        _lectureBtn = [[UIButton alloc]init];
        [_lectureBtn setTitle:@"开始讲课" forState:UIControlStateNormal];
        [_lectureBtn setTitleColor:KWhiteColor forState:UIControlStateNormal];
        [_lectureBtn setBackgroundColor:KMainColor];
        [_lectureBtn setTag:2];
    }
    return _lectureBtn;
}







@end
