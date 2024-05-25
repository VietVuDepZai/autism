id,app,name,applied
1,contenttypes,0001_initial,2024-04-28 10:32:35.162901+00
2,auth,0001_initial,2024-04-28 10:32:38.701928+00
3,account,0001_initial,2024-04-28 10:32:40.03497+00
4,account,0002_email_max_length,2024-04-28 10:32:40.492682+00
5,account,0003_alter_emailaddress_create_unique_verified_email,2024-04-28 10:32:41.183331+00
6,account,0004_alter_emailaddress_drop_unique_email,2024-04-28 10:32:42.10794+00
7,account,0005_emailaddress_idx_upper_email,2024-04-28 10:32:42.779587+00
8,admin,0001_initial,2024-04-28 10:32:44.179963+00
9,admin,0002_logentry_remove_auto_add,2024-04-28 10:32:44.53878+00
10,admin,0003_logentry_add_action_flag_choices,2024-04-28 10:32:44.983529+00
11,contenttypes,0002_remove_content_type_name,2024-04-28 10:32:45.709155+00
12,auth,0002_alter_permission_name_max_length,2024-04-28 10:32:46.259707+00
13,auth,0003_alter_user_email_max_length,2024-04-28 10:32:46.789742+00
14,auth,0004_alter_user_username_opts,2024-04-28 10:32:47.224129+00
15,auth,0005_alter_user_last_login_null,2024-04-28 10:32:47.758282+00
16,auth,0006_require_contenttypes_0002,2024-04-28 10:32:48.175859+00
17,auth,0007_alter_validators_add_error_messages,2024-04-28 10:32:48.643857+00
18,auth,0008_alter_user_username_max_length,2024-04-28 10:32:49.770082+00
19,auth,0009_alter_user_last_name_max_length,2024-04-28 10:32:50.406464+00
20,auth,0010_alter_group_name_max_length,2024-04-28 10:32:51.052004+00
21,auth,0011_update_proxy_permissions,2024-04-28 10:32:51.704598+00
22,auth,0012_alter_user_first_name_max_length,2024-04-28 10:32:52.439757+00
23,backend,0001_initial,2024-04-28 10:32:53.301623+00
24,backend,0002_patient_doctor,2024-04-28 10:32:54.672899+00
25,sessions,0001_initial,2024-04-28 10:32:55.552216+00
26,socialaccount,0001_initial,2024-04-28 10:32:57.583203+00
27,socialaccount,0002_token_max_lengths,2024-04-28 10:32:58.606559+00
28,socialaccount,0003_extra_data_default_dict,2024-04-28 10:32:59.645168+00
29,socialaccount,0004_app_provider_id_settings,2024-04-28 10:33:01.526999+00
30,socialaccount,0005_socialtoken_nullable_app,2024-04-28 10:33:03.754972+00
31,socialaccount,0006_alter_socialaccount_extra_data,2024-04-28 10:33:04.665671+00
32,backend,0003_doctor_latitude_doctor_longitude,2024-04-30 09:54:46.950527+00
33,backend,0004_alter_doctor_latitude_alter_doctor_longitude,2024-05-01 01:50:33.839+00
34,backend,0005_alter_doctor_latitude_alter_doctor_longitude,2024-05-01 04:00:04.146999+00
35,backend,0006_event,2024-05-06 03:16:26.658601+00
36,backend,0007_alter_doctor_address,2024-05-14 12:57:21.050962+00
37,backend,0008_alter_result_typeof,2024-05-21 10:31:06.46063+00
38,backend,0009_testgayss_result_tester,2024-05-21 14:14:47.785697+00
39,backend,0010_alter_testgayss_date,2024-05-21 14:23:54.95822+00
40,backend,0011_remove_testgayss_password_testgayss_who,2024-05-21 14:57:36.535914+00
41,backend,0012_patient_note_alter_testgayss_who,2024-05-23 08:08:05.535187+00
id,app_label,model
1,admin,logentry
2,auth,permission
3,auth,group
4,auth,user
5,contenttypes,contenttype
6,sessions,session
7,backend,question
8,backend,result
9,backend,patient
10,backend,doctor
11,account,emailaddress
12,account,emailconfirmation
13,socialaccount,socialaccount
14,socialaccount,socialapp
15,socialaccount,socialtoken
16,backend,event
17,backend,testgayss
id,name,content_type_id,codename
1,Can add log entry,1,add_logentry
2,Can change log entry,1,change_logentry
3,Can delete log entry,1,delete_logentry
4,Can view log entry,1,view_logentry
5,Can add permission,2,add_permission
6,Can change permission,2,change_permission
7,Can delete permission,2,delete_permission
8,Can view permission,2,view_permission
9,Can add group,3,add_group
10,Can change group,3,change_group
11,Can delete group,3,delete_group
12,Can view group,3,view_group
13,Can add user,4,add_user
14,Can change user,4,change_user
15,Can delete user,4,delete_user
16,Can view user,4,view_user
17,Can add content type,5,add_contenttype
18,Can change content type,5,change_contenttype
19,Can delete content type,5,delete_contenttype
20,Can view content type,5,view_contenttype
21,Can add session,6,add_session
22,Can change session,6,change_session
23,Can delete session,6,delete_session
24,Can view session,6,view_session
25,Can add question,7,add_question
26,Can change question,7,change_question
27,Can delete question,7,delete_question
28,Can view question,7,view_question
29,Can add result,8,add_result
30,Can change result,8,change_result
31,Can delete result,8,delete_result
32,Can view result,8,view_result
33,Can add patient,9,add_patient
34,Can change patient,9,change_patient
35,Can delete patient,9,delete_patient
36,Can view patient,9,view_patient
37,Can add doctor,10,add_doctor
38,Can change doctor,10,change_doctor
39,Can delete doctor,10,delete_doctor
40,Can view doctor,10,view_doctor
41,Can add email address,11,add_emailaddress
42,Can change email address,11,change_emailaddress
43,Can delete email address,11,delete_emailaddress
44,Can view email address,11,view_emailaddress
45,Can add email confirmation,12,add_emailconfirmation
46,Can change email confirmation,12,change_emailconfirmation
47,Can delete email confirmation,12,delete_emailconfirmation
48,Can view email confirmation,12,view_emailconfirmation
49,Can add social account,13,add_socialaccount
50,Can change social account,13,change_socialaccount
51,Can delete social account,13,delete_socialaccount
52,Can view social account,13,view_socialaccount
53,Can add social application,14,add_socialapp
54,Can change social application,14,change_socialapp
55,Can delete social application,14,delete_socialapp
56,Can view social application,14,view_socialapp
57,Can add social application token,15,add_socialtoken
58,Can change social application token,15,change_socialtoken
59,Can delete social application token,15,delete_socialtoken
60,Can view social application token,15,view_socialtoken
61,Can add event,16,add_event
62,Can change event,16,change_event
63,Can delete event,16,delete_event
64,Can view event,16,view_event
65,Can add test gayss,17,add_testgayss
66,Can change test gayss,17,change_testgayss
67,Can delete test gayss,17,delete_testgayss
68,Can view test gayss,17,view_testgayss
id,name
1,DOCTOR
2,PATIENT
id,group_id,permission_id
id,user_id,group_id
1,2,1
2,3,2
3,4,1
4,7,2
5,8,1
6,9,2
7,10,2
8,11,2
id,user_id,permission_id
id,password,last_login,is_superuser,username,first_name,last_name,email,is_staff,is_active,date_joined
8,pbkdf2_sha256$390000$cttH7Ghxb5XvLBKMnALkKH$tlLtPUEdEpi0TKuHqGEmSw+Auiwfc6BVIKqk2AH8Ooo=,2024-05-19 10:18:44.461158+00,f,uhu,"","",uhu@gmail.com,f,t,2024-05-19 10:17:53.881297+00
9,pbkdf2_sha256$390000$7oQJdKPX54GeyB9SwiWO22$molsq+XXbqwgdLSvlX3G7viOHS/gsSPsa9goLBHqg68=,2024-05-19 10:19:56.421981+00,f,hai,"","",hai@gmail.com,f,t,2024-05-19 10:19:19.818807+00
10,pbkdf2_sha256$390000$04oc3Y1OfhLMdQlbaiC4JK$6MRI1LKYcLIwNN8pAmCTX60KmxX/mj6aSN7ctnYiPng=,2024-05-22 14:02:16.891697+00,f,khoa vũ,"","",vudangkhoa.mrvu@gmail.com,f,t,2024-05-22 13:58:31.313832+00
2,!ZLLml0LLw1chWWKCod4SVaDO05IBF0MWxnTD3gWL,2024-05-23 03:31:02.630793+00,f,viet,Việt,Coder,viet.mrvu@gmail.com,f,t,2024-04-28 10:50:12.14697+00
1,pbkdf2_sha256$390000$zabTE3o2R2GtNfcf1AJfQv$Sm/eFM6Ij3Lu6i9GTT+1DeI+xWe92rPs3GimsFaX/fQ=,2024-05-23 15:47:44.850234+00,t,steve,"","",vuviet.thd@gmail.com,t,t,2024-04-28 10:39:25.087065+00
11,!iU5gcfiig23Iy8cQNlKO9UC6s4lBO8CoOIJGaz3Q,2024-05-24 08:11:59.124625+00,f,ang5,Đăng,Vũ,dang.vu@mrvu.vn,f,t,2024-05-24 08:10:40.640896+00
6,pbkdf2_sha256$600000$tTh8GDnZPZOzMAxTHGRaj6$04oT6V4Br8EHFgPyXe/ya7patoxLZHUl41BBJvafLCk=,2024-05-14 12:41:46.509841+00,f,haha,"","",haha@gmail.com,f,t,2024-05-14 12:41:36.556427+00
5,pbkdf2_sha256$390000$tPKLbXjVJiWegInI0ZT1cR$FB9RpPmXQlJV0x4C0FpYtysqEi30M/CPx61MY6Hs8VM=,2024-05-15 13:42:24.999928+00,f,huhu,"","",fsad@gmail.com,f,t,2024-05-14 11:37:15.007591+00
4,!GBVRtLTmXVpssvpDr4uPSD4j4M5r1fZYZtFeAnKZ,2024-05-19 10:08:27.529188+00,f,ang,Đăng,Vũ,sirdang.mrvu@gmail.com,f,t,2024-05-14 11:32:27.351035+00
7,pbkdf2_sha256$390000$DaubpFHcuDzMkyFu7zYbgJ$Qpk7p8yzje8oXC6zanACVhzFjrsyAjL6+BIcoWQk2Ys=,2024-05-19 10:10:41.402713+00,f,mrvufan,"","",danv.vu@mrvu.vn,f,t,2024-05-19 10:10:26.766798+00
3,!mJ05YfDZ8l4cAZCZFuZD8Vsc72K0yUMQGgYJ9LQK,2024-05-19 10:17:22.835048+00,f,vu,Vũ,Vịt,vitvu773@gmail.com,f,t,2024-05-02 13:12:18.20767+00
id,email,verified,primary,user_id
1,viet.mrvu@gmail.com,t,t,2
2,vitvu773@gmail.com,t,t,3
3,sirdang.mrvu@gmail.com,t,t,4
4,dang.vu@mrvu.vn,t,t,11
id,created,sent,key,email_address_id
id,action_time,object_id,object_repr,action_flag,change_message,content_type_id,user_id
1,2024-04-28 10:45:24.465026+00,1,Autism,1,"[{""added"": {}}]",14,1
2,2024-05-03 07:46:17.319953+00,1,viet,2,"[{""changed"": {""fields"": [""Profile pic""]}}]",10,1
3,2024-05-03 07:52:20.458984+00,1,viet,2,"[{""changed"": {""fields"": [""Profile pic""]}}]",10,1
4,2024-05-03 07:53:00.020969+00,1,viet,2,"[{""changed"": {""fields"": [""Profile pic""]}}]",10,1
5,2024-05-03 07:53:30.744083+00,1,vu,2,"[{""changed"": {""fields"": [""Profile pic""]}}]",9,1
6,2024-05-14 14:14:54.444481+00,1,"Trẻ thích được đung đưa, nhún nhảy trên đầu gối của bạn không?",1,"[{""added"": {}}]",7,1
7,2024-05-14 14:16:30.717389+00,2,Trẻ có quan tâm đến trẻ khác không?,1,"[{""added"": {}}]",7,1
8,2024-05-14 14:19:46.676594+00,3,"Trẻ có thích trèo lên các đồ vật, như là cầu thang không?",1,"[{""added"": {}}]",7,1
9,2024-05-14 14:20:40.266917+00,4,"Trẻ có thích chơi ú óa, chốn tìm không?",1,"[{""added"": {}}]",7,1
10,2024-05-14 14:20:58.661597+00,5,"Trẻ đã bao giờ chơi giả vờ chưa, ví dụ như nói điện thoại hoặc chăm sóc búp bê, hoặc chơi giả vờ với các đồ vật khác?",1,"[{""added"": {}}]",7,1
11,2024-05-14 14:21:20.91763+00,6,"Trẻ đã bao giờ dùng ngón trỏ của mình để chỉ, để yêu cầu đồ vật?",1,"[{""added"": {}}]",7,1
12,2024-05-14 14:24:37.21729+00,7,"Trẻ đã bao giờ dùng ngón trỏ của mình để chỉ, để thể hiện sự quan tâm đến đồ vật nào đó không?",1,"[{""added"": {}}]",7,1
13,2024-05-14 14:29:04.856219+00,8,"Trẻ có thể chơi đúng cách với các đồ chơi nhỏ mà không cho vào miệng, nghịch lung tung hoặc thả xuống không?",1,"[{""added"": {}}]",7,1
14,2024-05-14 14:30:02.464027+00,9,Trẻ đã bao giờ mang đồ vật đến khoe với bạn (cha mẹ) không?,1,"[{""added"": {}}]",7,1
15,2024-05-14 14:39:17.682328+00,10,Trẻ có nhìn vào mắt của bạn lâu hơn một hoặc hai giây không?,1,"[{""added"": {}}]",7,1
16,2024-05-14 14:46:56.288862+00,11,Trẻ đã bao giờ quá nhạy cảm với tiếng động không? VD: Bịt hai tai,1,"[{""added"": {}}]",7,1
17,2024-05-14 14:47:15.312392+00,12,Trẻ có cười khi nhìn thấy mặt bạn hoặc thấy bạn cười không?,1,"[{""added"": {}}]",7,1
18,2024-05-14 14:47:45.391082+00,13,Trẻ có bắt chước bạn không? VD: Khi bạn làm điệu bộ trên nét mặt trẻ có bắt chước không?,1,"[{""added"": {}}]",7,1
19,2024-05-14 14:48:54.947358+00,14,Trẻ có đáp ứng khi gọi tên không?,1,"[{""added"": {}}]",7,1
20,2024-05-14 14:49:17.949558+00,15,"Nếu bạn chỉ đồ chơi ở một vị trí khác trong phòng, trẻ có nhìn vào đồ vật đó không?",1,"[{""added"": {}}]",7,1
21,2024-05-14 14:50:52.453068+00,16,Trẻ có biết đi không?,1,"[{""added"": {}}]",7,1
22,2024-05-14 14:51:25.125444+00,17,Trẻ có nhín vào đồ vật mà bạn đang nhìn không?,1,"[{""added"": {}}]",7,1
23,2024-05-14 14:52:15.302165+00,18,Trẻ có làm những cử động ngón tay bất thường ở gần mặt không?,1,"[{""added"": {}}]",7,1
24,2024-05-14 14:53:58.652827+00,19,Trẻ có cố gắng gây sự chú ý của bạn tới những hoạt động của trẻ không?,1,"[{""added"": {}}]",7,1
25,2024-05-14 14:54:23.174011+00,19,Trẻ có cố gắng gây sự chú ý của bạn tới những hoạt động của trẻ không?,2,"[{""changed"": {""fields"": [""Answer""]}}]",7,1
26,2024-05-14 14:56:42.085515+00,20,Bạn có bao giờ nghi ngờ trẻ bị điếc không?,1,"[{""added"": {}}]",7,1
27,2024-05-14 15:00:27.988595+00,21,Trẻ có hiểu điều mọi người nói không,1,"[{""added"": {}}]",7,1
28,2024-05-14 15:02:53.65611+00,22,Thỉnh thoảng trẻ có nhìn chằm chằm một cách vô cảm hoặc đi thơ thẩn không có mục đích không?,1,"[{""added"": {}}]",7,1
29,2024-05-14 15:10:21.668956+00,23,"Khi đối mặt với những điều lạ, trẻ có nhìn vào mặt bạn để xem phản ứng của bạn không?",1,"[{""added"": {}}]",7,1
30,2024-05-21 10:34:19.675781+00,6,Result object (6),2,"[{""changed"": {""fields"": [""Typeof""]}}]",8,1
31,2024-05-21 10:37:14.955435+00,6,Result object (6),2,"[{""changed"": {""fields"": [""Typeof""]}}]",8,1
32,2024-05-22 15:15:02.766018+00,4,TestGayss object (4),3,"",17,1
33,2024-05-22 15:15:02.884029+00,3,TestGayss object (3),3,"",17,1
34,2024-05-22 15:15:02.996823+00,2,TestGayss object (2),3,"",17,1
35,2024-05-22 15:15:03.103782+00,1,TestGayss object (1),3,"",17,1
36,2024-05-22 15:21:12.18752+00,5,TestGayss object (5),2,"[{""changed"": {""fields"": [""Username""]}}]",17,1
id,marks,question,yes,no,answer
1,1,"Trẻ thích được đung đưa, nhún nhảy trên đầu gối của bạn không?",Có,Không,No
2,1,Trẻ có quan tâm đến trẻ khác không?,Có,Không,No
3,1,"Trẻ có thích trèo lên các đồ vật, như là cầu thang không?",Có,Không,No
4,1,"Trẻ có thích chơi ú óa, chốn tìm không?",Có,Không,No
5,1,"Trẻ đã bao giờ chơi giả vờ chưa, ví dụ như nói điện thoại hoặc chăm sóc búp bê, hoặc chơi giả vờ với các đồ vật khác?",Có,Không,No
6,1,"Trẻ đã bao giờ dùng ngón trỏ của mình để chỉ, để yêu cầu đồ vật?",Có,Không,No
7,1,"Trẻ đã bao giờ dùng ngón trỏ của mình để chỉ, để thể hiện sự quan tâm đến đồ vật nào đó không?",Có,Không,No
8,1,"Trẻ có thể chơi đúng cách với các đồ chơi nhỏ mà không cho vào miệng, nghịch lung tung hoặc thả xuống không?",Có,Không,No
9,1,Trẻ đã bao giờ mang đồ vật đến khoe với bạn (cha mẹ) không?,Có,Không,No
10,1,Trẻ có nhìn vào mắt của bạn lâu hơn một hoặc hai giây không?,Có,Không,No
11,1,Trẻ đã bao giờ quá nhạy cảm với tiếng động không? VD: Bịt hai tai,Có,Không,Yes
12,1,Trẻ có cười khi nhìn thấy mặt bạn hoặc thấy bạn cười không?,Có,Không,No
13,1,Trẻ có bắt chước bạn không? VD: Khi bạn làm điệu bộ trên nét mặt trẻ có bắt chước không?,Có,Không,Yes
14,1,Trẻ có đáp ứng khi gọi tên không?,Có,Không,No
15,1,"Nếu bạn chỉ đồ chơi ở một vị trí khác trong phòng, trẻ có nhìn vào đồ vật đó không?",Có,Không,No
16,1,Trẻ có biết đi không?,Có,Không,No
17,1,Trẻ có nhín vào đồ vật mà bạn đang nhìn không?,Có,Không,No
18,1,Trẻ có làm những cử động ngón tay bất thường ở gần mặt không?,Có,Không,Yes
19,1,Trẻ có cố gắng gây sự chú ý của bạn tới những hoạt động của trẻ không?,Có,Không,No
20,1,Bạn có bao giờ nghi ngờ trẻ bị điếc không?,Có,Không,Yes
21,1,Trẻ có hiểu điều mọi người nói không,Có,Không,No
22,1,Thỉnh thoảng trẻ có nhìn chằm chằm một cách vô cảm hoặc đi thơ thẩn không có mục đích không?,Có,Không,Yes
23,1,"Khi đối mặt với những điều lạ, trẻ có nhìn vào mặt bạn để xem phản ứng của bạn không?",Có,Không,No
id,profile_pic,mobile,status,created_on,desc,user_id,note
1,media/profile_pic/Screenshot_2024-05-02_202237_ntjytf,0982129321,f,2024-05-02 13:24:29.057904+00,"Trong lớp học, cậu bé tên là Minh thường ngồi một mình, tập trung vào việc đọc sách mà cậu yêu thích. Minh không thích tiếp xúc xã hội và thường tránh giao tiếp với người khác. Thay vào đó, cậu thích tập trung vào những sở thích cụ thể như vẽ tranh hoặc tìm hiểu về các đề tài mà cậu quan tâm.",3,
2,media/profile_pic/17161134974391493617410885848403_ikoxtg,828282,f,2024-05-19 10:11:54.203985+00,Smsjgehe,7,
5,media/profile_pic/Screenshot_2023-12-25_204754_ona81l,9084757886,f,2024-05-19 10:19:44.698445+00,fsdafsda,9,
6,media/profile_pic/8a6dff0a5b6dc639d63efcd82250e4e6-removebg-preview_yoy5oe,0901234567,f,2024-05-22 13:59:39.366453+00,Tôi là bệnh nhân ,10,
7,media/profile_pic/z5464636176188_48ae5a16cc4a88500ed242f1831dfd10_it8cjl,0832348886,f,2024-05-24 08:11:33.808101+00,MR Dũng,11,
session_key,session_data,expire_date
6fyuyrq5ycwp5h6n3qkg2kaas3t6uo72,.eJxVTktLAzEQ_i9zLlvTNPvoTY9CQaQoKLJMZpJucE2WTRaU0v9uUvagt_me812gxyUN_RLN3DuGAwjY_OU00qfxRcBxLHSFRGHxqbp5VjlW9xkZnxxhcsE_rKl_VQPGIfcw19KyUZ2VUtpO1rXmnZKsVcuGmkbbtrmzVqh9KzUyMiulRWf3aleTFGVfDORwXIf0MWEycHi_gDffKX_YZss0BzIxZjSGs_MlRGHKNsjnbdOEM34VA1w3kMTbiR6fTudn8YI_x1f4uP4C-kJeOw:1s124u:m1tAcgDVlb8De4Led_IC0l3td_-QHdJGPq3SXMF7eJs,2024-05-12 10:48:16.684188+00
97183s1b2bfy4jcculsois8h6goqw8d6,eyJzb2NpYWxhY2NvdW50X3N0YXRlIjpbeyJuZXh0IjoiLyIsInByb2Nlc3MiOiJsb2dpbiIsInNjb3BlIjoiIiwiYXV0aF9wYXJhbXMiOiIifSwiYzF6S3FTVWdyVzJLYWYwTiJdfQ:1s1263:7F9l9d3NIQOKuRD5MoNY19bdIdytWBmUNlw6eoQ2ZC4,2024-05-12 10:49:27.633141+00
byk9j0wtr03usqv22vyh73m4j8niqomy,.eJxlUEtuhDAMvYvXCMX54bBrr1FVyHFSgTqFEYRuRnP3AmVDu7Pez_Z7AItM61g6XkufxzIIl2Eau69c-ikt0L494HeGFpZJBr6dDqiAC7TYoCWkRukatdcqNBXc5-l7SHneLLjJ1mE3oyJnvXNKae-CItIGLTzfKzh2d-uS5-5QGrhgkeUzjzvBt9sO1-cF9aE56aV-uXzwerouUT0v_ZbjkwuBPOdADpMY_og2SE6MXhvtIxmTAlly0YvoqJLDKI3NjKQEQ95f_19bTt2fQkLwCrV9_gDHC3JT:1s3CgA:fwlE-ukCKhxywDG8_UpsMHinMkr93Oz01L8T3Hb1V6U,2024-05-18 10:31:42.999117+00
fas1fv33hj5r5utl9rr0qo4nmoht2vod,.eJxlUEluhTAMvYvXCMWZcNi116gq5DipQKVQQejm69-9QNmg7qw32X4PYJF5m0rHW-nzVAbhMsxT95VLP6cV2rcH_M3QwjrLwOPlgAq4QIsNWjKktKmN0QaVreB7mX-GlJfdgrtsGw4zKnLWO6eU9i4ool1s4flewbm729a8dKfSwA2LLJ95OggexwOurwvqU3PRa_1y--D1ct2iel77PccnFwJ5zoEcJjH8EW2QnBi9NtpHMiYFsuSiF9FRJYdRGpsZSQmGfLz-v7aculshtm4cBmvp-Qu47HJM:1s3Hho:v2ycjCXmlRSnDK6L2ZpAamBubhaZniuhSNgDJmnlozM,2024-05-18 15:53:44.763246+00
cm246muvj6vsqf5wkpt62uos53nbe8he,.eJwVyrEKg0AQRdF_ebVgb5cqIIiNmCIEGYbVXTE7izOiIP67a3c53BMqHGghZtmiDWpkDtX3RHSHoULJXkRDnFAgrcJONesiU4hZlCXlHTlpMz8kWun_DLgKfPyexr5ux1dv87vp8LtuilEl2A:1s3orz:7891zpCEbRRppmnabk1v0NCqYSxlii4mcDhFohy3O0k,2024-05-20 03:18:27.117856+00
lat2gw59j1t2xg1jlb3fxkpthm6vtkyz,.eJxlUEtuhTAMvIvXCMWJyYdde42qQiYYgUrhCUI3T-_uJZQN6srWeMbj8RM4xmWfU8N7GmROY-Q0LnPzLWlYug3qjyf89VDDtsSRp0sBBXCCGh0SEWqFZeU1aecKeKzLz9jJekjwoO1jFqPyRrmAVWUIrbbBmkrB67OA07vZN1mbk6nhhrUcv2TOA56mDJfXBeXJucZb-XZL8H6pbqsG3oZs0IsXaTVZCb3qXLAUvLDDGKrodWsMMYVWCQWyzlgmaSP53juLKriQo_9_m3TN7SG61PqoaF6_pMlxlQ:1s1cTS:LT4hluBN0mqCnlHD2gyxP36DZ3k4AZjpKtRAzC9ySaw,2024-05-14 01:40:02.225558+00
hze0fw7j7200ww2adztzcyb6our7ghvw,.eJwVykEKg0AMRuG7_OtCwUIRd55DioR00KCdTE0EQebuxt3j8Z0wZaGVmHXPPpqTJ3TDiZwOR4cnz6omecIDZVNOZnFXnSTHMdYSHJG0-zwW2uh3A9TgzfJyad_SS5uO_xefegGEbSWi:1s6rRi:tKKujY8djrMyhf3WNy3-3LaGACTRKjnuozqezFvRtDU,2024-05-28 12:39:54.793038+00
81pbuwikk7pbh3sniem0iari4euunhh7,.eJwVyjEKg0AQRuG7_LWQQovgFSzS2EmQYRh0QWc2zggJsnd30z0-3gU3TrQRs50asweFoJ8uqHwDPR68mnnSBQ3yYSzuVTdbklZxtlx31KQz1jnTQft_QGkwGrefgVRev2capcO73Ig3Jbk:1s9z9z:nh9d2P5q5pCvIvWGE9xnOlpOGM-LjVJisZRor0ESupU,2024-06-06 03:30:31.927179+00
c0w6r3q0f1oycjf1fw092i9bqs6nfmi3,.eJxVjMEOgjAQRP-lZ0O2sKxbb_IjZLstoZGURNqT8d8Fw0GP82bmvcwotcxj3eJzTMHcjDWXX-ZFHzEfhSzLgRtRXWsuzXdz1ltz31PMJamUtObhfP2pZtnm3eMnFxxbBAJghr4HD1bQd33QiaNCC4RtJNJWMUxXQFJPtkNk1xGxeX8AmFs7IA:1sAAfR:m4E9-EDxeoxxTMyjHp_f-sZeZik9C-_wtys4f4Q33bE,2024-06-06 15:47:45.022145+00
bao9d94cqxocfjlbw37ndjq17bnwq8tp,.eJytVNuO4jgQ_ZXdPDeQOHekkTbQ3OlmuDUMq1VkbCeYTuIQO2lgxL-PQ-jeZjWaedkHJHyq6tTlVOW7whmiMIIIsTwRfvWKWEgTpflducHlX4qVZpJH0YOSc5L5_z7TjBUUk0xpKpoiraVF0TTdUnXN1FXN1i1gaMC1bGmNIBf-jb4Kx1AQf89oQj4YyVFk0JcGeE3MuSTcCZHyZqNxq4jXQ8bCiNQRiyUtPKfSxzBt1wa6_DluzYwdleD9wQn3RWHvXZODMIyDPWEUQNuM6zBN31nKjhBLBEnEO2GO_19Cnm9_MRYSQxpJe5EXlIi62OG_whK6BV_NfkEyGtByTCLLiaxR-DvIdzKsRg8DNjQO6DBe6qBgb3wxSzwZmMCYSPuLJP3jJZdASpHIM_JpoNFO_3nRDdjw2qHD0Ch6XlpFMIi9M36chrNXw1XnWzYxs33wgnFLCOTMOv3BM-8-rmcuLvAX7lo1JNOFtCCJ_6kKiQUwptHpAyyrolCumGZrhmU4rqaXG5DeABOYmn65VFt3v4cp5PyNZaVQf4642hu35vlovuGox-m4vynsSXs13X3lR1hs3ZXlWt7W--kKUu7zPCVZlSKAESdVvluNZdE0k1H3jVyJPrfxGxXLNAIGwUcKCUAk5IjeFb27BQWowKipZk0FC01rAq1p6nVH0zeKnIYkEqQcRyKPRfo2lOshInI9lqo76YVYemsA5mLnpzCDcelQUlRLBTHOZBCR6N-_OPLftPbf1UwzGsPsVD0v_zwogr2S5F4-eS7XBNrD-2fmU76bv3KCwK1D1Vsz1g6Fc54np6mfIzEaivFkvO2566HeGui9Z9zbJObx6bzveBSDc2tytq10iA_7oYAnsxi1UutlMPjW7wB1suquaVHLH71lC3U6_iYaLWodDCZnI4xH4boFSceqDdvnAhiH42nBVjTrPx-19nRJd0l3kE6MUKSO2JopWAFbdfV5wNsJbIffRt5KnXuzzrw77ffW4Iku8VywaLl4ItHrrG0iK3mddkN5_eWn8tqkzwnKiKhUkntPpRx-eQ93-oOr_qBu2a7U_3L5AQMw3Rc:1s2UVf:S5w4X5amg1ISVsR9Zzr8zdf_tB-3czzfUeSgmrfGv98,2024-05-16 11:21:55.030131+00
fs3bd7s2p2l8ro6uq28zz4nri7sm19di,.eJxVjMEOwiAQRP-Fs2kAqWW96Y80uwsEYkMTgZPx3wXTgyZzmXkz8xIrthrXVvxzTU5cxSJOvxkhP3weALdtxBMy7y3X6ds5cJlu3flcE2NNe74fq7-riCWOHwwgVQBzAaYuCfPM1gV_BuW0YXbkDXnSlgJqZUmyMrT0LjA4heL9Ae2TPco:1s8dV2:2x1ct8wKZAY7I9NP5Ajb-cKjeMIgNh81MRfE4nDuzUQ,2024-06-02 10:10:40.9787+00
kooy4x73t1qqs9jbeztwi2w6kapy3cui,.eJxVjMEOwiAQRP-Fs2kAqWW96Y80uwsEYkMTgZPx3wXTgyZzmXkz8xIrthrXVvxzTU5cxSJOvxkhP3weALdtxBMy7y3X6ds5cJlu3flcE2NNe74fq7-riCWOHwwgVQBzAaYuCfPM1gV_BuW0YXbkDXnSlgJqZUmyMrT0LjA4heL9Ae2TPco:1s8dV4:8-_uG39vc6AcGRbUs67lE3XxGoEkvRhVjA54vjmJDJ4,2024-06-02 10:10:42.088104+00
63ub00208ofsc46mavptvc9c4gtyr0jq,.eJxlUEluhTAMvYvXCMWZcNi116gq5DipQKVQQejm69-9QNmg7qw32X4PYJF5m0rHW-nzVAbhMsxT95VLP6cV2rcH_M3QwjrLwOPlgAq4QIsN2kZrq1XtAhrjqILvZf4ZUl52C-6ybTjMqMhZ75xS2rugiLRBC8_3Cs7d3bbmpTuVBm5YZPnM00HwOB5wfV1Qn5qLXuuX2wevl-sW1fPa7zk-uRDIcw7kMInhj2iD5MTotdE-kjEpkCUXvYiOKjmM0tjMSEow5OP1_7Xl1N0KwdqSDuifv1I6chg:1s2ndF:UmjRJ5tdr85AppL80mtdRHTs9csLAD6UFmV7p6ohljo,2024-05-17 07:47:01.49799+00
2zi0dp8iqtsy90kxquqy79r359s8akk6,.eJxlUEtuhTAMvIvXCCVxEhx27TWqCjlOKlApVBC6eXp3L1A2qDtrfrbnASwyb1PpeCt9nsogXIZ56r5y6ee0Qvv2gL8ZWlhnGXi8HFABF2h1o21jDKGvrUMTECv4XuafIeVlt-hdtg2HWSty1junlPEuKCKD2sLzvYJzd7eteelOJcINiyyfeToIHscDrq8L6lNz0Wv9cvvg9XLdonpe-z3HJxcCec6BnE6C_BFtkJxYe4PGR0JMgSy56EVMVMnpKI3NrEmJDvl4_X9tOXW3QprahmAJn79ZjHIw:1s2njx:PrH4fI7Lw-Bbof_UYOayaT0fCVATuLWBPon7Uiu4Ov4,2024-05-17 07:53:57.506329+00
id,marks,date,typeof,tester_id
1,11,2024-05-19 09:41:12.642062+00,Tự kỷ,
2,5,2024-05-19 09:41:57.708496+00,Tự kỷ,
3,18,2024-05-19 09:42:38.122225+00,Tự kỷ,
4,8,2024-05-19 10:07:03.986021+00,Tự kỷ,
5,22,2024-05-21 10:01:33.496857+00,Test Tự kỷ,
16,18,2024-05-24 08:19:39.782914+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",11
6,6,2024-05-21 10:37:14.874606+00,"<div style='font-weight: 100 ;    font-size: 17px;                 '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng cảnh báo</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ có nguy cơ cảnh báo cao gặp các vấn đề tâm lý về <span>M-Chat</span> ,cần hỗ trợ tâm lý và theo dõi, đánh giá lại sau 3 tháng. </span></div>",
7,10,2024-05-21 14:06:42.8554+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",
8,18,2024-05-22 14:28:36.965669+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",
9,7,2024-05-22 15:15:54.215+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng cảnh báo</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ có nguy cơ cảnh báo cao gặp các vấn đề tâm lý về <span>M-Chat</span> ,cần hỗ trợ tâm lý và theo dõi, đánh giá lại sau 3 tháng. </span></div>
    ",5
