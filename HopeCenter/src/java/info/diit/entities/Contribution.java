/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.*;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SaeiD
 */
@Entity
@Table(name = "contribution")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Contribution.findAll", query = "SELECT c FROM Contribution c"),
    @NamedQuery(name = "Contribution.findByContributionId", query = "SELECT c FROM Contribution c WHERE c.contributionId = :contributionId"),
    @NamedQuery(name = "Contribution.findByContributionDate", query = "SELECT c FROM Contribution c WHERE c.contributionDate = :contributionDate"),
    @NamedQuery(name = "Contribution.findByCountryName", query = "SELECT c FROM Contribution c WHERE c.countryName = :countryName"),
    @NamedQuery(name = "Contribution.findByContributionAmount", query = "SELECT c FROM Contribution c WHERE c.contributionAmount = :contributionAmount"),
    @NamedQuery(name = "Contribution.findByPaymentMethod", query = "SELECT c FROM Contribution c WHERE c.paymentMethod = :paymentMethod")})
public class Contribution implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column(name = "contribution_id")
    private Integer contributionId;
    @Column(name = "contribution_date")
    @Temporal(TemporalType.DATE)
    private Date contributionDate;
    @Size(max = 30)
    @Column(name = "country_name")
    private String countryName;
    @Column(name = "contribution_amount")
    private Integer contributionAmount;
    @Size(max = 20)
    @Column(name = "payment_method")
    private String paymentMethod;
    @OneToMany(mappedBy = "contributionId")
    private List<ContactableContributor> contactableContributorList;

    public Contribution() {
    }

    public Contribution(Integer contributionId) {
        this.contributionId = contributionId;
    }

    public Integer getContributionId() {
        return contributionId;
    }

    public void setContributionId(Integer contributionId) {
        this.contributionId = contributionId;
    }

    public Date getContributionDate() {
        return contributionDate;
    }

    public void setContributionDate(Date contributionDate) {
        this.contributionDate = contributionDate;
    }

    public String getCountryName() {
        return countryName;
    }

    public void setCountryName(String countryName) {
        this.countryName = countryName;
    }

    public Integer getContributionAmount() {
        return contributionAmount;
    }

    public void setContributionAmount(Integer contributionAmount) {
        this.contributionAmount = contributionAmount;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    @XmlTransient
    public List<ContactableContributor> getContactableContributorList() {
        return contactableContributorList;
    }

    public void setContactableContributorList(List<ContactableContributor> contactableContributorList) {
        this.contactableContributorList = contactableContributorList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (contributionId != null ? contributionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contribution)) {
            return false;
        }
        Contribution other = (Contribution) object;
        if ((this.contributionId == null && other.contributionId != null) || (this.contributionId != null && !this.contributionId.equals(other.contributionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "info.diit.entities.Contribution[ contributionId=" + contributionId + " ]";
    }
    
}
