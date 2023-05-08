import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)

@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class BoardDAOTest {

    @Autowired
    SqlSession sqlSession;

    @Test
    public void selectBoard() {
        assertNotNull(sqlSession.selectList("board.selectBoard"));
    }

    @Test
    public void selectFindBoard() {
        Map<String, Object> params = new HashMap<>();
        params.put("stbno", 0);
        params.put("ftype", "title");
        params.put("fkey", "3");

        assertNotNull(sqlSession.selectList("board.selectFindBoard", params));
    }
}