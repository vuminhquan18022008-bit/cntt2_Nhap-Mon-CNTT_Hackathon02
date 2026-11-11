# BÀI LÀM – HACKATHON 02

- **Mã đề:** 08
- **Họ tên:Vũ Minh Quân**
- **Lớp:CNTT2**
- **Link repository:**
- **Hệ điều hành (Windows/macOS):Window**

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
1.pwd
2.ls -force
3.mv .\quy_trinh_thu_am.txt docs
4.mkdir backup
5. cp .\data\lich_thu_thang_8.xlsx .\backup\
6.cd .\logs\
7.ls
8.cd..
9.rm "*.tmp"
10.ls -recurse -force
11..\tong_hop.ps1


```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
  Directory: E:\phong-thu-am-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        11/11/2026   2:22 PM                backup
d-r---        11/11/2026   2:22 PM                data
d-r---        11/11/2026   2:22 PM                docs
d-r---        11/11/2026   2:05 PM                evidence
d-r---        11/11/2026   1:48 PM                logs
d-r---        11/11/2026   1:35 PM                web
-a----         11/3/2026   7:08 AM             74 .env
-a----        11/11/2026   1:59 PM             42 .env.example
-a----        11/11/2026   1:58 PM              6 .gitignore
-a----        11/11/2026   2:27 PM           2529 bai_lam.md
-a----        11/11/2026   1:56 PM            351 README.md
-a----        11/11/2026   1:48 PM            322 tong_hop.ps1


    Directory: E:\phong-thu-am-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/11/2026   2:11 PM          10965 lich_thu_thang_8.xlsx


    Directory: E:\phong-thu-am-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/11/2026   2:11 PM          10965 lich_thu_thang_8.xlsx


    Directory: E:\phong-thu-am-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM            157 quy_trinh_thu_am.txt


    Directory: E:\phong-thu-am-website\evidence


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/11/2026   2:05 PM          39878 console.png
-a----        11/11/2026   2:05 PM          10097 network.png


    Directory: E:\phong-thu-am-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        11/11/2026   1:40 PM            638 loi_500.txt
-a----         11/3/2026   7:08 AM            992 studio.log
-a----        11/11/2026   2:27 PM            682 tong_hop.txt


    Directory: E:\phong-thu-am-website\web


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        11/11/2026   1:35 PM                images
-a----         11/3/2026   7:08 AM            586 app.js
-a----        11/11/2026   2:06 PM            517 index.html
-a----         11/3/2026   7:08 AM            460 style.css


    Directory: E:\phong-thu-am-website\web\images


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         11/3/2026   7:08 AM           3097 logo-soundlab.png

```

## 4.3. Lọc log truy cập website

### a) Lệnh lọc các dòng status=500

```shell
cat logs\studio.log |sls status=500

```

### 2 dòng đầu tiên trong logs/loi_500.txt

```text
2026-08-28 08:25:34 POST /api/dat-lich status=500
2026-08-28 08:34:07 POST /api/thanh-toan status=500

```

### b) Lệnh đếm số dòng status=404 và kết quả

```shell
cat logs\studio.log |sls status =404 | Measure-Object 

```

```text

4
```

## 4.4. Chạy script tong_hop (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\tong_hop.ps1

```

### Nội dung file logs/tong_hop.txt

```text
=== BAO CAO SU CO WEBSITE ===

2026-08-28 08:16:01 GET /tin-tuc status=404
2026-08-28 08:47:51 GET /san-pham-cu status=404
2026-08-28 08:58:24 GET /images/phong-thu-2.jpg status=404
2026-08-28 09:00:35 GET /images/phong-thu-2.jpg status=404




Count    : 6
Average  : 
Sum      : 
Maximum  : 
Minimum  : 
Property : 


```

## 4.5. README.md và bảo vệ thông tin bí mật

> README.md, .gitignore và .env.example được chấm trực tiếp trên file ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] README.md: Heading 1, mô tả có **in đậm** và *in nghiêng*, bảng, code block, task list, blockquote
- [x] .gitignore có dòng `.env` (tên file đúng, không có đuôi .txt)
- [x] .env.example có đủ tên biến, giá trị để trống (tên file đúng, không có đuôi .txt)

## 4.6. Kiểm tra trang web bằng DevTools (F12) và báo cáo lỗi

### Bảng lỗi

| STT | Tab DevTools phát hiện lỗi | Tên file hoặc thông báo lỗi | Cách khắc phục |
| --- | --- | --- | --- |
| 1 |network|   hienThiGoiThuAm is not defined| vào app.js sửa hienthigoithuam thành hienthigoithu
|2|console| đường dẫn ...web\images\logo is not found | vào images kiểm tra lại tên file ảnh và vào index.html dòng 10 để sửa |


> Ảnh chụp màn hình lưu trong thư mục `evidence/` (network.png, console.png). 

### Báo cáo lỗi gửi trưởng nhóm

- **Context: Tôi đang làm dự án phòng thu website trên window 11 nhưng ở tab console phát hiện lỗi** 
- **Expected:tôi mong muốn sau khi sửa thì logo trang web sẽ hiện lên ** 
- **Actual: tôi đã chèn ảnh logo đã lưu trong images** 
- **Log:GET file:///E:/phong-thu-am-website/web/images/logo-soundlab net::ERR_FILE_NOT_FOUND ** 


### Câu tìm kiếm Google

```text
site:stackoverflow.com GET file:///E:/phong-thu-am-website/web/images/logo-soundlab net::ERR_FILE_NOT_FOUND-macOS

```

## 4.7. Excel

> Phần Excel được chấm trực tiếp trên file `data/lich_thu_thang_8.xlsx`, không cần ghi vào đây.
