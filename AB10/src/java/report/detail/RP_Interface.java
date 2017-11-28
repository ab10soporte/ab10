/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package report.detail;

import java.util.Map;

/**
 *
 * @author Seba
 */
public interface RP_Interface {
    public void generateData();
    public String getTextDetail();
    public Map<String, Object> getTableDetail();
}
