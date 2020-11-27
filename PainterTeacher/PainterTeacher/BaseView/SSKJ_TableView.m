//
//  SSKJ_TableView.m
//  SSKJ
//
//  Created by 姚立志 on 2019/10/23.
//  Copyright © 2019 姚立志. All rights reserved.
//

#import "SSKJ_TableView.h"

@interface SSKJ_TableView ()

@property (nonatomic, strong) UIImageView *iconView;


@end

@implementation SSKJ_TableView




- (instancetype)initWitDeletage:(UIViewController*)delegate 
{
    self = [super init];
    if (self)
    {
        [self setDelegate:(id)delegate];
        [self setDataSource:(id)delegate];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        
        [self setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
        [self setEstimatedRowHeight:0];
        [self setEstimatedSectionHeaderHeight:0];
        [self setEstimatedSectionFooterHeight:0];
        
        [self addSubview:self.iconView];
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerX.equalTo(self.mas_centerX);
            make.centerY.equalTo(self.mas_centerY);
                    
        }];
    }
    return self;
}




- (instancetype)initWithFrame:(CGRect)frame witDeletage:(UIViewController*)delegate
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setDelegate:(id)delegate];
        [self  setDataSource:(id)delegate];
        [self setBackgroundColor:[UIColor clearColor]];
        [self setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        
        [self setContentInsetAdjustmentBehavior:UIScrollViewContentInsetAdjustmentNever];
        [self setEstimatedRowHeight:0];
        [self setEstimatedSectionHeaderHeight:0];
        [self setEstimatedSectionFooterHeight:0];
        
        
        [self addSubview:self.iconView];
        [self.iconView mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerX.equalTo(self.mas_centerX);
            make.centerY.equalTo(self.mas_centerY);
                    
        }];
    }
    return self;
}



-(void)setItemArray:(NSArray*)array
{
    [self.iconView setHidden:(BOOL)[array count]];
}


-(void)endRefresh
{
    [self reloadData];
//    if (self.mj_header.state == MJRefreshStateRefreshing)
//    {
//        [self.mj_header endRefreshing];
//    }
//    
//    if (self.mj_footer.state == MJRefreshStateRefreshing)
//    {
//        [self.mj_footer endRefreshing];
//    }
}



#pragma mark - Getter / Setter
-(UIImageView *)iconView
{
    if (!_iconView)
    {
        _iconView = [[UIImageView alloc]init];
        [_iconView setImageName:@"noticeEmpty"];
        [_iconView setHidden:YES];
    }
    return _iconView;
}





@end
