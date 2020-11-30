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



- (instancetype)init
{
    self = [super init];
    if (self)
    {
        
        [self setDelegate:self];
        [self setDelegate:self];
        [self registerClass:[ZSKJHomeReportTableViewCell class] forCellReuseIdentifier:@"ZSKJHomeReportTableViewCell"];
    }
    return self;
}





#pragma mark - Deletage Method
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}


- (ZSKJHomeReportTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJHomeReportTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZSKJHomeReportTableViewCell"];
    return cell;
}




-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}















@end
