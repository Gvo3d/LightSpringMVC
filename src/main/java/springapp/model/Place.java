package springapp.model;

import javax.persistence.*;

/**
 * Created by Gvozd on 26.03.2016.
 */
@Entity
@Table(name = "place")
public class Place {

    @Id
    @Column(name = "id")
    @GeneratedValue
    private Integer id;

    @Column(name = "placename")
    private String placename;

    @Column(name = "description")
    private String description;

    @Column(name = "address")
    private String address;

    @Column(name = "telephone")
    private String telephone;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPlacename() {
        return placename;
    }

    public void setPlacename(String placename) {
        this.placename = placename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }
}
