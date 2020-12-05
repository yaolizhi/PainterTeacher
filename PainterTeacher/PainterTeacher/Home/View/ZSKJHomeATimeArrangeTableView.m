//
//  ZSKJHomeATimeArrangeTableView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/5.
//

#import "ZSKJHomeATimeArrangeTableView.h"



@implementation ZSKJHomeATimeArrangeTableView


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setDelegate:self];
        [self setDataSource:self];
        [self registerClass:[ZSKJHomeATimeArrangeTableViewCell class] forCellReuseIdentifier:@"ZSKJHomeATimeArrangeTableViewCell"];
        
        [self headerTarget:self action:@selector(headerRefresh)];
        [self footerTarget:self action:@selector(footerRefresh)];
    }
    return self;
}

-(void)setEnterType:(InitType)enterType
{
    switch (enterType)
    {
        case AuditionlType:
        {
            
            for (int i = 0; i < 10; i++)
            {
                ZSKJHomeATimeArrangeModel *model = [[ZSKJHomeATimeArrangeModel alloc]init];
                [model setTitle:@"2020-11-17 16:00-17:00"];
                [self.dataArray addObject:model];
                
            }
            
            
            
            
            
            
            
            
        }
            break;
        case FormalType:
        {
            for (int i = 0; i < 23; i++)
            {
                ZSKJHomeATimeArrangeModel *model = [[ZSKJHomeATimeArrangeModel alloc]init];
                [model setTitle:@"2020-11-17 16:00-17:00"];
                [self.dataArray addObject:model];
            }
        }
            break;
    }
}



-(void)headerRefresh
{
    [self endRefresh];
}



-(void)footerRefresh
{
    [self endNoMoreData];
}




















#pragma mark - Deletage Method
-(NSInteger)tableView:(SSKJ_TableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [tableView setItemArray:self.dataArray];
    return [self.dataArray count];
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeATimeArrangeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZSKJHomeATimeArrangeTableViewCell"];
    [cell setModel:[self.dataArray objectAtIndex:indexPath.row]];
    return cell;
}











@end
