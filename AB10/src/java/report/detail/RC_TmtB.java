/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package report.detail;

import dao.EvalDao;
import dao.TmtBDao;
import entity.Eval;
import entity.TmtB;
import java.util.HashMap;
import java.util.Map;
import util.Util;

/**
 *
 * @author Seba
 */
public class RC_TmtB implements RP_Interface {

    private String legajo = "";
    private int age = 0;
    private int ealc = 0;
    private int ocu = 0;
    private Map<String, Integer> columPB;
    private Map<String, Float> columMedia;
    private Map<String, Float> columDT;
    private Map<String, Float> columZ;

    public RC_TmtB(String legajo) {
        this.legajo = legajo;
    }

    @Override
    public void generateData() {
        // Recupero el legajo.
        EvalDao ed = new EvalDao();
        Eval ev = ed.getEvalByLegajo(legajo);
        if (ev != null) {
            // Consulto la base con el legajo para calcular la edad.
            age = Util.calcularEdad(ev.getPacfecnac());
        }

        // Consulto la DB para ver los valores brutos.
        TmtBDao tmtbDao = new TmtBDao();
        TmtB tmtb = tmtbDao.getTmtBByLegajo(legajo);
        ealc = tmtb.getEalc(); // Busco el valor de educacion alcanzado.
        ocu = tmtb.getOcup();

        // Aplico las tranformaciones.
        columPB = parcePB(tmtb);

        // Obtengo la Media y DT en un solo calculo.
        columMedia = new HashMap();
        columDT = new HashMap();
        getBaremoMediaAndDT(age, ealc, ocu);

        columZ = calcularZ(columPB, columMedia, columDT);
    }

    @Override
    public String getTextDetail() {
        String result = "Dentro de las Funciones Ejecutivas, según el análisis psicométrico de las puntuaciones obtenidas los procesos de secuenciación y flexibilidad cognitiva los valores obtenidos fueron prub.";
        try {
            String tmp = "";
            // prub
            tmp = getTextoDetalle(columZ.get("prub"));
            result = result.replaceAll("prub", tmp);
           
        } catch (Exception e) {
            result = "";
        }
        return result;
    }

    @Override
    public Map<String, Object> getTableDetail() {
        Map<String, Object> result = new HashMap<>();
        /*
            Para el redondeo a 2 decimales de los float al imprimer el informe usar:
            float floatValue=22.34555f;
            System.out.print(String.format("%.2f", floatValue));
            Output is 22.35. If you need 3 decimal points change it to "%.3f".
         */
        try {
            result.put("columPB", columPB);
            result.put("columMedia", columMedia);
            result.put("columDT", columDT);
            result.put("columZ", columZ);
        } catch (Exception e) {
            result = null;
        }
        return result;
    }

    private Map<String, Integer> parcePB(TmtB tmtb) {
        Map<String, Integer> result = new HashMap();

        try {
            // Realizo el llenado del PB, para que me queden todas las columnas con el mismo formato.
            // result.put("ensb", tmtb.getEnsayob());
            result.put("prub", tmtb.getPruebab());
        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private void getBaremoMediaAndDT(int age, int ealc, int ocu) {
        try {
            // Dedusco el baremo.
            if (age >= 0 && age <= 59) {
                if (ealc >= 0 && ealc <= 7) {
                    if (ocu == 1) { // Empleado u oficio calificado (incluye tareas de secretaría, tareas administrativas, etc.)
                        columMedia.put("prub", 112.2f);
                        columDT.put("prub", 48f);
                    } else if (ocu == 2) { // Empleado no calificado (incluye ama de casa, trabajo rural, albañil, etc.)
                        columMedia.put("prub", 128.9f);
                        columDT.put("prub", 23.1f);
                    } else if (ocu == 3) { // Profesional u estudiante de nivel secundario o superior
                        // No esta definido.
                    }
                } else if (ealc >= 8 && ealc <= 12) {
                    if (ocu == 1) { // Empleado u oficio calificado (incluye tareas de secretaría, tareas administrativas, etc.)
                        columMedia.put("prub", 91.5f);
                        columDT.put("prub", 26.5f);
                    } else if (ocu == 2) { // Empleado no calificado (incluye ama de casa, trabajo rural, albañil, etc.)
                        columMedia.put("prub", 108f);
                        columDT.put("prub", 55.5f);
                    } else if (ocu == 3) { // Profesional u estudiante de nivel secundario o superior
                        columMedia.put("prub", 73.4f);
                        columDT.put("prub", 16.9f);
                    }
                } else if (ealc >= 13) {
                    if (ocu == 1) { // Empleado u oficio calificado (incluye tareas de secretaría, tareas administrativas, etc.)
                        columMedia.put("prub", 74.4f);
                        columDT.put("prub", 16.4f);
                    } else if (ocu == 2) { // Empleado no calificado (incluye ama de casa, trabajo rural, albañil, etc.)
                        // No esta definido.
                    } else if (ocu == 3) { // Profesional u estudiante de nivel secundario o superior
                        columMedia.put("prub", 66.4f);
                        columDT.put("prub", 18.14f);
                    }
                }
            } else if (age >= 60 && age < 80) {
                if (ealc >= 0 && ealc <= 12) {
                    columMedia.put("prub", 160.5f);
                    columDT.put("prub", 59.72f);
                } else if (ealc >= 13) {
                    columMedia.put("prub", 103.67f);
                    columDT.put("prub", 29.92f);
                }
            }
        } catch (Exception e) {
        }
    }

    private Map<String, Float> calcularZ(Map<String, Integer> tablePB, Map<String, Float> tableMedia, Map<String, Float> tableDT) {
        Map<String, Float> result = new HashMap();

        try {
            // Es el mismo calculo que hace el Excel =(bruto-media)/dt
            result.put("prub", ((tablePB.get("prub") - tableMedia.get("prub")) / tableDT.get("prub")));            
        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private String getTextoDetalle(Float z) {
        String result = "";
        if (z >= 1.3f) {
            result = "superiores a los valores esperados para su grupo normativo (la X en 1,5 o superior)";
        } else if (z >= 0.9f && z <= 1.2f) {
            result = "en el límite superior normal (X van en 1)";
        } else if (z >= -0.8f && z <= 0.8f) {
            result = "acordes a la media esperada para su grupo poblacional (X van en -0.5 o 0.5)";
        } else if (z <= -0.9f && z >= -1.2f) {
            result = "en el límite inferior normal (X van en -1)";
        } else if (z <= -1.3f && z >= -1.7f) {
            result = "con leves dificultades (X van en -1.5)";
        } else if (z <= -1.8f && z >= -2.2f) {
            result = "con moderadas alteraciones (X van en -2)";
        } else if (z <= -2.3f && z >= -2.7f) {
            result = "con moderadas a severas dificultades (X van en -2.5)";
        } else if (z <= -2.8f) {
            result = "con severas alteraciones (X van en -3)";
        }
        return result;
    }
}
