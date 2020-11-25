//
//  ZSKJHomeBrowseViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeBrowseViewController.h"
#import "ZSKJHomeBrowseCollectionView.h"


@interface ZSKJHomeBrowseViewController ()

@property (nonatomic, strong) ZSKJHomeBrowseCollectionView *browseCollectionView;


@end

@implementation ZSKJHomeBrowseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"查看课件"];
}


- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.browseCollectionView];
    }
}




#pragma mark - Getter / Setter
-(ZSKJHomeBrowseCollectionView *)browseCollectionView
{
    if (!_browseCollectionView)
    {
        _browseCollectionView = [[ZSKJHomeBrowseCollectionView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, (ScreenHeight-self.navbarHeight)) withType:VerticalType];
    }
    return _browseCollectionView;
}



@end
