package entity;

import java.io.Serializable;
import java.sql.Timestamp;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Tfv implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Basic
    private int tfvs;

    @Basic
    private Timestamp fecha;

    @Column(length = 3)
    @Basic
    private String legajo;

    @Basic
    private int ealc;

    @Basic
    private int tfvf;

    public Tfv() {

    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTfvs() {
        return this.tfvs;
    }

    public void setTfvs(int tfvs) {
        this.tfvs = tfvs;
    }

    public Timestamp getFecha() {
        return this.fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public String getLegajo() {
        return this.legajo;
    }

    public void setLegajo(String legajo) {
        this.legajo = legajo;
    }

    public int getEalc() {
        return this.ealc;
    }

    public void setEalc(int ealc) {
        this.ealc = ealc;
    }

    public int getTfvf() {
        return this.tfvf;
    }

    public void setTfvf(int tfvf) {
        this.tfvf = tfvf;
    }
}
