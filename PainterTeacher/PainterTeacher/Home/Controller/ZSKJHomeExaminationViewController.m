//
//  ZSKJHomeExaminationViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeExaminationViewController.h"
#import "ZSKJHomeFormalCollectionView.h"




@interface ZSKJHomeExaminationViewController ()

@property (nonatomic, strong) ZSKJHomeFormalCollectionView *formalCollectionView;





@end


@implementation ZSKJHomeExaminationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"课后单"];
}


- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.formalCollectionView];
    }
}




#pragma mark - Getter / Setter
-(ZSKJHomeFormalCollectionView *)formalCollectionView
{
    if (!_formalCollectionView)
    {
        _formalCollectionView = [[ZSKJHomeFormalCollectionView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, (ScreenHeight-(self.navbarHeight+self.tabbarHeight))) withType:VerticalType];
    }
    return _formalCollectionView;
}






@end
