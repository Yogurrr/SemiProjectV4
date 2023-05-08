package yogurrr.spring4mvc.semiprojectv4.service;

import yogurrr.spring4mvc.semiprojectv4.model.Board;

import java.util.List;
import java.util.Map;

public interface BoardService {
    List<Board> readBoard(int cpage);
    List<Board> readBoard(int cpage, String ftype, String fkey);
    int countBoard();
    int countBoard(String ftype, String fkey);
}