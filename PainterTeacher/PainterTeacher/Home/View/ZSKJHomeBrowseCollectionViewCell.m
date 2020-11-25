//
//  ZSKJHomeBrowseCollectionViewCell.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeBrowseCollectionViewCell.h"

@interface ZSKJHomeBrowseCollectionViewCell ()

@property (nonatomic, strong) UIImageView *preview;

@end



@implementation ZSKJHomeBrowseCollectionViewCell



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setCornerRadius:CornerRadius];
        
        [self.contentView addSubview:self.preview];
        
        [self.preview mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.edges.equalTo(self.contentView).insets(UIEdgeInsetsMake(0, 0, 0, 0));
        }];
    }
    return self;
}




#pragma mark - Getter / Setter
-(UIImageView *)preview
{
    if (!_preview)
    {
        _preview = [[UIImageView alloc]init];
        [_preview setBackgroundColor:[UIColor purpleColor]];
    }
    return _preview;
}

@end
