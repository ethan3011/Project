package main;

import web.HttpServerModule;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class HttpMain {
    public static void main(String[] args) {

        // console 에 입력을 받기 위한 BufferedReader, InputStreamReader(System.in) 생성
        try(BufferedReader br = new BufferedReader(new InputStreamReader(System.in))){

            // 웹 서버 연결을 위한 HttpServerModule 초기화
            HttpServerModule httpServerModule = new HttpServerModule();

            // WebServer 시작
            httpServerModule.startServer();

            // 종료 방법 메세지 출력
            System.out.println("종료 하시려면 여기를 클릭 후 \"Exit\"를 입력 해 주세요");

            // 종료 값을 입력할 때 까지 반복
            while(true) {
                // 현재 입력된 라인을 읽기
                String text = br.readLine();

                // 대소문자 상관 없이 다른 명령어를 입력 시 반복...
                if(!"Exit".equalsIgnoreCase(text)) {
                    System.out.println("정확한 명령어를 입력 해 주세요(exit) !");
                }else {
                    // 대소문자 상관없이 exit 단어가 입력될 경우 종료
                    httpServerModule.stopServer(0);
                }
            }

        }catch(IOException e) {
            System.out.println("IOE Exception 발생하였습니다. " + e);
        }catch(Exception e) {
            System.out.println("알 수 없는 에러가 발생하였습니다. " + e);
        }
    }
}
