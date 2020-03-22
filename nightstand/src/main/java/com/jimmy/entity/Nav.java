package com.jimmy.entity;

import lombok.Data;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Data
public class Nav {

    
    private Integer id;
    
    private String url;
    
    private String path;
    
    private String component;
    
    private String name;
    
    private String iconCls;
    
    private Meta meta;
    
    private Integer parentId;
    
    private Boolean enabled;

    private List<Nav> children;
    
    private Set<Role> navRoles = new HashSet<>();
}
