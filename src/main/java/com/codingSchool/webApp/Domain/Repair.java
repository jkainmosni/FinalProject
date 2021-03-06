package com.codingSchool.webApp.Domain;

import java.io.Serializable;
import java.time.LocalDateTime;
import javax.persistence.*;

@Entity
@Table (name="service")
public class Repair implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long serviceid;

    @Column(nullable = false, name = "cost")
    private double cost;

    @Column(nullable = false, name = "datetime")
    private LocalDateTime datetime;

    @Column(nullable = false, name = "status")
    private String status;

    @Column(nullable = false, name = "type")
    private String type;

    @Column(nullable = false, name = "freetext")
    private String freetext;

    @ManyToOne(optional = false)
    @JoinColumn(name="userid", referencedColumnName = "userid")
    private User user;

    public Repair() {
    }

    public Repair(Long serviceid, double cost, LocalDateTime datetime, String status, String type, String freetext, User user) {
        this.serviceid = serviceid;
        this.cost = cost;
        this.datetime = datetime;
        this.status = status;
        this.type = type;
        this.freetext = freetext;
        this.user = user;
    }

    public Long getServiceid() {
        return serviceid;
    }

    public void setServiceid(Long serviceid) {
        this.serviceid = serviceid;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public LocalDateTime getDatetime() {
        return datetime;
    }

    public void setDatetime(LocalDateTime datetime) {
        this.datetime = datetime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String isType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public String getFreetext() {
        return freetext;
    }

    public void setFreetext(String freetext) {
        this.freetext = freetext;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
