package kz.iitu.javaee.models;

import java.util.HashMap;
import java.util.Map;

public class List {
    private Map<String, User> userMap = new HashMap<String, User>();
    
    {
        userMap.put("admin", new User("admin", "admin"));
        userMap.put("duman", new User("duman", "duman"));
    }
    
    public List() {}
    
    public User getUser(String username) {
        return userMap.get(username);
    }
    
}
