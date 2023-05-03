package yogurrr.spring4mvc.semiprojectv4.dao;

import yogurrr.spring4mvc.semiprojectv4.model.Member;

public interface MemberDAO {
    int selectLogin(Member m);
}
