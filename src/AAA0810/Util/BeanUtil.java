package AAA0810.Util;

import AAA0810.Entity.User;

import java.util.Map;

public class BeanUtil {
    public static User getUserFromMap(Map<String,Object> user){
        User u=new User();
        u.setUserid((Integer) user.get("userid"));
        u.setUsername((String)user.get("username"));
        u.setUserpwd((String)user.get("userpwd"));
        return u;
    }
}
