/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package report.detail;

import dao.EvalDao;
import dao.TavecDao;
import entity.Eval;
import entity.Tavec;
import java.util.HashMap;
import java.util.Map;
import util.Util;

/**
 *
 * @author Seba
 */
public class RP_Tavec implements RP_Interface {

    private String legajo = "";
    private int age = 0;
    private Map<String, Integer> columPB;
    private Map<String, Float> columMedia;
    private Map<String, Float> columDT;
    private Map<String, Float> columZ;

    public RP_Tavec(String legajo) {
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
        TavecDao tavecDao = new TavecDao();
        Tavec tavec = tavecDao.getTavecByLegajo(legajo);

        // Aplico las tranformaciones.
        columPB = parcePB(tavec);
        columMedia = getBaremoMedia(age);
        columDT = getBaremoDT(age);
        columZ = calcularZ(tavec, columMedia, columDT);
    }

    @Override
    public String getTextDetail() {
        String result = "Según el análisis psicométrico de las puntuaciones obtenidas en la prueba aplicada de "
                + "memoria episódica modalidad verbal, en la subprueba de recuerdo inmediato se obtuvieron valores 03RIAT. "
                + "En la subrpueba de recuerdo libre a corto plazo se registraron puntajes 08RLCP.  En la subprueba de "
                + "recuerdo con claves a corto plazo se observaron puntuaciones 09RCICP. En la subprueba de recuerdo libre "
                + "a largo plazo se exhibieron puntuaciones 10RLLP. En la subprueba de recuerdo con claves a largo plazo "
                + "se observaron puntajes 11RCILP. En la subrpueba de reconocimiento se registraron "
                + "puntuaciones 23RecAc. 'Se observó/No se registró' presencia significativa de perseveraciones. 'Se observó/No se registró' presencia significativa de "
                + "intrusiones en pruebas de recuerdo libre. 'Se observó/No se registró' presencia significativa de intrusiones en pruebas "
                + "de recuerdo con claves. 'Se observó/No se registró' presencia significativa de falsos positivos. ";
        try {
            String tmp = "";
            // 03RIAT
            tmp = getTextoDetalle(columZ.get("03RIAT"));
            result = result.replaceAll("03RIAT", tmp);
            // 08RLCP
            tmp = getTextoDetalle(columZ.get("08RLCP"));
            result = result.replaceAll("08RLCP", tmp);
            // 09RCICP
            tmp = getTextoDetalle(columZ.get("09RCICP"));
            result = result.replaceAll("09RCICP", tmp);
            // 10RLLP
            tmp = getTextoDetalle(columZ.get("10RLLP"));
            result = result.replaceAll("10RLLP", tmp);
            // 11RCILP
            tmp = getTextoDetalle(columZ.get("11RCILP"));
            result = result.replaceAll("11RCILP", tmp);
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

    private String getTextoDetalle(Float z) {
        String result = "";
        if (z >= 1.5f) {
            result = "superiores a los valores esperados para su grupo normativo";
        } else if (z == 1f) {
            result = "en el límite superior normal";
        } else if (z >= -0.5f && z <= 0.5f) {
            result = "acordes a la media esperada para su grupo poblacional";
        } else if (z == -1f) {
            result = "en el límite inferior normal";
        } else if (z == -1.5f) {
            result = "- con leves dificultades";
        } else if (z == -2f) {
            result = "con moderadas alteraciones";
        } else if (z == -2.5f) {
            result = "con moderadas a severas dificultades";
        } else if (z <= -3f) {
            result = "con severas alteraciones";
        }
        return result;
    }

    private Map<String, Float> getBaremoMedia(int age) {
        Map<String, Float> result = new HashMap();

        try {
            int baremo = 0;

            // Dedusco el baremo
            if (age >= 16 && age <= 24) {
                baremo = 1;
            } else if (age >= 25 && age <= 34) {
                baremo = 2;
            } else if (age >= 35 && age <= 44) {
                baremo = 3;
            } else if (age >= 45 && age <= 54) {
                baremo = 4;
            } else if (age >= 55 && age <= 64) {
                baremo = 5;
            } else if (age >= 65 && age <= 74) {
                baremo = 6;
            } else if (age >= 75) {
                baremo = 7;
            }

            // Retorno el map con los valores correspondientes.
            switch (baremo) {
                case 1:
                    result.put("01RIA1", 7.7f);
                    result.put("02RIA5", 13.86f);
                    result.put("03RIAT", 58.19f);
                    result.put("04RIB", 7.03f);
                    result.put("08RLCP", 12.96f);
                    result.put("09RCICP", 13.41f);
                    result.put("10RLLP", 13.45f);
                    result.put("11RCILP", 13.76f);
                    result.put("20P", 4.55f);
                    result.put("21IRL", 2.5f);
                    result.put("22IRCI", 0.78f);
                    result.put("23RecAc", 15.37f);
                    result.put("24FP", 0.46f);
                    result.put("25Discrim", 96.92f);

                    break;
                case 2:
                    result.put("01RIA1", 7.95f);
                    result.put("02RIA5", 13.71f);
                    result.put("03RIAT", 58.2f);
                    result.put("04RIB", 7.07f);
                    result.put("08RLCP", 12.72f);
                    result.put("09RCICP", 13.38f);
                    result.put("10RLLP", 13.12f);
                    result.put("11RCILP", 13.66f);
                    result.put("20P", 5.76f);
                    result.put("21IRL", 2.69f);
                    result.put("22IRCI", 1.21f);
                    result.put("23RecAc", 15.08f);
                    result.put("24FP", 0.88f);
                    result.put("25Discrim", 95.55f);

                    break;
                case 3:
                    result.put("01RIA1", 7.34f);
                    result.put("02RIA5", 13.38f);
                    result.put("03RIAT", 55.82f);
                    result.put("04RIB", 6.64f);
                    result.put("08RLCP", 12.16f);
                    result.put("09RCICP", 12.8f);
                    result.put("10RLLP", 12.57f);
                    result.put("11RCILP", 13.24f);
                    result.put("20P", 5.54f);
                    result.put("21IRL", 2.97f);
                    result.put("22IRCI", 1.26f);
                    result.put("23RecAc", 15.14f);
                    result.put("24FP", 0.79f);
                    result.put("25Discrim", 95.77f);

                    break;
                case 4:
                    result.put("01RIA1", 7.16f);
                    result.put("02RIA5", 12.52f);
                    result.put("03RIAT", 51.53f);
                    result.put("04RIB", 6.28f);
                    result.put("08RLCP", 11.02f);
                    result.put("09RCICP", 11.91f);
                    result.put("10RLLP", 11.52f);
                    result.put("11RCILP", 12.12f);
                    result.put("20P", 7.04f);
                    result.put("21IRL", 3.53f);
                    result.put("22IRCI", 1.66f);
                    result.put("23RecAc", 14.58f);
                    result.put("24FP", 0.99f);
                    result.put("25Discrim", 94.32f);

                    break;
                case 5:
                    result.put("01RIA1", 6.67f);
                    result.put("02RIA5", 12.38f);
                    result.put("03RIAT", 50.76f);
                    result.put("04RIB", 5.78f);
                    result.put("08RLCP", 10.57f);
                    result.put("09RCICP", 11.82f);
                    result.put("10RLLP", 11.21f);
                    result.put("11RCILP", 12.05f);
                    result.put("20P", 6.6f);
                    result.put("21IRL", 3.88f);
                    result.put("22IRCI", 2.41f);
                    result.put("23RecAc", 14.69f);
                    result.put("24FP", 1.38f);
                    result.put("25Discrim", 93.97f);

                    break;
                case 6:
                    result.put("01RIA1", 5.86f);
                    result.put("02RIA5", 10.92f);
                    result.put("03RIAT", 43.99f);
                    result.put("04RIB", 5.73f);
                    result.put("08RLCP", 9.27f);
                    result.put("09RCICP", 10.64f);
                    result.put("10RLLP", 9.6f);
                    result.put("11RCILP", 10.66f);
                    result.put("20P", 5.71f);
                    result.put("21IRL", 4.95f);
                    result.put("22IRCI", 3.45f);
                    result.put("23RecAc", 13.73f);
                    result.put("24FP", 2.32f);
                    result.put("25Discrim", 89.44f);

                    break;
                case 7:
                    result.put("01RIA1", 4.92f);
                    result.put("02RIA5", 9.52f);
                    result.put("03RIAT", 38.26f);
                    result.put("04RIB", 5.06f);
                    result.put("08RLCP", 7.17f);
                    result.put("09RCICP", 8.76f);
                    result.put("10RLLP", 7.47f);
                    result.put("11RCILP", 8.68f);
                    result.put("20P", 6.57f);
                    result.put("21IRL", 7.11f);
                    result.put("22IRCI", 6.59f);
                    result.put("23RecAc", 13.34f);
                    result.put("24FP", 3.38f);
                    result.put("25Discrim", 86.17f);

                    break;
            }
        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private Map<String, Float> getBaremoDT(int age) {
        Map<String, Float> result = new HashMap();

        try {
            int baremo = 0;

            // Dedusco el baremo
            if (age >= 16 && age <= 24) {
                baremo = 1;
            } else if (age >= 25 && age <= 34) {
                baremo = 2;
            } else if (age >= 35 && age <= 44) {
                baremo = 3;
            } else if (age >= 45 && age <= 54) {
                baremo = 4;
            } else if (age >= 55 && age <= 64) {
                baremo = 5;
            } else if (age >= 65 && age <= 74) {
                baremo = 6;
            } else if (age >= 75) {
                baremo = 7;
            }

            // Retorno el map con los valores correspondientes.
            switch (baremo) {
                case 1:
                    result.put("01RIA1", 1.98f);
                    result.put("02RIA5", 1.81f);
                    result.put("03RIAT", 9.04f);
                    result.put("04RIB", 2.04f);
                    result.put("08RLCP", 2.41f);
                    result.put("09RCICP", 2.14f);
                    result.put("10RLLP", 2.16f);
                    result.put("11RCILP", 2.16f);
                    result.put("20P", 4.62f);
                    result.put("21IRL", 3.13f);
                    result.put("22IRCI", 1.45f);
                    result.put("23RecAc", 0.99f);
                    result.put("24FP", 0.99f);
                    result.put("25Discrim", 3.16f);

                    break;
                case 2:
                    result.put("01RIA1", 2f);
                    result.put("02RIA5", 2.05f);
                    result.put("03RIAT", 8.53f);
                    result.put("04RIB", 2.12f);
                    result.put("08RLCP", 2.59f);
                    result.put("09RCICP", 2.17f);
                    result.put("10RLLP", 2.48f);
                    result.put("11RCILP", 2.12f);
                    result.put("20P", 5f);
                    result.put("21IRL", 3.09f);
                    result.put("22IRCI", 1.87f);
                    result.put("23RecAc", 1.78f);
                    result.put("24FP", 2.66f);
                    result.put("25Discrim", 7.36f);

                    break;
                case 3:
                    result.put("01RIA1", 1.87f);
                    result.put("02RIA5", 2.33f);
                    result.put("03RIAT", 9.17f);
                    result.put("04RIB", 2.06f);
                    result.put("08RLCP", 2.95f);
                    result.put("09RCICP", 2.48f);
                    result.put("10RLLP", 2.75f);
                    result.put("11RCILP", 2.5f);
                    result.put("20P", 4.45f);
                    result.put("21IRL", 3.81f);
                    result.put("22IRCI", 1.9f);
                    result.put("23RecAc", 1.22f);
                    result.put("24FP", 1.23f);
                    result.put("25Discrim", 4.31f);

                    break;
                case 4:
                    result.put("01RIA1", 2.02f);
                    result.put("02RIA5", 2.26f);
                    result.put("03RIAT", 11.42f);
                    result.put("04RIB", 2.02f);
                    result.put("08RLCP", 2.98f);
                    result.put("09RCICP", 2.55f);
                    result.put("10RLLP", 2.64f);
                    result.put("11RCILP", 2.49f);
                    result.put("20P", 5.26f);
                    result.put("21IRL", 4.49f);
                    result.put("22IRCI", 2.21f);
                    result.put("23RecAc", 2.1f);
                    result.put("24FP", 1.27f);
                    result.put("25Discrim", 5.75f);

                    break;
                case 5:
                    result.put("01RIA1", 2.03f);
                    result.put("02RIA5", 2.13f);
                    result.put("03RIAT", 9.44f);
                    result.put("04RIB", 2.21f);
                    result.put("08RLCP", 2.79f);
                    result.put("09RCICP", 2.63f);
                    result.put("10RLLP", 2.83f);
                    result.put("11RCILP", 2.67f);
                    result.put("20P", 5.44f);
                    result.put("21IRL", 4.43f);
                    result.put("22IRCI", 3.74f);
                    result.put("23RecAc", 1.6f);
                    result.put("24FP", 1.9f);
                    result.put("25Discrim", 5.48f);

                    break;
                case 6:
                    result.put("01RIA1", 1.83f);
                    result.put("02RIA5", 2.04f);
                    result.put("03RIAT", 8.54f);
                    result.put("04RIB", 2.16f);
                    result.put("08RLCP", 2.81f);
                    result.put("09RCICP", 2.77f);
                    result.put("10RLLP", 2.78f);
                    result.put("11RCILP", 2.59f);
                    result.put("20P", 4.91f);
                    result.put("21IRL", 5.71f);
                    result.put("22IRCI", 4.62f);
                    result.put("23RecAc", 1.78f);
                    result.put("24FP", 2.55f);
                    result.put("25Discrim", 7.42f);

                    break;
                case 7:
                    result.put("01RIA1", 2.17f);
                    result.put("02RIA5", 3.08f);
                    result.put("03RIAT", 12.11f);
                    result.put("04RIB", 2.1f);
                    result.put("08RLCP", 3.8f);
                    result.put("09RCICP", 3.31f);
                    result.put("10RLLP", 3.91f);
                    result.put("11RCILP", 3.5f);
                    result.put("20P", 9.26f);
                    result.put("21IRL", 6.41f);
                    result.put("22IRCI", 6.61f);
                    result.put("23RecAc", 2.29f);
                    result.put("24FP", 2.85f);
                    result.put("25Discrim", 8.66f);

                    break;
            }
        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private Map<String, Float> calcularZ(Tavec tavec, Map<String, Float> tableMedia, Map<String, Float> tableDT) {
        Map<String, Float> result = new HashMap();

        try {
            // Es el mismo calculo que hace el Excel =(bruto-media)/dt
            result.put("01RIA1", ((tavec.getD01RIA1() - tableMedia.get("01RIA1")) / tableDT.get("01RIA1")));
            result.put("02RIA5", ((tavec.getD02RIA5() - tableMedia.get("02RIA5")) / tableDT.get("02RIA5")));
            result.put("03RIAT", ((tavec.getD03RIAT() - tableMedia.get("03RIAT")) / tableDT.get("03RIAT")));
            result.put("04RIB", ((tavec.getD04RIB() - tableMedia.get("04RIB")) / tableDT.get("04RIB")));
            result.put("08RLCP", ((tavec.getD08RLCP() - tableMedia.get("08RLCP")) / tableDT.get("08RLCP")));
            result.put("09RCICP", ((tavec.getD09RCICP() - tableMedia.get("09RCICP")) / tableDT.get("09RCICP")));
            result.put("10RLLP", ((tavec.getD10RLLP() - tableMedia.get("10RLLP")) / tableDT.get("10RLLP")));
            result.put("11RCILP", ((tavec.getD11RCILP() - tableMedia.get("11RCILP")) / tableDT.get("11RCILP")));
            result.put("20P", ((tavec.getD20P() - tableMedia.get("20P")) / tableDT.get("20P")));
            result.put("21IRL", ((tavec.getD21IRL() - tableMedia.get("21IRL")) / tableDT.get("21IRL")));
            result.put("22IRCI", ((tavec.getD22IRCI() - tableMedia.get("22IRCI")) / tableDT.get("22IRCI")));
            result.put("23RecAc", ((tavec.getD23RecAc() - tableMedia.get("23RecAc")) / tableDT.get("23RecAc")));
            result.put("24FP", ((tavec.getD24FP() - tableMedia.get("24FP")) / tableDT.get("24FP")));
            result.put("25Discrim", ((tavec.getD25Discrim() - tableMedia.get("25Discrim")) / tableDT.get("25Discrim")));

        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private Map<String, Integer> parcePB(Tavec tavec) {
        Map<String, Integer> result = new HashMap();

        try {
            // Realizo el llenado del PB, para que me queden todas las columnas con el mismo formato.
            result.put("01RIA1", tavec.getD01RIA1());
            result.put("02RIA5", tavec.getD02RIA5());
            result.put("03RIAT", tavec.getD03RIAT());
            result.put("04RIB", tavec.getD04RIB());
            result.put("08RLCP", tavec.getD08RLCP());
            result.put("09RCICP", tavec.getD09RCICP());
            result.put("10RLLP", tavec.getD10RLLP());
            result.put("11RCILP", tavec.getD11RCILP());
            result.put("20P", tavec.getD20P());
            result.put("21IRL", tavec.getD21IRL());
            result.put("22IRCI", tavec.getD22IRCI());
            result.put("23RecAc", tavec.getD23RecAc());
            result.put("24FP", tavec.getD24FP());
            result.put("25Discrim", tavec.getD25Discrim());
        } catch (Exception e) {
            result = null;
        }

        return result;
    }
}
