/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.entities;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SaeiD
 */
@Entity
@Table(name = "contactable_contributor")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ContactableContributor.findAll", query = "SELECT c FROM ContactableContributor c"),
    @NamedQuery(name = "ContactableContributor.findByContributorId", query = "SELECT c FROM ContactableContributor c WHERE c.contributorId = :contributorId"),
    @NamedQuery(name = "ContactableContributor.findByContributorName", query = "SELECT c FROM ContactableContributor c WHERE c.contributorName = :contributorName"),
    @NamedQuery(name = "ContactableContributor.findByMailAddress", query = "SELECT c FROM ContactableContributor c WHERE c.mailAddress = :mailAddress"),
    @NamedQuery(name = "ContactableContributor.findByEmailAddress", query = "SELECT c FROM ContactableContributor c WHERE c.emailAddress = :emailAddress"),
    @NamedQuery(name = "ContactableContributor.findByContactNo", query = "SELECT c FROM ContactableContributor c WHERE c.contactNo = :contactNo")})
public class ContactableContributor implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
   
    @Column(name = "contributor_id")
    private Integer contributorId;
    @Size(max = 50)
    @Column(name = "contributor_name")
    private String contributorName;
    @Size(max = 200)
    @Column(name = "mail_address")
    private String mailAddress;
    @Size(max = 60)
    @Column(name = "email_address")
    private String emailAddress;
    @Column(name = "contact_no")
    private Integer contactNo;
    @JoinColumn(name = "contribution_id", referencedColumnName = "contribution_id")
    @ManyToOne
    private Contribution contributionId;

    public ContactableContributor() {
    }

    public ContactableContributor(Integer contributorId) {
        this.contributorId = contributorId;
    }

    public Integer getContributorId() {
        return contributorId;
    }

    public void setContributorId(Integer contributorId) {
        this.contributorId = contributorId;
    }

    public String getContributorName() {
        return contributorName;
    }

    public void setContributorName(String contributorName) {
        this.contributorName = contributorName;
    }

    public String getMailAddress() {
        return mailAddress;
    }

    public void setMailAddress(String mailAddress) {
        this.mailAddress = mailAddress;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public Integer getContactNo() {
        return contactNo;
    }

    public void setContactNo(Integer contactNo) {
        this.contactNo = contactNo;
    }

    public Contribution getContributionId() {
        return contributionId;
    }

    public void setContributionId(Contribution contributionId) {
        this.contributionId = contributionId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (contributorId != null ? contributorId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ContactableContributor)) {
            return false;
        }
        ContactableContributor other = (ContactableContributor) object;
        if ((this.contributorId == null && other.contributorId != null) || (this.contributorId != null && !this.contributorId.equals(other.contributorId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "info.diit.entities.ContactableContributor[ contributorId=" + contributorId + " ]";
    }
    
}
