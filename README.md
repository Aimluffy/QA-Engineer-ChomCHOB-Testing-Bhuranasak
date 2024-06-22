# QA Engineer Testing-Bhuranasak
 ChomCHOB QA Engineer Testing
 Take exam by Bhuranasak

## Section 2: Automate Testing WEB Skills
  - This test script require the following features:
   - Python
   - Selenium Library
   - Robot framework 7.0
   - Robot framework Selenium Library 6.3.0
   - ChromeDriver
Submit file name >> `nejavu.robot`

## Section 3: Automate Testing API Skills
Can view complete documentation at link here >>>[Postman Test Document](https://documenter.getpostman.com/view/36299040/2sA3XWceEC/).
Submit file name VV
1. `ReqRes API Tests.postman_collection.json`
2. `ReqRes API.postman_environment.json`
3. `ReqRes API Tests.postman_test_run_(1Iteration).json`
4. `ReqRes API Tests.postman_test_run_(5Iteration).json`

## Section 1 - Manual Testing Skill and Testing Knowledge
1. หากต้องการ Design Test-case มี **Technique** อะไรบ้างที่สามารถช่วยให้การ Design Test-case เพื่อทดสอบระบบได้ครอบคลุม
   - Specific-Based Techniques (Black Box Techniques)
     - Boundary value analysis (BVA)
     - Equivalence partitioning (EP)
     - Decision table testing
     - State transition diagrams
     - Use case testing
   - Structure-Based Techniques (White Box Techniques)
     - Statement coverage testing
     - Decision testing coverage
     - Condition testing
     - Multiple condition testing
     - All path testing
   - Experience-Based Techniques
     - Error guessing
     - Exploratory testing
   - Experience-Based Techniques

2. Design Test-case จากโจทย์ต่อไปนี้อย่างน้อย 5 Case พร้อมระบุ **Technique** ที่ใช้ข้อนั้น ๆ
   - [โจทย์] : ผู้ใช้ต้องการโอน Point จากบัญชีตัวเอง ไปยังบัญชีปลายทาง โดยเงื่อนไขคือ

1. ขั้นต่ำในการโอน Point คือ 100 / การทำรายการ

| Test Case ID | เทคนิค | Test Case Description | Prerequisites | Test Steps | Test Data | Expected Output |
|---------------|--------|-------------------|----------------------|-----------------|-------------|-------------------|
| TC001 | Boundary Value Analysis | ทดสอบการโอนคะแนนขั้นต่ำ | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ยืนยันการโอน | จำนวนคะแนน: 100 | - การโอนสำเร็จ<br>- ไม่มีค่าธรรมเนียม |
| TC002 | Boundary Value Analysis | ทดสอบการโอนคะแนนต่ำกว่าขั้นต่ำ | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ยืนยันการโอน | จำนวนคะแนน: 99 | - การโอนสำเร็จ<br>- เพิ่มค่าธรรมเนียม 8 คะแนน |

2. สูงสุดในการโอน Point คือ 3,000 / การทำรายการ

| Test Case ID | เทคนิค | Test Case Description | Prerequisites | Test Steps | Test Data | Expected Output |
|---------------|--------|-------------------|----------------------|-----------------|-------------|-------------------|
| TC003 | Boundary Value Analysis | ทดสอบการโอนคะแนนสูงสุด | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ยืนยันการโอน | จำนวนคะแนน: 3,000 | - การโอนสำเร็จ |
| TC004 | Boundary Value Analysis | ทดสอบการโอนคะแนนเกินขีดจำกัด | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ยืนยันการโอน | จำนวนคะแนน: 3,001 | - การโอนถูกปฏิเสธ<br>- แสดงข้อความแจ้งเตือน |

3. หากโอน < ขั้นต่ำ ระบบคิดค่า Fee 8 Point โดยบวกเพิ่มจากค่าที่กรอก

| Test Case ID | เทคนิค | Test Case Description | Prerequisites | Test Steps | Test Data | Expected Output |
|---------------|--------|-------------------|----------------------|-----------------|-------------|-------------------|
| TC005 | Equivalence Partitioning | ทดสอบการคิดค่าธรรมเนียมสำหรับการโอนต่ำกว่าขั้นต่ำ | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ยืนยันการโอน | จำนวนคะแนน: 50 | - การโอนสำเร็จ<br>- หักคะแนนรวม 58 คะแนน |

4. ต้องกรอก Passcode 4 หลัก ให้ถูกต้องจึงทำรายการสำเร็จ

| Test Case ID | เทคนิค | Test Case Description | Prerequisites | Test Steps | Test Data | Expected Output |
|---------------|--------|-------------------|----------------------|-----------------|-------------|-------------------|
| TC006 | Decision Table Testing | ทดสอบการป้อนรหัสผ่านถูกต้อง | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ป้อนรหัสผ่าน<br>6. ยืนยันการโอน | จำนวนคะแนน: 1,000<br>รหัสผ่าน: 1234 | - การโอนสำเร็จ |
| TC007 | Decision Table Testing | ทดสอบการป้อนรหัสผ่านไม่ถูกต้อง | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ป้อนรหัสผ่าน<br>6. ยืนยันการโอน | จำนวนคะแนน: 1,000<br>รหัสผ่าน: 9999 | - การโอนถูกปฏิเสธ<br>- แสดงข้อความแจ้งเตือน |

5. บัญชีปลายทางต้องถูกต้อง จึงจะสามารถกรอก Passcode ได้

| Test Case ID | เทคนิค | Test Case Description | Prerequisites | Test Steps | Test Data | Expected Output |
|---------------|--------|-------------------|----------------------|-----------------|-------------|-------------------|
| TC008 | State Transition Testing | ทดสอบการป้อนบัญชีปลายทางถูกต้อง | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. ป้อนจำนวนคะแนน<br>5. ป้อนรหัสผ่าน<br>6. ยืนยันการโอน | บัญชีปลายทาง: 123456789<br>จำนวนคะแนน: 1,000<br>รหัสผ่าน: 1234 | - สามารถป้อนรหัสผ่านได้<br>- การโอนสำเร็จ |
| TC009 | State Transition Testing | ทดสอบการป้อนบัญชีปลายทางไม่ถูกต้อง | - มีบัญชีที่ใช้งานได้<br>- มีคะแนนเพียงพอ | 1. เข้าสู่ระบบ<br>2. เลือกฟังก์ชันโอนคะแนน<br>3. ป้อนบัญชีปลายทาง<br>4. พยายามป้อนจำนวนคะแนน | บัญชีปลายทาง: 999999999 | - ไม่สามารถป้อนจำนวนคะแนนได้<br>- แสดงข้อความแจ้งเตือน |
                
3. หากทีมต้องการทดสอบ Feature ในข้อ 2 จะต้องมี Test Plan อย่างไร?

อ้างอิงรูปแบบ Test plan แบบ (SPACED-IRT)
1. Scope
-Test: ฟังก์ชั่นการโอนคะแนน, การคำนวณค่าธรรมเนียม, การตรวจสอบรหัสผ่าน, การตรวจสอบบัญชีปลายทาง
-Not test: ประสิทธิภาพฐานข้อมูล Backend, network infrastructure
2. People
-Training: การบรรยายสรุปของทีมเกี่ยวกับระบบการโอนคะแนนและกรณีทดสอบ
-Responsibility: ทีม QA สำหรับการดำเนินการ ทีม Dev สำหรับการแก้ไข ผู้จัดการโครงการสำหรับการกำกับดูแล
-Schedule: 2 สัปดาห์สำหรับการทดสอบ 1 สัปดาห์สำหรับการแก้ไขและการทดสอบซ้ำ
3. Approach
-ใช้ technique black-box testing : Boundary Value Analysis, Equivalence Partitioning
-ทำการทดสอบ user interface ด้วยตนเองและ automated testing สำหรับการเรียก API
-ทำการทดสอบ Conduct regression testing หลังจากการแก้ไขแต่ละครั้ง
4. Criteria
-Entry: System deployment in test environment, โดยทดสอบตามข้อมูลการทดสอบที่เตรียมไว้
-Exit: ข้อบกพร่องร้ายแรงทั้งหมดได้รับการแก้ไขแล้ว กรณีทดสอบผ่านไป 95% ของทั้งหมด
5. Environment
-Server ทดสอบโดยปรับเลียนแบบสภาพแวดล้อมการใช้งานจริงของผู้ใช้งาน
-อุปกรณ์และเบราว์เซอร์ต่าง ๆ สำหรับการทดสอบความเข้ากันได้
-ทดสอบบัญชีด้วยยอดคะแนนที่กำหนดไว้ล่วงหน้า
6. Deliverables
-เอกสารกรณีทดสอบ
-รายงานการดำเนินการทดสอบรายวัน
-รายงานสรุปการทดสอบขั้นสุดท้าย
บันทึกข้อบกพร่อง
7. Incidentals
-Introduction: ภาพรวมโดยย่อของคุณสมบัติการโอนคะแนน
-Identification: รหัสที่ไม่ซ้ำกันสำหรับแต่ละกรณีทดสอบและข้อบกพร่อง
8. Risks
-ตารางงานที่แน่นอาจทำให้การทดสอบอย่างละเอียดลดลง
-ทดสอบความไม่เสถียรของสภาพแวดล้อม
-Contingencies
-จัดลำดับความสำคัญของกรณีทดสอบที่สำคัญหากมีข้อจำกัดด้านเวลาเกิดขึ้น
-เตรียมสภาพแวดล้อมการทดสอบการสำรองข้อมูลให้พร้อม
9. Tasks
-เตรียมสภาพแวดล้อมและข้อมูลการทดสอบ
-ดำเนินการกรณีทดสอบ
-บันทึกและรายงานข้อบกพร่อง
-ทดสอบปัญหาที่แก้ไขแล้วอีกครั้ง
-Conduct regression testing
-เตรียมรายงานผลการทดสอบขั้นสุดท้าย

4. Software Testing มีความสำคัญอย่างไรในการพัฒนาระบบ

1. คุณภาพของผลิตภัณฑ์ (Product Quality)
-ช่วยระบุและแก้ไขข้อบกพร่องก่อนส่งมอบให้ผู้ใช้
-รับรองว่าซอฟต์แวร์ทำงานตามที่ออกแบบไว้
2. ความน่าเชื่อถือของระบบ (System Reliability)
-เพิ่มความมั่นใจในความเสถียรและความน่าเชื่อถือของระบบ
-ลดโอกาสการเกิดข้อผิดพลาดในสภาพแวดล้อมการผลิตจริง
3. ความปลอดภัย (Security)
-ช่วยระบุช่องโหว่ด้านความปลอดภัยที่อาจถูกมองข้าม
-ปกป้องข้อมูลผู้ใช้และทรัพย์สินทางปัญญาขององค์กร
4. ความพึงพอใจของผู้ใช้ (User Satisfaction)
-รับรองประสบการณ์ผู้ใช้ที่ราบรื่นและน่าพอใจ
-ลดความไม่พอใจและการร้องเรียนจากผู้ใช้
5. ประหยัดค่าใช้จ่าย (Cost Savings)
-ระบุและแก้ไขปัญหาในช่วงต้นของการพัฒนาซึ่งมีค่าใช้จ่ายน้อยกว่า
-ลดค่าใช้จ่ายในการบำรุงรักษาและแก้ไขในระยะยาว
6. การปฏิบัติตามกฎระเบียบ (Regulatory Compliance)
-รับรองว่าซอฟต์แวร์เป็นไปตามมาตรฐานและข้อกำหนดทางกฎหมายที่เกี่ยวข้อง
7. การปรับปรุงกระบวนการ (Process Improvement)
-ช่วยระบุจุดอ่อนในกระบวนการพัฒนา
-นำไปสู่การปรับปรุงวิธีการพัฒนาซอฟต์แวร์อย่างต่อเนื่อง
8. การจัดการความเสี่ยง (Risk Management)
-ลดความเสี่ยงของความล้มเหลวของระบบในสภาพแวดล้อมการผลิตจริง
-ป้องกันความเสียหายต่อชื่อเสียงที่อาจเกิดจากข้อบกพร่องของซอฟต์แวร์
9. การสนับสนุนการตัดสินใจ (Decision Support)
-ให้ข้อมูลเชิงลึกแก่ผู้จัดการโครงการเกี่ยวกับความพร้อมของผลิตภัณฑ์
-ช่วยในการตัดสินใจเกี่ยวกับการปล่อยผลิตภัณฑ์
10. ความได้เปรียบในการแข่งขัน (Competitive Advantage)
-สร้างความแตกต่างด้วยผลิตภัณฑ์ที่มีคุณภาพสูงและน่าเชื่อถือ
-เพิ่มความเชื่อมั่นของลูกค้าในแบรนด์
    
## Section 2: Automate Testing WEB Skills
จงใช้ Robot framework หรือ Selenium เพื่อพัฒนา Automate Test system ตาม test case ดังนี้
   - เปิด Browser และไปที่ Link [https://www.nejavu.com](https://www.nejavu.com/)
   - ถ้ามี Banner pop-up ขึ้นมาให้กดปิด Modal (แต่ถ้าไม่ทำข้อต่อไปได้เลย)
   - Click menu “การ์ตูน”
   - Get ชื่อหนังสือทุกเล่มในแถวที่หนึ่ง
   - กดปุ่ม “ใส่ตระกร้า” หนังสือทุกเล่มแถวที่หนึ่ง
   - กดปุ่ม “รถเข็น / ตระกร้า”
   - Verify ชื่อหนังสือทุกเล่ม ที่อยู่ในตระกร้า โดยใช้ชื่อที่ได้มาจากข้อที่แล้ว
   - ลบหนังสือทุกเล่มที่อยู่ในตระกร้า
   - Verify badge บนรถเข็นว่าเหลือหนังสือเท่ากับ 0

## Section 3: Automate Testing API Skills
จงใช้ Postman, Robot framework หรือ Selenium เพื่อพัฒนาระบบทดสอบ API โดยให้ส่ง Request และตรวจสอบ Response แบบ Automate Testing
    
1. GET - All Users : https://reqres.in/api/users [Status code : 200]
2. GET - User Info : https://reqres.in/api/users/1 [Status code : 200]
3. POST - Create User : https://reqres.in/api/users [Status code : 201]
                
    ```json
    //request body example
    {
        "name": "Yourname",
        "job": "Your Position"
    }
    ```             
4. PATCH - Update User : [https://reqres.in/api/users/](https://reqres.in/api/users/1)id [Status code : 200]
                
    ```json
    //Required id From Create User
    //request body example
    {
        "name": "Your nickname",
        "job": "Your Position"
    }
    ```
                
5. DELETE - Delete User : [https://reqres.in/api/users/](https://reqres.in/api/users/1)id [Status code : 204]
                
    ```json
    //Required id From Create User
    //request body example
    {
        "name": "Your nickname",
        "job": "Your Position"
    }
    ```

Ref:  Design Test-case Technique  : https://www.accelq.com/blog/test-case-design/
      Test plan แบบ (SPACED-IRT)  :https://medium.com/welovebug-dot-com/test-plan-test-spec-test-case-%E0%B8%84%E0%B8%B3%E0%B8%95%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%86%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%8A%E0%B8%A7%E0%B8%99%E0%B8%AA%E0%B8%B1%E0%B8%9A%E0%B8%AA%E0%B8%99-d6a2d30a728e