//
//  ZSKJHomeReportTableView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/11/27.
//

#import "ZSKJHomeReportTableView.h"



@interface ZSKJHomeReportTableView () <UITableViewDelegate,UITableViewDataSource>


@end

@implementation ZSKJHomeReportTableView



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        
        [self setDelegate:self];
        [self setDataSource:self];
        [self registerClass:[ZSKJHomeReportTableViewCell class] forCellReuseIdentifier:@"ZSKJHomeReportTableViewCell"];
        
        for (int i = 0; i < 13; i++)
        {
            ZSKJHomeReportModel *model = [[ZSKJHomeReportModel alloc]init];
            [model setDate:@"2020-11-17 16:00-17:00"];
            [model setOrderDate:@"2020-11-15 18:32:56"];
            [model setBeDate:@"2020-11-15 18:32:56"];
            [self.dataArray addObject:model];
        }
        
        
        
    }
    return self;
}





#pragma mark - Deletage Method
- (NSInteger)tableView:(SSKJ_TableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [tableView setItemArray:self.dataArray];
    return [self.dataArray count];
}


- (ZSKJHomeReportTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeReportTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZSKJHomeReportTableViewCell"];
    [cell setModel:[self.dataArray objectAtIndex:indexPath.row]];
    return cell;
}




-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 160;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}















@end
