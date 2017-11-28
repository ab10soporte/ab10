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

public class Eval implements Serializable {

    @Basic
    private int educacion;

    @Basic
    private boolean eliminado;

    @Basic
    private int userid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Basic
    private String pactel;

    @Basic
    private String procedencia;

    @Basic
    private String pacnombre;

    @Column(length = 3)
    @Basic
    private String legajo;

    @Basic
    private Timestamp pacfecnac;

    @Basic
    private String apatologicos;

    @Basic
    private int edualc;

    @Basic
    private String aactual;

    @Basic
    private String evaluador;

    @Basic
    private Timestamp fecha;

    @Basic
    private String afamiliares;

    @Basic
    private String ecomplementarios;

    @Basic
    private String hclinica;

    @Basic
    private String derivado;

    @Basic
    private String ocupacion;

    @Basic
    private String sactual;

    @Basic
    private int estado;

    @Basic
    private String email;

    @Basic
    private String htoxicos;

    @Basic
    private String eneuropsicologica;

    @Basic
    private String conducta;

    @Basic
    private String pacdni;

    @Basic
    private int mano;

    @Basic
    private String medicacion;

    public Eval() {

    }

    public int getEducacion() {
        return this.educacion;
    }

    public void setEducacion(int educacion) {
        this.educacion = educacion;
    }

    public boolean isEliminado() {
        return this.eliminado;
    }

    public void setEliminado(boolean eliminado) {
        this.eliminado = eliminado;
    }

    public int getUserid() {
        return this.userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPactel() {
        return this.pactel;
    }

    public void setPactel(String pactel) {
        this.pactel = pactel;
    }

    public String getProcedencia() {
        return this.procedencia;
    }

    public void setProcedencia(String procedencia) {
        this.procedencia = procedencia;
    }

    public String getPacnombre() {
        return this.pacnombre;
    }

    public void setPacnombre(String pacnombre) {
        this.pacnombre = pacnombre;
    }

    public String getLegajo() {
        return this.legajo;
    }

    public void setLegajo(String legajo) {
        this.legajo = legajo;
    }

    public Timestamp getPacfecnac() {
        return this.pacfecnac;
    }

    public void setPacfecnac(Timestamp pacfecnac) {
        this.pacfecnac = pacfecnac;
    }

    public String getApatologicos() {
        return this.apatologicos;
    }

    public void setApatologicos(String apatologicos) {
        this.apatologicos = apatologicos;
    }

    public int getEdualc() {
        return this.edualc;
    }

    public void setEdualc(int edualc) {
        this.edualc = edualc;
    }

    public String getAactual() {
        return this.aactual;
    }

    public void setAactual(String aactual) {
        this.aactual = aactual;
    }

    public String getEvaluador() {
        return this.evaluador;
    }

    public void setEvaluador(String evaluador) {
        this.evaluador = evaluador;
    }

    public Timestamp getFecha() {
        return this.fecha;
    }

    public void setFecha(Timestamp fecha) {
        this.fecha = fecha;
    }

    public String getAfamiliares() {
        return this.afamiliares;
    }

    public void setAfamiliares(String afamiliares) {
        this.afamiliares = afamiliares;
    }

    public String getEcomplementarios() {
        return this.ecomplementarios;
    }

    public void setEcomplementarios(String ecomplementarios) {
        this.ecomplementarios = ecomplementarios;
    }

    public String getHclinica() {
        return this.hclinica;
    }

    public void setHclinica(String hclinica) {
        this.hclinica = hclinica;
    }

    public String getDerivado() {
        return this.derivado;
    }

    public void setDerivado(String derivado) {
        this.derivado = derivado;
    }

    public String getOcupacion() {
        return this.ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }

    public String getSactual() {
        return this.sactual;
    }

    public void setSactual(String sactual) {
        this.sactual = sactual;
    }

    public int getEstado() {
        return this.estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHtoxicos() {
        return this.htoxicos;
    }

    public void setHtoxicos(String htoxicos) {
        this.htoxicos = htoxicos;
    }

    public String getEneuropsicologica() {
        return this.eneuropsicologica;
    }

    public void setEneuropsicologica(String eneuropsicologica) {
        this.eneuropsicologica = eneuropsicologica;
    }

    public String getConducta() {
        return this.conducta;
    }

    public void setConducta(String conducta) {
        this.conducta = conducta;
    }

    public String getPacdni() {
        return this.pacdni;
    }

    public void setPacdni(String pacdni) {
        this.pacdni = pacdni;
    }

    public int getMano() {
        return this.mano;
    }

    public void setMano(int mano) {
        this.mano = mano;
    }

    public String getMedicacion() {
        return this.medicacion;
    }

    public void setMedicacion(String medicacion) {
        this.medicacion = medicacion;
    }
}
