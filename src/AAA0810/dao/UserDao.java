package AAA0810.dao;

import AAA0810.Entity.User;

import java.util.List;

public interface UserDao {
    int add(User user);
    int dedl(int userid);
    int update(User user);
    User sel(int userid);
    List<User> sel_all();
}
