### 1. Prerequisitos:
- Maquina local con el sistema operativo Windows 10
- Eclipse IDE for Java Developers veesion 17
- Cucumber Eclipse Plugin version 1.0.0
- Junit4 version 4.14.2
- Karate Core » 1.4.1.RC2

```
 <dependencies>
		
		<dependency>
			<groupId>com.intuit.karate</groupId>
			<artifactId>karate-core</artifactId>
			<version>1.4.1.RC2</version>
		</dependency>
		
		<dependency>
			<groupId>com.intuit.karate</groupId>
			<artifactId>karate-apache</artifactId>
			<version>0.9.6</version>
			<scope>test</scope>
		</dependency>
		
		<dependency>
			<groupId>com.intuit.karate</groupId>
			<artifactId>karate-junit4</artifactId>
			<version>1.4.0.RC3</version>
			<scope>test</scope>
		</dependency>
	</dependencies>
```

### 2. Comandos de instalación
```
msiexec.exe /i installer.msi 
```
```
msiexec.exe installer.msi /qn 
```
```
jdk.exe /s 
```


### 3. Instrucciones para ejecutar los test
Para abrir el reporte del test seguir los siguientes pasos:
- Ejecutar Run as Junit Test
- Ir a la carpeta target\karate-reports\test.FirstTest.html

### Referencia: 
https://mvnrepository.com/artifact/com.intuit.karate/karate-core/1.4.1.RC2