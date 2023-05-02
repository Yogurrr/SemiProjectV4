import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class JoinDAOTest {

    @Autowired
    SqlSession sqlSession;

    @Test
    public void findZipcode() {
        String dong = "%구로%";
        assertNotNull(sqlSession.selectList("join.findZipcode", dong));
        System.out.println(sqlSession.selectList("join.findZipcode", dong));
    }

    @Test
    public void checkUserid() {
        String uid = "aaa111a";   // 존재하지 않는 아이디 검사
        assertEquals(0,(int)sqlSession.selectOne("join.selectOneUid", uid));

        uid = "aaa111";   // 존재하는 아이디 검사
        assertEquals(1,(int)sqlSession.selectOne("join.selectOneUid", uid));
    }
}
