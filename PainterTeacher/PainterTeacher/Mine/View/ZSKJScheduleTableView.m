//
//  ZSKJScheduleTableView.m
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/4.
//

#import "ZSKJScheduleTableView.h"


@interface ZSKJScheduleTableView ()




@property (nonatomic, copy) NSString *teacher_takein; //!< 0：待确认，1已确认，-1已拒绝


@end


@implementation ZSKJScheduleTableView


- (instancetype)initWithFrame:(CGRect)frame witDeletage:(UIViewController *)delegate
{
    self = [super initWithFrame:frame witDeletage:delegate];
    if (self)
    {
        [self setDelegate:self];
        [self setDataSource:self];
        [self registerClass:[ZSKJScheduleTableViewCell class] forCellReuseIdentifier:@"ZSKJScheduleTableViewCell"];
        
        [self headerTarget:self action:@selector(headerRefresh)];
        [self footerTarget:self action:@selector(footerRefresh)];
    }
    return self;
}




-(void)setType:(ZSKJScheduleModelType)type
{
    _type = type;
    switch (type)
    {
#pragma mark 待确认
        case NotConfirmType:
        {
            [self setTeacher_takein:@"0"];
        }
            break;
#pragma mark 已确定
        case AttendType:
        {
            [self setTeacher_takein:@"1"];
        }
            break;
#pragma mark 已拒绝
        case NotAttendType:
        {
            [self setTeacher_takein:@"-1"];
        }
            break;
    }
    
    
    
    [self getSchedules:@{@"token":[ZSKJUserinfoModel shareUserinfo].token,@"teacher_takein":self.teacher_takein} withType:HeaderType];
    
    
}



#pragma mark 头部视图
-(void)headerRefresh
{
    [self getSchedules:@{@"token":[ZSKJUserinfoModel shareUserinfo].token,@"teacher_takein":self.teacher_takein} withType:HeaderType];
}



#pragma mark 脚步视图
-(void)footerRefresh
{
    [self getSchedules:@{@"token":[ZSKJUserinfoModel shareUserinfo].token,@"teacher_takein":self.teacher_takein} withType:FooterType];
    
}



#pragma mark - NetWork Method 网络请求
-(void)getSchedules:(NSDictionary*)parameters withType:(RefreshType)type
{
    WS(weakSelf);
    [[ZSKJAFHTTPManager shareManager] postUrl:Schedules_URL parameters:parameters success:^(id  _Nonnull responseObject){
        
        ZSKJNetworkModel *netWorkModel = [ZSKJNetworkModel mj_objectWithKeyValues:responseObject];
        if (netWorkModel.code.integerValue == 1)
        {
            NSArray *array = [ZSKJScheduleModel mj_objectArrayWithKeyValuesArray:netWorkModel.data];
            
            [weakSelf.dataArray setArray:array];
        }
        [weakSelf endRefresh];
        
    } failure:^(NSError * _Nonnull error){
        [weakSelf endRefresh];
    }];
}







#pragma mark - Deletage Method
- (NSInteger)tableView:(SSKJ_TableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [tableView setItemArray:self.dataArray];
    return [self.dataArray count];
}





- (ZSKJScheduleTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ZSKJScheduleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZSKJScheduleTableViewCell"];
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
