## curl은 다양한 프로토콜에서 데이터를 주고 받을 수 있는 라이브러리 커맨드라인 기반의 웹 요청 도구
## unix, linux, windows 등의 주요 os에서 사용가능
## 지원하는 프로토콜은 http/https/ftp/ldap/scp/telnet/smtp/pop3
## 다운로드 업로드 모두 가능하다


curl -d "key1=value1&key2=value2" \      
-H "Content-Type: application/x-www-form-urlencoded" \
-X POST http://localhost:80/posts
