//
//  ZSKJMineResumeCollectionViewCell.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/25.
//

#import "ZSKJMineResumeCollectionViewCell.h"


@interface ZSKJMineResumeCollectionViewCell ()


@property (nonatomic, strong) UIImageView *imageView;


@end



@implementation ZSKJMineResumeCollectionViewCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        
        [self.contentView addSubview:self.imageView];
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make)
        {
            make.edges.equalTo(self.contentView).insets(UIEdgeInsetsMake(0, 0, 0, 0));
        }];
    }
    return self;
}



#pragma mark
/// 设置url
/// @param url 图像Url
-(void)setUrl:(NSString*)url
{
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@/%@",ProductBaseServer,url]] placeholderImage:imageName(@"")];
    
}

#pragma mark - Getter / Setter
-(UIImageView *)imageView
{
    if (!_imageView)
    {
        _imageView = [[UIImageView alloc]init];
        [_imageView setContentMode:UIViewContentModeScaleAspectFill];
        [_imageView setBackgroundColor:KLineColor];
    }
    return _imageView;
}

@end
