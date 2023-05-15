新建一個類似舊有Spring Boot專案的步驟: 
1. 建立新SpringBoot專案: 姑且稱為springappprojrest
2. 複製舊有Spring Boot專案的Java原始程式到新專案
   舊專案 src/main/java/下之主套件下的所有檔案到新專案 src/main/java/下之主套件下
   為避免修改新專案內所有原始程式的package敘述，新專案的主套件應與舊套件相同
3. 複製舊有Spring Boot專案的Resource檔到新專案, 包括
    .properties, .css, js, ...
4. 補上 pom.xml 缺少的標籤
		<dependency>
			<groupId>org.apache.tomcat.embed</groupId>
			<artifactId>tomcat-embed-jasper</artifactId>
		</dependency>

		<dependency>
			<groupId>javax.servlet</groupId>
			<artifactId>jstl</artifactId>
		</dependency>       