package AAA0810.dao;

import AAA0810.Entity.User;
import AAA0810.Util.BaseDao;
import AAA0810.Util.BeanUtil;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class UserDaoImpl implements UserDao {
    @Override
    public int add(User user) {
        String sql="insert into users(username,userpwd) values(?,?)";
        return BaseDao.executeUpd(sql,user.getUsername(),user.getUserpwd());
    }

    @Override
    public int dedl(int userid) {
        String sql="delete from users where userid=?";
        return BaseDao.executeUpd(sql,userid);
    }

    @Override
    public int update(User user) {
        String sql="update users set username=?,userpwd=? where userid=?";
        return BaseDao.executeUpd(sql,user.getUsername(),user.getUserpwd(),user.getUserid());
    }

    @Override
    public User sel(int userid) {
        String sql="select * from users where userid=?";
        List<Map<String, Object>> list = BaseDao.select(sql, userid);
        return list.isEmpty()?null: BeanUtil.getUserFromMap(list.get(0));
    }

    @Override
    public List<User> sel_all() {
        String sql="select * from users";
        List<Map<String, Object>> list = BaseDao.select(sql);
        List<User> back= new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            back.add(BeanUtil.getUserFromMap(list.get(i)));
        }
        return back;
    }
}
