package com.kantiana.skb.model;

import com.sun.org.apache.bcel.internal.generic.NEW;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="users")
public class User {
    private Long id;
    private String name;
    private String password;
    private String passwordConfirm;
    private Set<News> news;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Transient
    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    @OneToMany(targetEntity = News.class,  mappedBy = "author", cascade = CascadeType.ALL)
    Set<News> getNews() {
        return news;
    }

    public void setNews(Set<News> news) {
        this.news = news;
    }
}
