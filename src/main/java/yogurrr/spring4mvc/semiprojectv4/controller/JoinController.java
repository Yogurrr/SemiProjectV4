package yogurrr.spring4mvc.semiprojectv4.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import yogurrr.spring4mvc.semiprojectv4.model.Member;
import yogurrr.spring4mvc.semiprojectv4.service.JoinService;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/join")
public class JoinController {

    @Autowired
    private JoinService jnsrv;

    @GetMapping("/agree")
    public String agree() {
        return "join/agree.tiles";
    }

    @GetMapping("/checkme")
    public String checkme() {
        return "join/checkme.tiles";
    }

    @PostMapping("/joinme")
    public ModelAndView joinme(Member mb) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("join/joinme.tiles");
        mv.addObject("mb", mb);

        return mv;
    }

    @GetMapping("/joinok")
    public String joinok() {
        return "join/joinok.tiles";
    }

    // 우편번호 검색
    // /join/zipcode?dong=동이름
    // 검색결과는 뷰페이지 없이 바로 응답으로 출력 : RESTful 방식
    // 서블릿에서 제공하는 HttpServletResponse 객체를 이용하면
    // 스프링의 뷰리졸버 없이 바로 응답으로 출력할 수 있음
    // 단, 응답유형은 JSON 형식으로 함
    @ResponseBody
    @GetMapping("/zipcode")
    public void zipcode(String dong, HttpServletResponse res) {
        try {
            // 응답유형은 JSON으로 설정
            res.setContentType("application/json; charset=UTF-8");
            // 검색된 우편번호 결과를 응답
            res.getWriter().print(jnsrv.findZipcode(dong));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