10,1,2024-05-22 15:43:23.649672+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng an toàn</span>. <br>&emsp; ⇒ <span style='font-style: italic;'> Kết qủa này thể hiện trẻ không có vấn đề về <span>M-Chat</span>. Các biểu hiện là bình thường như mọi trẻ em khác cùng trang lứa. </span></div>
    ",6
11,14,2024-05-23 07:53:31.490323+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",7
12,20,2024-05-23 07:56:55.384433+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",8
13,20,2024-05-23 07:57:37.147885+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",8
14,9,2024-05-23 08:00:23.828052+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",9
15,17,2024-05-24 07:57:11.115608+00,"     <div style='font-weight: 100 ;    font-size: 17px;
                '>● Lĩnh vực <span class='antd-pro-pages-checking-index-textBoldExplain'>M-Chat</span> điểm của trẻ đang nằm là <span class='antd-pro-pages-checking-index-textBoldExplain'>vùng nguy cơ cao</span>. <br>&emsp; ⇒ <span style='font-style: italic;'>  Kết quả này thể hiện trẻ đang gặp vấn đề về <span>M-Chat</span> cần liên hệ với các bác sĩ, chuyên gia tâm lý để có đánh giá chuyên sâu và trị liệu tâm lý tích cực sớm nhất. </span></div>
    ",10
