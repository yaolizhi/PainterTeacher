//
//  ZSKJHomeViewController.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/20.
//

#import "ZSKJHomeViewController.h"
#import "ZSKJHomeExaminationViewController.h"
#import "ZSKJHomeATimeArrangeViewController.h" //!< 课程明细
#import "ZSKJEvaluationViewController.h" //!< 课后单
#import "ZSKJHomeBrowseViewController.h"
#import "ZSKJHomeCollectionViewCell.h"
#import "ZSKJHomeHeaderView.h"





@interface ZSKJHomeViewController () <UICollectionViewDataSource,UICollectionViewDelegate,ZSKJHomeHeaderViewDeletage>

@property (nonatomic, strong) ZSKJCollectionView *homeCollectionView;




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





#pragma mark - Deletage Method
#pragma mark ZSKJHomeHeaderViewDeletage
-(void)headerOptionAction:(NSInteger)sender
{
    switch (sender)
    {
#pragma mark case 1 查看课件
        case 1:
        {
            [self pushViewController:[[ZSKJHomeBrowseViewController alloc]init] animated:YES];
        }
            break;
#pragma mark case 2 开始讲课
        case 2:
        {
            
        }
            break;
#pragma mark case 3 时间管理
        case 3:
        {
            [self pushViewController:[[ZSKJHomeATimeArrangeViewController alloc]init] animated:YES];
        }
            break;
#pragma mark case 4 正式报告
        case 4:
        {
            [self pushViewController:[[ZSKJHomeExaminationViewController alloc]initWithType:FormalType] animated:YES];
        }
            break;
#pragma mark case 1 测试报告
        case 5:
        {
            [self pushViewController:[[ZSKJHomeExaminationViewController alloc]initWithType:AuditionlType] animated:YES];
        }
            break;
    }
}





#pragma mark UICollectionViewDataSource
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 20;
}



- (ZSKJHomeCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZSKJHomeCollectionViewCell" forIndexPath:indexPath];
    
    return cell;
}




#pragma mark UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


#pragma mark UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((ScreenWidth-45)/2.0, 250);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(0, 15, 15, 15);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(ScreenWidth, 870);
}



//设置头尾部内容
-(ZSKJHomeHeaderView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeHeaderView *reusableView = nil;

    if (kind ==UICollectionElementKindSectionHeader)
    {
        //定制头部视图的内容
        reusableView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ZSKJHomeHeaderView" forIndexPath:indexPath];
        [reusableView setDeletage:self];
        
    }
   return reusableView;
}





#pragma mark - Getter / Setter
- (void)setArray:(NSArray *)array
{
    
}









#pragma mark - Getter / Setter
-(ZSKJCollectionView *)homeCollectionView
{
    if (!_homeCollectionView)
    {
        _homeCollectionView = [[ZSKJCollectionView alloc]initWithFrame:CGRectMake(0, self.navbarHeight, ScreenWidth, ScreenHeight-(self.navbarHeight+self.tabbarHeight)) withType:VerticalType];
        [_homeCollectionView setDelegate:self];
        [_homeCollectionView setDataSource:self];
        [_homeCollectionView registerClass:[ZSKJHomeHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ZSKJHomeHeaderView"];
        [_homeCollectionView registerClass:[ZSKJHomeCollectionViewCell class] forCellWithReuseIdentifier:@"ZSKJHomeCollectionViewCell"];
    }
    return _homeCollectionView;
}








@end
