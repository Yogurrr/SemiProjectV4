import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import yogurrr.spring4mvc.semiprojectv4.model.Member;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring/root-context.xml"})
public class MemberDAOTest {

    @Autowired
    SqlSession sqlSession;

    @Test
    public void selectLogin() {
        Member m = new Member();
        m.setUserid("aaa111");
        m.setPasswd("aaa111");
        assertEquals(1,(int)sqlSession.selectOne("member.selectLogin", m));

        m.setUserid("aaa111a");
        m.setPasswd("aaa111a");
        assertEquals(0,(int)sqlSession.selectOne("member.selectLogin", m));
    }

}
