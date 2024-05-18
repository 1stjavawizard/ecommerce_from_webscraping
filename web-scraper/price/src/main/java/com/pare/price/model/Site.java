package com.pare.price.model;

import jakarta.persistence.*;

@Entity
@Table(name="sites")
public class Site {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="site_id")
    private long siteId;
    @Column(name="site_name")
    private String siteName;
    @Column(name="site_url")
    private String siteUrl;

    public Site(String siteName, String siteUrl) {
        this.siteName = siteName;
        this.siteUrl = siteUrl;
    }

    public Site() {

    }

    public long getSiteId() {
        return siteId;
    }

    public void setSiteId(long siteId) {
        this.siteId = siteId;
    }

    public String getSiteName() {
        return siteName;
    }

    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }

    public String getSiteUrl() {
        return siteUrl;
    }

    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }

    @Override
    public String toString() {
        return "Site{" +
                "siteId=" + siteId +
                ", siteName='" + siteName + '\'' +
                ", siteUrl='" + siteUrl + '\'' +
                '}';
    }
}
