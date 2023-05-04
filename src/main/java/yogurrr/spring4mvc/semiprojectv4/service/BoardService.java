package yogurrr.spring4mvc.semiprojectv4.service;

import yogurrr.spring4mvc.semiprojectv4.model.Board;

import java.util.List;

public interface BoardService {
    List<Board> readBoard(int cpage);

    int countBoard();
}