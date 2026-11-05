# Bài làm – GreenField FC

Họ và tên: Ngô Gia Hưng

Lớp: CNTT3 

## 4.2 Thao tác CLI
Lệnh đã chạy:

pwd

ls -Force -Recurse

mv .\ghi-chu-ban-giao.txt .\docs

mkdir backup

cp .\data\danh-sach-cau-thu.xlsx .\backup

rm .\temp_002.tmp

cd .\logs

ls

cd ..

Kết quả liệt kê toàn bộ dự án (bao gồm file ẩn):


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
d-----        05/11/2026   1:31 CH                backup                                      
d-----        05/11/2026   1:28 CH                data                                        
d-----        05/11/2026   1:30 CH                docs                                        
d-----        05/11/2026   1:21 CH                evidence                                    
d-----        05/11/2026   1:23 CH                logs                                        
d-----        05/11/2026   1:18 CH                web                                         
-a----        05/11/2026   1:18 CH             92 .env                                        
-a----        05/11/2026   1:18 CH            701 bai_lam.md                                  
-a----        05/11/2026   1:18 CH          43407 Danh Sach Cau Thu.xlsx.inspect.ndjson       


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\backup


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        05/11/2026   1:18 CH           8624 danh-sach-cau-thu.xlsx                      


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\data


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        05/11/2026   1:18 CH           8624 danh-sach-cau-thu.xlsx                      


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\docs


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        05/11/2026   1:18 CH            554 ghi-chu-ban-giao.txt                        


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\logs


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        05/11/2026   1:18 CH            560 access.log                                  


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
d-----        05/11/2026   1:18 CH                images                                      
-a----        05/11/2026   1:18 CH            750 app.js                                      
-a----        05/11/2026   1:18 CH            680 index.html                                  
-a----        05/11/2026   1:18 CH            401 style.css                                   


    Directory: C:\Users\LEGION\CNTT\Starter_Kit_GreenField_FC\starter-kit\greenfield-fc\web\im
    ages


Mode                 LastWriteTime         Length Name                                        
----                 -------------         ------ ----                                        
-a----        05/11/2026   1:18 CH           2115 greenfield-logo.png                         
-a----        05/11/2026   1:18 CH            413 greenfield-logo.svg    

## 4.3 Lọc log
**a) Lệnh lọc status=500:**

Get-Content .\logs\access.log | Select-String "status=500" > .\logs\loi_500.txt

Get-Content .\logs\loi_500.txt -TotalCount 2

**Hai dòng đầu của loi_500.txt:**

2026-10-28 18:03:25 GET /api/players status=500
2026-10-28 18:05:12 GET /api/players status=500

**b) Lệnh đếm status=404 và kết quả:**

(Get-Content .\logs\access.log | Select-String "status=404").Count

4

## 4.4 Script báo cáo
Lệnh chạy script:

.\tong_hop.ps1

Nội dung logs/tong_hop.txt:

=== BAO CAO GREENFIELD FC ===

2026-10-28 18:03:22 GET /images/logo-sai.png status=404
2026-10-28 18:07:44 GET /fixtures status=404
2026-10-28 18:13:52 GET /favicon.ico status=404
2026-10-28 18:32:18 GET /api/players status=404


3

## 4.6 Kiểm tra website và báo cáo lỗi
| Tab | Tên file/thông báo | Cách khắc phục |
|---|---|---|
| Network | Logo | Điền lại đường liên kết đúng |
| Console | | |

**Context:**

**Expected:**

**Actual:**

**Log:**

Câu tìm kiếm Google:
"https://stackoverflow.com/"
## Ghi chú Excel
Công thức/khó khăn đã gặp:
