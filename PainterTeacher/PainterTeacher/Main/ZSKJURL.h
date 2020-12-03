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







#endif /* ZSKJURL_h */
