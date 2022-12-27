# HD_project2nd

security-context.xml 등록 완료 (수정 필요)   
multipart-config 설정 완료   

```
저장 데이터 : 사용자가 등록하는 중고 상품 이미지   
저장 위치 : C:/dev64/workspace-sts/HD_project2nd/usedImgs   
최대 업로드 파일 사이즈 등 설정 (책 내용 참고)   
```

한글 encoding filter 적용 완료   
spring security-filter 적용 완료   

<br>   
<br>   
      

# project 초기 설정
1. git clone project repo   
2. Eclipse STS3 Spring Legacy project 생성하기   
```
Project name : HD_project2nd   
top-level package : org.kabart.controller   
```
3. bash에 아래의 명령어 입력하기
```
git checkout -- pom.xml;
git checkout -- src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml;
git checkout -- src/main/webapp/WEB-INF/spring/root-context.xml;
git checkout -- src/main/webapp/WEB-INF/web.xml;
git checkout -- src/main/resources/log4j.xml;
git checkout -- src/test/resources/log4j.xml;
rm -rf  src/main/java/org/kabart/controller/HomeController.java;
rm -rf src/main/webapp/WEB-INF/views/home.jsp
```
4. Project properties 수정하기   
```
Java Build Path의 Classpath에 ojdbc11.jar 파일 추가   
Deployment Assembly에 java build에 사용한 ojdbc11.jar 파일 add   
Project Facets의 Runtime에서 Runtime을 VMware가 아닌 Apache tomcat으로 설정   
```