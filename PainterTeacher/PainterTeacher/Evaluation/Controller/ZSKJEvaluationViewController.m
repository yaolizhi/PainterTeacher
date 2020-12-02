//
//  ZSKJEvaluationViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/20.
//

#import "ZSKJEvaluationViewController.h"
#import "ZSKJEvaluationOptionControl.h"
#import "ZSKJHomeFormalCollectionView.h"
#import "ZSKJHomeAuditionlCollectionView.h"
#import "ZSKJCommentViewController.h"  //!< 点评





@interface ZSKJEvaluationViewController () <ZSKJEvaluationOptionControlDeletage,ZSKJHomeFormalCollectionViewDeletage,ZSKJHomeAuditionlCollectionViewDeletage>



@property (nonatomic, strong) ZSKJEvaluationOptionControl *optionControl;

@property (nonatomic, strong) ZSKJHomeFormalCollectionView *formalCollectionView;
@property (nonatomic, strong) ZSKJHomeAuditionlCollectionView *auditionlCollectionView;


@end

@implementation ZSKJEvaluationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"课后单"];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated bottomBar:NO];
}



- (void)addSubVies:(BOOL)views
{
    if (views)
    {
        [self.view addSubview:self.optionControl];
        [self.view addSubview:self.auditionlCollectionView];
        [self.view addSubview:self.formalCollectionView];
        
        [self.optionControl setIndexTag:0];
    }
}






#pragma mark - Deletage Method
-(void)optionItemAction:(NSInteger)index
{
    [self.auditionlCollectionView setHidden:YES];
    [self.formalCollectionView setHidden:YES];
    switch (index)
    {
        case 0:
        {
            [self.formalCollectionView setHidden:NO];
        }
            break;
        case 1:
        {
            [self.auditionlCollectionView setHidden:NO];
        }
            break;
    }
}

#pragma mark ZSKJHomeAuditionlCollectionViewDeletage
-(void)didAuditionlItem:(ZSKJHomeExaminationModel *)model
{
    ZSKJCommentViewController *comment = [[ZSKJCommentViewController alloc]init];
    [comment setModel:model];
    [self pushViewController:comment animated:YES];
}


#pragma mark ZSKJHomeFormalCollectionViewDeletage
-(void)didFormalItem:(ZSKJHomeExaminationModel *)model
{
    ZSKJCommentViewController *comment = [[ZSKJCommentViewController alloc]init];
    [comment setModel:model];
    [self pushViewController:comment animated:YES];
}




#pragma mark - Getter / Setter
-(ZSKJEvaluationOptionControl *)optionControl
{
    if (_optionControl == nil)
    {
        _optionControl = [[ZSKJEvaluationOptionControl alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, 50) withDeletage:self];
        [_optionControl setOneTitle:@"正式课报告" withTwoTitle:@"试听课报告"];

    }
    return _optionControl;
}

-(ZSKJHomeFormalCollectionView *)formalCollectionView
{
    if (!_formalCollectionView)
    {
        _formalCollectionView = [[ZSKJHomeFormalCollectionView alloc]initWithFrame:CGRectMake(0, self.optionControl.bottom, ScreenWidth, (ScreenHeight-(self.navbarHeight+50))) withType:VerticalType withDeletage:self];
    }
    return _formalCollectionView;
}



-(ZSKJHomeAuditionlCollectionView *)auditionlCollectionView
{
    if (!_auditionlCollectionView)
    {
        _auditionlCollectionView = [[ZSKJHomeAuditionlCollectionView alloc]initWithFrame:CGRectMake(0, self.optionControl.bottom, ScreenWidth, (ScreenHeight-(self.navbarHeight+50))) withType:VerticalType withDeletage:self];
    }
    return _auditionlCollectionView;
}





@end
