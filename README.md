# Trigger-on-mssql
Bài tập 05 của sinh viên: K225480106057 - Phạm Mạnh Quỳnh - môn Hệ Quản Trị CSDL
- SUBJECT: Trigger on mssql

A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.
----------------------------------------------------------------------------------------------------
A. Trình bày lại đầu bài của đồ án PT&TKHT
1. Yêu cầu: Phân tích thiết kế hệ thống hỗ trợ học sinh chọn nghành học tại trường Đại Học Kỹ Thuật Công nghiệp
2. Dựa trên yêu cầu của bài toán đã nêu ở trên, em có các bảng dữ liệu 3NF như sau:
- Bảng NguyenVong:
  
![Screenshot 2025-04-23 211140](https://github.com/user-attachments/assets/fc432231-b722-4889-88c3-91ba8853c143)
- Bảng DieuKien:
  
![Screenshot 2025-04-23 211413](https://github.com/user-attachments/assets/d2b5b5ab-42bb-4e25-bbb0-a0a319153458)
- Bảng TruongCap3:
  
![image](https://github.com/user-attachments/assets/15c37346-e575-4ff1-af73-ca5a287b902b)
- Bảng SinhVien:
  
![Screenshot 2025-04-23 211514](https://github.com/user-attachments/assets/063943d8-eb31-4eca-93b8-ca1176238e0f)
- Bảng GoiY:
  
![image](https://github.com/user-attachments/assets/d870db2b-5fc1-4746-bf97-c16b456fe77a)
- Bảng ChonNghanh:
 
![image](https://github.com/user-attachments/assets/3719af64-9851-4120-99c9-e6e86fa3f76c)

- Bảng NghanhHoc:
  
![Screenshot 2025-04-23 221728](https://github.com/user-attachments/assets/49a27bd2-ac39-437c-b917-cc44f1f9e151)

- Với các khóa ngoại liên kết cho các bảng:
  
![Screenshot 2025-04-23 212051](https://github.com/user-attachments/assets/2cf0091e-a520-4dd7-88a9-8d49bac42af9)
![Screenshot 2025-04-23 212151](https://github.com/user-attachments/assets/15ec005f-9f5a-4eb6-9e75-d1529e74cdbb)
![Screenshot 2025-04-23 212159](https://github.com/user-attachments/assets/bc74e1db-00fb-421e-84e7-5b511567d9ee)
![Screenshot 2025-04-23 212206](https://github.com/user-attachments/assets/0e671a7f-26cb-4eec-8613-339ac684d0e4)
![Screenshot 2025-04-23 212214](https://github.com/user-attachments/assets/f7d038f9-ecc6-4026-b3e5-c4f1bbdf8595)
![Screenshot 2025-04-23 212225](https://github.com/user-attachments/assets/a4299967-6ad7-4b64-a97e-898519af7dc3)
![Screenshot 2025-04-23 221733](https://github.com/user-attachments/assets/cf6c4613-c174-4de9-9923-0a8273bd02b7)

B. Nội dung bài tập 5:
1. tạo cơ sở dữ liệu cho hệ thống hỗ trợ sinh viên chọn nghành học tại Trường Đại Học Kỹ Thuật Công Nghiệp
2. Bổ sung thêm trường phi chuẩn: DiemXetNghanh (điểm xét nghành)
3. Viết trigger để đạt mục tiêu:
- Bấm dấu "+" vào bảng và nhấp chuột phải vào _Trigger_, sau dó chọn _New Trigger..._
  
![Screenshot 2025-04-23 220514](https://github.com/user-attachments/assets/964a70a0-be20-4f8e-910c-f86abd419852)

- trigger tự động cập nhật điểm xét nghành:
![Screenshot 2025-04-23 221235](https://github.com/user-attachments/assets/d697ca9a-402e-4ddf-b11e-3541b4399fd6)

- trigger kiểm tra xem điểm xét nghành của sinh viên có đủ với điểm yêu cầu của nghành không: 
![Screenshot 2025-04-23 221641](https://github.com/user-attachments/assets/091e2c1a-889e-4cba-9696-3ca517646eda)
![Screenshot 2025-04-23 221645](https://github.com/user-attachments/assets/904c0653-cd6b-4a78-9cff-6fd298bb45c6)

- thông tin demo các bảng:
  
![Screenshot 2025-04-23 225222](https://github.com/user-attachments/assets/819ad0f4-6507-44ac-93b5-f4f235f23e7a)
![Screenshot 2025-04-23 225230](https://github.com/user-attachments/assets/bc77a468-21ff-40e2-bead-c796d6fb82a9)
![Screenshot 2025-04-23 225307](https://github.com/user-attachments/assets/064ec27a-dcd9-46c8-a463-49da2b9eabbd)

![Screenshot 2025-04-23 225447](https://github.com/user-attachments/assets/80ebf859-8b37-4ad7-928a-53b79099dade)

![Screenshot 2025-04-23 225338](https://github.com/user-attachments/assets/2f8ffef6-c85a-4331-90f3-5b03d576e3d5)

![Screenshot 2025-04-23 225316](https://github.com/user-attachments/assets/1e5c3d31-f6b1-4a74-a126-cf172cd3bab3)

- Kết Quả sau khi nhập dữ liệu khi có trigger:

![Screenshot 2025-04-23 230111](https://github.com/user-attachments/assets/0ffcdaec-390e-437a-8765-00be52028e1d)


 => Kết luận: Trigger giúp em kiểm tra xem các trường đã đúng yêu cầu hay chưa thỏa mãn yêu cầu và viết ra để tiện theo dõi.
