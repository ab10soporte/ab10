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

public class Tavec implements Serializable {

    @Basic
    private int d02RIA5;

    @Basic
    private Timestamp fecha;

    @Basic
    private int d21IRL;

    @Basic
    private int d20P;

    @Basic
    private int d03RIAT;

    @Basic
    private int d24FP;

    @Basic
    private int d25Discrim;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Basic
    private int d23RecAc;

    @Column(length = 3)
    @Basic
    private String legajo;

    @Basic
    private int d22IRCI;

    @Basic
    private int d09RCICP;

    @Basic
    private int d08RLCP;

    @Basic
    private int d10RLLP;

    @Basic
    private int d01RIA1;

    @Basic
    private int d11RCILP;

    @Basic
    private int d04RIB;

    public Tavec() {

    }

    public int getD02RIA5() {
        return this.d02RIA5;
    }

    public void setD02RIA5(int d02RIA5) {
        this.d02RIA5 = d02RIA5;
    }

    public Timestamp getFecha() {
        return this.fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public int getD21IRL() {
        return this.d21IRL;
    }

    public void setD21IRL(int d21IRL) {
        this.d21IRL = d21IRL;
    }

    public int getD20P() {
        return this.d20P;
    }

    public void setD20P(int d20P) {
        this.d20P = d20P;
    }

    public int getD03RIAT() {
        return this.d03RIAT;
    }

    public void setD03RIAT(int d03RIAT) {
        this.d03RIAT = d03RIAT;
    }

    public int getD24FP() {
        return this.d24FP;
    }

    public void setD24FP(int d24FP) {
        this.d24FP = d24FP;
    }

    public int getD25Discrim() {
        return this.d25Discrim;
    }

    public void setD25Discrim(int d25Discrim) {
        this.d25Discrim = d25Discrim;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getD23RecAc() {
        return this.d23RecAc;
    }

    public void setD23RecAc(int d23RecAc) {
        this.d23RecAc = d23RecAc;
    }

    public String getLegajo() {
        return this.legajo;
    }

    public void setLegajo(String legajo) {
        this.legajo = legajo;
    }

    public int getD22IRCI() {
        return this.d22IRCI;
    }

    public void setD22IRCI(int d22IRCI) {
        this.d22IRCI = d22IRCI;
    }

    public int getD09RCICP() {
        return this.d09RCICP;
    }

    public void setD09RCICP(int d09RCICP) {
        this.d09RCICP = d09RCICP;
    }

    public int getD08RLCP() {
        return this.d08RLCP;
    }

    public void setD08RLCP(int d08RLCP) {
        this.d08RLCP = d08RLCP;
    }

    public int getD10RLLP() {
        return this.d10RLLP;
    }

    public void setD10RLLP(int d10RLLP) {
        this.d10RLLP = d10RLLP;
    }

    public int getD01RIA1() {
        return this.d01RIA1;
    }

    public void setD01RIA1(int d01RIA1) {
        this.d01RIA1 = d01RIA1;
    }

    public int getD11RCILP() {
        return this.d11RCILP;
    }

    public void setD11RCILP(int d11RCILP) {
        this.d11RCILP = d11RCILP;
    }

    public int getD04RIB() {
        return this.d04RIB;
    }

    public void setD04RIB(int d04RIB) {
        this.d04RIB = d04RIB;
    }
}
