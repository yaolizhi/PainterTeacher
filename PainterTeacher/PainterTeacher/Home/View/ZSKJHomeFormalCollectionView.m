//
//  ZSKJHomeFormalCollectionView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/24.
//

#import "ZSKJHomeFormalCollectionView.h"






@interface ZSKJHomeFormalCollectionView() <UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic,weak) id <ZSKJHomeFormalCollectionViewDeletage> itemDeletage;




@end


@implementation ZSKJHomeFormalCollectionView

- (instancetype)initWithFrame:(CGRect)frame withType:(FlowLayoutType)type withDeletage:(id<ZSKJHomeFormalCollectionViewDeletage>)deletage
{
    self = [super initWithFrame:frame withType:type];
    if (self)
    {
        [self setItemDeletage:deletage];
        [self setDelegate:self];
        [self setDataSource:self];
        
        [self registerClass:[ZSKJHomeHeaderView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"ZSKJHomeHeaderView"];
        [self registerClass:[ZSKJHomeCollectionViewCell class] forCellWithReuseIdentifier:@"ZSKJHomeCollectionViewCell"];
        [self headerTarget:self action:@selector(headerRefresh)];
        [self footerTarget:self action:@selector(footerRefresh)];
    }
    return self;
}





#pragma mark - Private Method
-(void)headerRefresh
{
    [self setPage:1];
    NSDictionary *parameters = @{@"token":[ZSKJUserinfoModel shareUserinfo].token,@"type":@"1",@"limit":@"10",@"page":[NSString stringWithFormat:@"%d",self.page]};
    [self getReport:parameters withType:HeaderType];
}


-(void)footerRefresh
{
    NSDictionary *parameters = @{@"token":[ZSKJUserinfoModel shareUserinfo].token,@"type":@"1",@"limit":@"10",@"page":[NSString stringWithFormat:@"%d",self.page]};
    [self getReport:parameters withType:FooterType];
}







#pragma mark - NetWork Method 网络请求
-(void)getReport:(NSDictionary*)parameters withType:(RefreshType)type
{
    WS(weakSelf);
    [[ZSKJAFHTTPManager shareManager] postUrl:MyReport_URL parameters:parameters success:^(id  _Nonnull responseObject) {
        ZSKJNetworkModel *netWorkModel = [ZSKJNetworkModel mj_objectWithKeyValues:responseObject];
        if (netWorkModel.code.integerValue == 1)
        {
            NSArray *array = [ZSKJHomeExaminationModel mj_objectArrayWithKeyValuesArray:[netWorkModel.data objectForKey:@"rows"]];
            switch (type)
            {
                case HeaderType:
                {
                    [weakSelf.itemArry setArray:array];
                }
                    break;
                case FooterType:
                {
                    [weakSelf.itemArry addObjectsFromArray:array];
                }
                    break;
            }
            
            
            if ([array count] >= PageSize)
            {
                [self setPage:(self.page+1)];
            }
            else
            {
                [weakSelf endNoMoreData];
            }
        }
        else
        {
            [weakSelf endNoMoreData];
        }
        
        [weakSelf endRefresh];
        
    } failure:^(NSError * _Nonnull error)
     {
        
        [weakSelf endNoMoreData];
        
    }];
    
    
    
}










#pragma mark - Deletage Method
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(ZSKJCollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    [collectionView setItemsArray:self.itemArry];
    return [self.itemArry count];
}



- (ZSKJHomeCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZSKJHomeCollectionViewCell" forIndexPath:indexPath];
    [cell setModel:[self.itemArry objectAtIndex:indexPath.row]];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    if ([self.itemDeletage respondsToSelector:@selector(didFormalItem:)])
    {
        [self.itemDeletage didFormalItem:[self.itemArry objectAtIndex:indexPath.row]];
    }
}


#pragma mark UICollectionViewDelegateFlowLayout
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((ScreenWidth-45)/2.0, 250);
}

- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section
{
    return UIEdgeInsetsMake(15, 15, 15, 15);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 15;
}






@end
