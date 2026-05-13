# 🍦 Baskin Robbins Project (Spring Legacy)

기존 JSP/Servlet 기반으로 제작된 배스킨라빈스 웹 애플리케이션 프로젝트를 Spring Legacy 프레임워크 기반으로 변환(Migration) 및 고도화한 프로젝트입니다.

## 📌 프로젝트 개요
* **기존 프로젝트:** JSP/Servlet 기반 MVC 패턴 구현
* **전환 프로젝트:** Spring Legacy Framework 기반 아키텍처 전환
* **목적:** 
  * Spring Core(IoC/DI), Spring MVC, Spring AOP 기능 적용
  * MyBatis 연동을 통한 데이터 접근 계층(Repository) 리팩토링
  * 유지보수성 및 확장성 향상

## 🛠 Tech Stack
* **Language:** Java 11
* **Framework:** Spring Legacy Framework (Spring MVC)
* **Build Tool:** Maven (pom.xml)
* **Data Access:** MyBatis, Connection Pool
* **Database:** Oracle 
* **Server:** Apache Tomcat 9.0
* **View:** JSP, JSTL, HTML5, CSS3, JavaScript

## 🚀주요 변환 및 개선 사항
1. **Controller 계층 변환**
   * 기존 `HttpServlet` 상속 구조에서 Spring `@Controller` 및 `@RequestMapping` 구조로 전환하여 코드 간소화 및 가독성 확보.
2. **의존성 주입 (DI) 적용**
   * Service 및 DAO 객체 생성을 `@Autowired`를 통한 컨테이너 관리 방식으로 변경하여 객체 간 결합도 낮춤.
3. **데이터 접근 계층 고도화**
   * 기존 JDBC/PreparedStatement 기반 코드를 MyBatis Mapper 인터페이스와 XML 설정으로 분리하여 SQL 관리 효율성 증대.
4. **한글 필터 처리**
   * `web.xml`에 Spring 제공 `CharacterEncodingFilter`를 등록하여 인코딩 중복 코드 제거.

## 💻 설치 및 실행 방법

### Prerequisites
* JDK 11
* Apache Tomcat 9.0
* IDE Eclipse

### Installation & Run
1. 저장소를 클론합니다.
   ```bash
   git clone github.com
   ```
2. IDE(STS/Eclipse)에서 `Import` -> `Existing Maven Projects`로 프로젝트를 불러옵니다.
3. 데이터베이스 스크립트(`[파일명].sql`)를 DBMS에서 실행하여 테이블을 생성합니다.
4. `src/main/resources` 내 데이터베이스 설정 파일([예: root-context.xml 또는 db.properties])에서 접속 계정 정보를 수정합니다.
5. Tomcat 서버를 연결한 후 프로젝트를 **Run on Server**로 실행합니다.
