package yogurrr.spring4mvc.semiprojectv4.controller;

import oracle.jdbc.proxy.annotation.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import yogurrr.spring4mvc.semiprojectv4.model.Board;
import yogurrr.spring4mvc.semiprojectv4.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService bdsrv;

    @GetMapping("/list")
    public ModelAndView list(int cpg) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("board/list.tiles");
        mv.addObject("bdlist", bdsrv.readBoard(cpg));
        mv.addObject("cpg", cpg);
        mv.addObject("stpg", ((cpg - 1) / 10) * 10 + 1);
        mv.addObject("cntpg", bdsrv.countBoard());

        return mv;
    }

    // 검색 처리
    @GetMapping("/find")
    public ModelAndView find(int cpg, String ftype, String fkey) {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("board/list.tiles");
        mv.addObject("bdlist", bdsrv.readBoard(cpg, ftype, fkey));
        mv.addObject("cpg", cpg);
        mv.addObject("stpg", ((cpg - 1) / 10) * 10 + 1);
        mv.addObject("cntpg", bdsrv.countBoard(ftype, fkey));

        return mv;
    }

    @GetMapping("/write")
    public String write() {
        return "board/write.tiles";
    }

    @PostMapping("/write")
    public String writeok(Board bd) {
        String viewPage = "error.tiles";
        if (bdsrv.newBoard(bd)) viewPage = "redirect:/board/list?cpg=1";

        return viewPage;
    }

    @GetMapping("/view")
    public String view() {
        return "board/view.tiles";
    }

    // -------------------------------

    @GetMapping("/contents")
    public String contents() {
        return "board/contents.tiles";
    }
}