id,token,token_secret,expires_at,account_id,app_id
id,provider,uid,last_login,date_joined,extra_data,user_id
3,1,103578356812932026135,2024-05-19 10:08:25.990128+00,2024-05-14 11:32:28.72216+00,"{""aud"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""azp"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""exp"": 1716116905, ""iat"": 1716113305, ""iss"": ""https://accounts.google.com"", ""sub"": ""103578356812932026135"", ""name"": ""Đăng Vũ"", ""email"": ""sirdang.mrvu@gmail.com"", ""at_hash"": ""n9NzZ3-YFmHBItTsAiAEBw"", ""picture"": ""https://lh3.googleusercontent.com/a/ACg8ocJC_tntpcAlD_aEgh26s1qbFimyAo5oWszRso2OywzZ_bF15x4=s96-c"", ""given_name"": ""Đăng"", ""family_name"": ""Vũ"", ""email_verified"": true}",4
2,1,108546550026590882314,2024-05-19 10:17:21.309066+00,2024-05-02 13:12:19.072594+00,"{""aud"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""azp"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""exp"": 1716117440, ""iat"": 1716113840, ""iss"": ""https://accounts.google.com"", ""sub"": ""108546550026590882314"", ""name"": ""Vũ Vịt"", ""email"": ""vitvu773@gmail.com"", ""at_hash"": ""TMGK3Xy6-_fLGRsFHL_4ew"", ""picture"": ""https://lh3.googleusercontent.com/a/ACg8ocJo-k9z7JGpJv6WXghCJw8hfB-uuDVDB0gOgW2_oLZdNwgCiw=s96-c"", ""given_name"": ""Vũ"", ""family_name"": ""Vịt"", ""email_verified"": true}",3
1,1,108307915534162696350,2024-05-23 03:31:01.678883+00,2024-04-28 10:50:13.001605+00,"{""aud"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""azp"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""exp"": 1716438661, ""iat"": 1716435061, ""iss"": ""https://accounts.google.com"", ""sub"": ""108307915534162696350"", ""name"": ""Việt Coder"", ""email"": ""viet.mrvu@gmail.com"", ""at_hash"": ""LT2pvIUWLnNniCVR5VCAaQ"", ""picture"": ""https://lh3.googleusercontent.com/a/ACg8ocLTIYhLw_4tzKLPh6n0v_M5yKExIO0yAQFvRgpIUdbYlTQJLzE=s96-c"", ""given_name"": ""Việt"", ""family_name"": ""Coder"", ""email_verified"": true}",2
4,1,110954219187763609739,2024-05-24 08:11:57.610746+00,2024-05-24 08:10:42.00984+00,"{""hd"": ""mrvu.vn"", ""aud"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""azp"": ""457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com"", ""exp"": 1716541917, ""iat"": 1716538317, ""iss"": ""https://accounts.google.com"", ""sub"": ""110954219187763609739"", ""name"": ""Đăng Vũ"", ""email"": ""dang.vu@mrvu.vn"", ""at_hash"": ""BjJr6XCxBR7p8t6MjtlA3w"", ""picture"": ""https://lh3.googleusercontent.com/a/ACg8ocLuCB4_v1TabiaIBK0PiVXz1aWZL-m6mRf3dLP2YM0NBGsOBYQ=s96-c"", ""given_name"": ""Đăng"", ""family_name"": ""Vũ"", ""email_verified"": true}",11
id,provider,name,client_id,secret,key,provider_id,settings
1,google,Autism,457972397289-5m80edjq8gjvv7j95s2ggmfjeoi2a75m.apps.googleusercontent.com,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,1,1,{}
id,profile_pic,address,mobile,status,totalstar,timeclick,star,desc,user_id,latitude,longitude
1,media/profile_pic/Screenshot_2024-04-26_142918_vnl8rr,17 Hồ Hảo Hớn,0908475786,f,5,1,5,"A physician, medical practitioner, medical doctor, or simply doctor is a health professional who practices medicine, which is concerned with promoting, maintaining or restoring health through the stud…",2,10.76020280,106.69342120
2,media/profile_pic/20240513_091438_tx0ybh,"70bis Trần Đình Xu, Phường Cô Giang, Quận 1",0902885886,f,5,1,5,Bác sỹ vui vẻ,4,10.76058100,106.69140050
3,media/profile_pic/Screenshot_2023-12-26_185408_dw10vs,"",9084757886,f,5,1,5,Heloo,8,,
id,status,title,description,start_time,end_time
id,mobile,username,gender,date,who
5,9084757886,Vũ Trí Việt,Nam,2024-05-14,Phụ huynh
6,090138812,Vũ Đăng Khoa,Nữ,2024-05-08,Phụ huynh
7,0982129321,Vũ Hải Đăng,Nam,2022-05-23,Phụ huynh
8,0982129321,Lê Lan Hương,Nữ,2024-05-01,Giáo viên
9,0908475786,Vũ Việt Trí,Nam,2024-05-28,Phụ huynh
10,0902886885,Vũ Khoa,Nam,2022-12-30,Phụ huynh
11,0832348886,Vũ Trí,Nam,2022-11-22,Phụ huynh
