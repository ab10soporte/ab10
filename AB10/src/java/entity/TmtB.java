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

public class TmtB implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Basic
    private int ensayob;

    @Basic
    private Timestamp fecha;

    @Column(unique = true, length = 3)
    @Basic
    private String legajo;

    @Basic
    private int ealc;

    @Basic
    private int ocup;

    @Basic
    private int pruebab;

    public TmtB() {

    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEnsayob() {
        return this.ensayob;
    }

    public void setEnsayob(int ensayob) {
        this.ensayob = ensayob;
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

    public int getOcup() {
        return this.ocup;
    }

    public void setOcup(int ocup) {
        this.ocup = ocup;
    }

    public int getPruebab() {
        return this.pruebab;
    }

    public void setPruebab(int pruebab) {
        this.pruebab = pruebab;
    }
}
