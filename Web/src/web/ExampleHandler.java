package web;

import com.sun.net.httpserver.Headers;
import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;

import javax.management.ServiceNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URI;
import java.nio.BufferUnderflowException;
import java.nio.file.Files;
import java.nio.file.Paths;

/**
 * HTTP 교환을 처리하기 위해 호출되는 Handler
 * @Author Ethan Jung
 */
public class ExampleHandler implements HttpHandler {

    /**
     * Http 하나의 요청에서 교환될 응답을 캡슐화
     * Client 의 요청을 검사, 응답 후 반환
     * @param exchange 교환에 사용되는 Parameter
     */
    @Override
    public void handle(HttpExchange exchange) {

        // 매핑 주소 검사를 위한 변수
        boolean isSuccess = false;

        // try-with-resource 방식으로 자동 자원 해제(AutoCloseable Interface, JDK 1.7 ↑)
        try(OutputStream out = exchange.getResponseBody()) {

            // HTML 파일을 읽어 오기 위한 변수 선언
            byte[] bytesData = null;

            // URL 매핑 주소 확인
            String url = exchange.getRequestURI().getPath();

            if("/".equals(url)) {
                isSuccess = true;
            }

            // NIO 방식으로 HTML 파일에서 모든 Byte 읽기(Files 는 모든 Byte 가 기록되면 자동으로 Close)
            // 매핑 경로가 / 가 아닐 경우 404 페이지로 이동
            if(isSuccess) {
                bytesData = Files.readAllBytes(Paths.get("./resource/html/welcome.html"));
            }else {
                bytesData = Files.readAllBytes(Paths.get("./resource/html/404.html"));
            }

            // 읽어온 파일에 문제가 없을 경우(즉, 길이가 0 이 아닐 경우)
            if(bytesData.length != 0) {

                // Http Response Header 설정(컨텐츠 타입, 길이)
                Headers headers = exchange.getResponseHeaders();
                headers.add("Content-Type", "text/html;charset=UTF-8");
                headers.add("Content-Length", String.valueOf(bytesData.length));

                // 응답코드 및 데이터 길이 보내기(bytesData 의 길이가-1일 경우 불가)
                exchange.sendResponseHeaders(200, bytesData.length);

                // 입력된 데이터 출력 및 자동 연결 해제
                out.write(bytesData);

            // 파일은 읽어 왔지만, 정상적인 파일이 아닌 경우(길이 0)
            }else {
                throw new RuntimeException("읽어온 파일에서 문제가 발생하였습니다.");
            }

        }catch(NullPointerException e) {
            System.out.println("Exchange 값이 존재하지 않습니다. " + e);
        }catch(IOException e) {
            System.out.println("IOE Exception 발생 하였습니다. " + e);
        }catch(BufferUnderflowException e) {
            System.out.println("Buffer 에 남아 있는 길이가 Byte 보다 작습니다. " + e);
        }catch(IndexOutOfBoundsException e) {
            System.out.println("offSet 길이와 매개변수에 사용되는 값이 잘못 되었습니다. " + e);
        }catch(Exception e) {
            System.out.println("알 수 없는 에러가 발생하였습니다. " + e);
        }
    }
}
