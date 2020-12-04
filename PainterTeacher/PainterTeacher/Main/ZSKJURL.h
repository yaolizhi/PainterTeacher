//
//  ZSKJURL.h
//  PainterTeacher
//
//  Created by 姚立志 on 2020/12/3.
//

#ifndef ZSKJURL_h
#define ZSKJURL_h

#define ProductBaseServer @"http://1v1zhibo.zhengshangwl.com/"
/* 用户登录 */
#define Login_URL [NSString stringWithFormat:@"%@%@",ProductBaseServer,@"index/teacher/login"]
/* 设置密码 */
#define SetPasswod_URL [NSString stringWithFormat:@"%@%@",ProductBaseServer,@"index/teacher/setPasswod"]
/* 个人简历|个人信息 */
#define UserInfoByToken_URL [NSString stringWithFormat:@"%@%@",ProductBaseServer,@"index/teacher/getUserInfoByToken"]

/* 教师的排课信息 */
#define Schedules_URL [NSString stringWithFormat:@"%@%@",ProductBaseServer,@"index/teacher/tomorrowSchedules"]

/* 教师下次课程 */
#define NextSchedule_URL [NSString stringWithFormat:@"%@%@",ProductBaseServer,@"index/teacher/nextSchedule"]

/* 教师学习报告 */
#define MyReport_URL [NSString stringWithFormat:@"%@%@",ProductBaseServer,@"index/teacher/myReport"]









#endif /* ZSKJURL_h */
