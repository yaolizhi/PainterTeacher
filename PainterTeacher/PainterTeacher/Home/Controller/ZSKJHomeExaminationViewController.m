//
//  ZSKJHomeExaminationViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeExaminationViewController.h"
#import "ZSKJHomeAuditionlCollectionView.h"
#import "ZSKJHomeFormalCollectionView.h"






@interface ZSKJHomeExaminationViewController ()

@property (nonatomic, strong) ZSKJHomeAuditionlCollectionView *auditionlCollectionView;
@property (nonatomic, strong) ZSKJHomeFormalCollectionView *formalCollectionView;


@property (nonatomic, assign) InitType type;




@end


@implementation ZSKJHomeExaminationViewController



- (instancetype)initWithType:(InitType)type
{
    self = [super init];
    if (self)
    {
        [self.formalCollectionView setHidden:YES];
        [self.auditionlCollectionView setHidden:YES];
        [self setType:type];
        switch (self.type)
        {
            case FormalType:
            {
                [self setTitle:@"正式课报告"];
                [self.formalCollectionView setHidden:NO];
            }
                break;
            case AuditionlType:
            {
                [self setTitle:@"试听课报告"];
                [self.auditionlCollectionView setHidden:NO];
            }
                break;
        }
    }
    return self;
}





- (void)viewDidLoad
{
    [super viewDidLoad];
}


- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.auditionlCollectionView];
        [self.view addSubview:self.formalCollectionView];
    }
}




#pragma mark - Getter / Setter
-(ZSKJHomeFormalCollectionView *)formalCollectionView
{
    if (!_formalCollectionView)
    {
        _formalCollectionView = [[ZSKJHomeFormalCollectionView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, (ScreenHeight-self.navbarHeight)) withType:VerticalType];
    }
    return _formalCollectionView;
}



-(ZSKJHomeAuditionlCollectionView *)auditionlCollectionView
{
    if (!_auditionlCollectionView)
    {
        _auditionlCollectionView = [[ZSKJHomeAuditionlCollectionView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, (ScreenHeight-self.navbarHeight)) withType:VerticalType];
    }
    return _auditionlCollectionView;
}




@end
