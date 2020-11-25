//
//  ZSKJHomeViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/20.
//

#import "ZSKJHomeViewController.h"
#import "ZSKJHomeCollectionView.h"
#import "ZSKJHomeBrowseViewController.h"




@interface ZSKJHomeViewController ()

@property (nonatomic, strong) ZSKJHomeCollectionView *homeCollectionView;




@end

@implementation ZSKJHomeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"首页"];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated bottomBar:NO];
}



- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.homeCollectionView];
    }
}




#pragma mark - Getter / Setter
-(ZSKJHomeCollectionView *)homeCollectionView
{
    if (!_homeCollectionView)
    {
        _homeCollectionView = [[ZSKJHomeCollectionView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, ScreenHeight-(self.navbarHeight+self.tabbarHeight)) withType:VerticalType];
    }
    return _homeCollectionView;
}





@end
