package web;

import com.sun.net.httpserver.HttpServer;

import java.io.IOException;
import java.net.BindException;
import java.net.InetSocketAddress;

/**
 * 단순 HTTP Server 구현
 * IP, Port 번호에 바인딩 되며 Client 로 부터 수신되는 TCP 연결 수신
 * Handler 를 찾을 수 없는 경우 404 반환
 * @Author Ethan Jung
 */
public class HttpServerModule {
    // 기본 URL
    private static final String DEFAULT_HOST_ADDRESS = "localhost";
    // 기본 PORT
    private static final int DEFAULT_PORT = 8080;
    // 기본 TCP 연결 최대 수(도달 시 나머지는 연결되지 않고 대기 상태)
    private static final int DEFAULT_BACKLOG = 0;
    private HttpServer server;

    // 기본 생성자를 자동으로 HTTP 에 연결하도록 설정
    public HttpServerModule(){
        connServer(DEFAULT_HOST_ADDRESS, DEFAULT_PORT);
    }

    // 서버 연결 Method
    private void connServer(String host, int port) {
        try{
            // IP 소켓(IP 주소 + 포트번호)로 변경 불가능한 연결 생성
            this.server = HttpServer.create(new InetSocketAddress(host, port), DEFAULT_BACKLOG);

            // HTTP Context 를 생성(URI 경로를 이용해 Handler 를 통해 생성)
            server.createContext("/", new ExampleHandler());

            // 오류 미 발생 시 정상적으로 연결
            System.out.println("서버가 연결되었습니다.");

        }catch(BindException e){
            System.out.println("요청된 주소로 Bind 할수 없거나, 이미 Bind 된 서버 입니다. " + e);
        }catch(IOException e) {
            System.out.println("IOE Exception 발생 하였습니다. " + e);
        }catch(IllegalArgumentException e) {
            System.out.println("경로가 존재하지 않거나, Context 가 이미 존재합니다. " + e);
        }catch(NullPointerException e) {
            System.out.println("경로 또는 Handler 가 존재하지 않습니다. " + e);
        }catch(SecurityException e) {
            System.out.println("보안설정 되어 있거나, Host 의 이름 확인 작업에 필요한 권한이 거절되었습니다. " + e);
        } catch(Exception e) {
            System.out.println("알 수 없는 에러가 발생하였습니다. " + e);
        }
    }

    // 시작 Method
    private void start() {
        server.start();
        System.out.println("서버가 시작되었습니다. ");
    }

    // Getter
    public void startServer(){
        start();
    }

    // 종료 Method
    private void stop(int delay) {
        try{
            server.stop(delay);
            System.out.println("서버가 종료되었습니다.");
            System.exit(0);
        }catch(IllegalArgumentException e) {
            System.out.println("delay 값이 0보다 작은 음수로 입력되었습니다. " + e);
        }
    }

    // Getter
    public void stopServer(int delay) {
        stop(delay);
    }
}
