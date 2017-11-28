/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package report.detail;

import dao.EvalDao;
import dao.TfvDao;
import entity.Eval;
import entity.Tfv;
import java.util.HashMap;
import java.util.Map;
import util.Util;

/**
 *
 * @author Seba
 */
public class RC_Tfv implements RP_Interface {

    private String legajo = "";
    private int age = 0;
    private int ealc = 0;
    private Map<String, Integer> columPB;
    private Map<String, Float> columMedia;
    private Map<String, Float> columDT;
    private Map<String, Float> columZ;

    public RC_Tfv(String legajo) {
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
        TfvDao tfvDao = new TfvDao();
        Tfv tfv = tfvDao.getTfvByLegajo(legajo);
        ealc = tfv.getEalc(); // Busco el valor de educacion alcanzado.

        // Aplico las tranformaciones.
        columPB = parcePB(tfv);

        // Obtengo la Media y DT en un solo calculo.
        columMedia = new HashMap();
        columDT = new HashMap();
        getBaremoMediaAndDT(age, ealc);

        columZ = calcularZ(columPB, columMedia, columDT);
    }

    @Override
    public String getTextDetail() {
        String result = "Según el análisis psicométrico de las puntuaciones obtenidas en la prueba aplicada de fluidez verbal, en la subprueba de fluidez verbal fonológica se obtuvieron valores tfvf. En la subrpueba de fluidez verbal semántica se registraron puntajes tfvs.";
        try {
            String tmp = "";
            // tfvf
            tmp = getTextoDetalle(columZ.get("tfvf"));
            result = result.replaceAll("tfvf", tmp);
            // tfvs
            tmp = getTextoDetalle(columZ.get("tfvs"));
            result = result.replaceAll("tfvs", tmp);

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

    private Map<String, Integer> parcePB(Tfv tfv) {
        Map<String, Integer> result = new HashMap();

        try {
            // Realizo el llenado del PB, para que me queden todas las columnas con el mismo formato.
            result.put("tfvf", tfv.getTfvf());
            result.put("tfvs", tfv.getTfvs());
        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private void getBaremoMediaAndDT(int age, int ealc) {
        try {
            int baremo = 0;

            // Dedusco el baremo.
            if (ealc >= 0 && ealc <= 7) {
                if (age <= 45) {
                    baremo = 1;
                } else if (age >= 46 && age <= 55) {
                    baremo = 2;
                } else if (age >= 56 && age <= 65) {
                    baremo = 3;
                } else if (age >= 66 && age <= 75) {
                    baremo = 4;
                } else if (age >= 75) {
                    baremo = 5;
                }
            } else if (ealc >= 8 && ealc <= 12) {
                if (age <= 45) {
                    baremo = 6;
                } else if (age >= 46 && age <= 55) {
                    baremo = 7;
                } else if (age >= 56 && age <= 65) {
                    baremo = 8;
                } else if (age >= 66 && age <= 75) {
                    baremo = 9;
                } else if (age >= 75) {
                    baremo = 10;
                }
            } else if (ealc >= 13) {
                if (age <= 45) {
                    baremo = 11;
                } else if (age >= 46 && age <= 55) {
                    baremo = 12;
                } else if (age >= 56 && age <= 65) {
                    baremo = 13;
                } else if (age >= 66 && age <= 75) {
                    baremo = 14;
                } else if (age >= 75) {
                    baremo = 15;
                }
            }

            // Retorno el map con los valores correspondientes.
            switch (baremo) {
                case 1:
                    columMedia.put("tfvf", 12.8f);
                    columMedia.put("tfvs", 16.5f);
                    columDT.put("tfvf", 3.9f);
                    columDT.put("tfvs", 2.8f);

                    break;
                case 2:
                    columMedia.put("tfvf", 14.8f);
                    columMedia.put("tfvs", 18.7f);
                    columDT.put("tfvf", 2.6f);
                    columDT.put("tfvs", 3.0f);

                    break;
                case 3:
                    columMedia.put("tfvf", 13.3f);
                    columMedia.put("tfvs", 15.5f);
                    columDT.put("tfvf", 5.7f);
                    columDT.put("tfvs", 3.7f);

                    break;
                case 4:
                    columMedia.put("tfvf", 10.8f);
                    columMedia.put("tfvs", 15.4f);
                    columDT.put("tfvf", 3.1f);
                    columDT.put("tfvs", 3.9f);

                    break;
                case 5:
                    columMedia.put("tfvf", 9.8f);
                    columMedia.put("tfvs", 12.4f);
                    columDT.put("tfvf", 4.7f);
                    columDT.put("tfvs", 2.9f);

                    break;
                case 6:
                    columMedia.put("tfvf", 16.6f);
                    columMedia.put("tfvs", 20.9f);
                    columDT.put("tfvf", 6.1f);
                    columDT.put("tfvs", 5.6f);

                    break;
                case 7:
                    columMedia.put("tfvf", 19.0f);
                    columMedia.put("tfvs", 2.4f);
                    columDT.put("tfvf", 4.7f);
                    columDT.put("tfvs", 4.7f);

                    break;
                case 8:
                    columMedia.put("tfvf", 15.2f);
                    columMedia.put("tfvs", 19.2f);
                    columDT.put("tfvf", 4.0f);
                    columDT.put("tfvs", 5.2f);

                    break;

                case 9:
                    columMedia.put("tfvf", 14.5f);
                    columMedia.put("tfvs", 19.3f);
                    columDT.put("tfvf", 3.5f);
                    columDT.put("tfvs", 5.1f);

                    break;
                case 10:
                    columMedia.put("tfvf", 14.0f);
                    columMedia.put("tfvs", 16.5f);
                    columDT.put("tfvf", 3.7f);
                    columDT.put("tfvs", 2.3f);

                    break;
                case 11:
                    columMedia.put("tfvf", 18.1f);
                    columMedia.put("tfvs", 23.8f);
                    columDT.put("tfvf", 6.2f);
                    columDT.put("tfvs", 6.2f);

                    break;
                case 12:
                    columMedia.put("tfvf", 17.1f);
                    columMedia.put("tfvs", 22.4f);
                    columDT.put("tfvf", 4.1f);
                    columDT.put("tfvs", 4.8f);

                    break;
                case 13:
                    columMedia.put("tfvf", 16.6f);
                    columMedia.put("tfvs", 21.6f);
                    columDT.put("tfvf", 3.2f);
                    columDT.put("tfvs", 5.4f);

                    break;
                case 14:
                    columMedia.put("tfvf", 16.4f);
                    columMedia.put("tfvs", 19.5f);
                    columDT.put("tfvf", 4.5f);
                    columDT.put("tfvs", 5.5f);

                    break;
                case 15:
                    columMedia.put("tfvf", 9.8f);
                    columMedia.put("tfvs", 15.1f);
                    columDT.put("tfvf", 4.7f);
                    columDT.put("tfvs", 3.5f);

                    break;
            }
        } catch (Exception e) {
        }
    }

    private Map<String, Float> calcularZ(Map<String, Integer> tablePB, Map<String, Float> tableMedia, Map<String, Float> tableDT) {
        Map<String, Float> result = new HashMap();

        try {
            // Es el mismo calculo que hace el Excel =(bruto-media)/dt
            result.put("tfvf", ((tablePB.get("tfvf") - tableMedia.get("tfvf")) / tableDT.get("tfvf")));
            result.put("tfvs", ((tablePB.get("tfvs") - tableMedia.get("tfvs")) / tableDT.get("tfvs")));

        } catch (Exception e) {
            result = null;
        }

        return result;
    }

    private String getTextoDetalle(Float z) {
        String result = "";
        if (z >= 1.3f) {
            result = "superiores a los valores esperados para su grupo normativo (X va en 1.5 o sup.)";
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
