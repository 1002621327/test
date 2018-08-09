package cn.sun.dao;

import java.util.*;

import cn.sun.entity.Bizi;

public interface BiziDAO {

    public boolean doCreate(Bizi bizi)  ;

    public List<Bizi> findAll()  ;

    public Bizi findById(int id)  ;

}


