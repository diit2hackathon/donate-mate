/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package info.diit.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SaeiD
 */
@Entity
@Table(name = "distribution")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Distribution.findAll", query = "SELECT d FROM Distribution d"),
    @NamedQuery(name = "Distribution.findByDistributionId", query = "SELECT d FROM Distribution d WHERE d.distributionId = :distributionId"),
    @NamedQuery(name = "Distribution.findByDistributionDate", query = "SELECT d FROM Distribution d WHERE d.distributionDate = :distributionDate"),
    @NamedQuery(name = "Distribution.findByDistributedOrg", query = "SELECT d FROM Distribution d WHERE d.distributedOrg = :distributedOrg"),
    @NamedQuery(name = "Distribution.findByDistributionCountry", query = "SELECT d FROM Distribution d WHERE d.distributionCountry = :distributionCountry"),
    @NamedQuery(name = "Distribution.findByDistributedAmount", query = "SELECT d FROM Distribution d WHERE d.distributedAmount = :distributedAmount")})
public class Distribution implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    
    @Column(name = "distribution_id")
    private Integer distributionId;
    @Column(name = "distribution_date")
    @Temporal(TemporalType.DATE)
    private Date distributionDate;
    @Size(max = 50)
    @Column(name = "distributed_org")
    private String distributedOrg;
    @Size(max = 30)
    @Column(name = "distribution_country")
    private String distributionCountry;
    @Column(name = "distributed_amount")
    private Integer distributedAmount;

    public Distribution() {
    }

    public Distribution(Integer distributionId) {
        this.distributionId = distributionId;
    }

    public Integer getDistributionId() {
        return distributionId;
    }

    public void setDistributionId(Integer distributionId) {
        this.distributionId = distributionId;
    }

    public Date getDistributionDate() {
        return distributionDate;
    }

    public void setDistributionDate(Date distributionDate) {
        this.distributionDate = distributionDate;
    }

    public String getDistributedOrg() {
        return distributedOrg;
    }

    public void setDistributedOrg(String distributedOrg) {
        this.distributedOrg = distributedOrg;
    }

    public String getDistributionCountry() {
        return distributionCountry;
    }

    public void setDistributionCountry(String distributionCountry) {
        this.distributionCountry = distributionCountry;
    }

    public Integer getDistributedAmount() {
        return distributedAmount;
    }

    public void setDistributedAmount(Integer distributedAmount) {
        this.distributedAmount = distributedAmount;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (distributionId != null ? distributionId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Distribution)) {
            return false;
        }
        Distribution other = (Distribution) object;
        if ((this.distributionId == null && other.distributionId != null) || (this.distributionId != null && !this.distributionId.equals(other.distributionId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "info.diit.entities.Distribution[ distributionId=" + distributionId + " ]";
    }
    
}
