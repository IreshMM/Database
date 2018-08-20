/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test2;
import java.sql.*;
/**
 *
 * @author HP
 */



public class TStudent {
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    boolean addStd(undergraduate ug){
    
        try{
        con = connectionz.getConnection();
        pst  = con.prepareStatement("INSERT INTO student VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
        
        //Use the right data instead of following hardcoded dummy data
        //I'm just lazy to type those getter functions
        //Remember to pass right data types
        
        pst.setInt(1, 45); //sid
        pst.setString(2, "SD"); //sname
        pst.setString(3, "SD"); //nic
        pst.setString(4, "SD"); //email
        pst.setString(5, "SD"); //address
        pst.setString(6, "SD"); //gender
        pst.setString(7, "SD"); //intake
        pst.setString(8, "SD"); //phone
        pst.setString(9, "SD"); //faculty
        pst.setString(10, "SD"); //ayear
        pst.setString(11, "SD"); //adistrict
        pst.setString(12, "SD"); //asub1
        pst.setString(13, "SD"); //are1
        pst.setString(14, "SD"); //asub2
        pst.setString(15, "SD"); //are2
        pst.setString(16, "SD"); //asub3
        pst.setString(17, "SD"); //are3
        pst.setFloat(18, (float) 152.2); //payment
        pst.setString(19, "SD"); //sub1
        pst.setString(20, "SD"); //sub2
        pst.setString(21, "SD"); //sub3
        pst.setString(22, "SD"); //sub4
        pst.setString(23, "SD"); //sub5
        pst.setString(24, "SD"); //sub6
        pst.setString(25, "SD"); //sub7
        pst.setString(26, "SD"); //sub8
        
        pst.execute();
        
        return true;
        }
        catch(Exception ex){
            System.out.println(ex);
            return false;}
        //System.out.println
        finally{
            try{
                if (pst != null)
                    pst.close();
                if (con != null)
                    con.close();
            }catch(Exception exp){
                System.out.println(exp);
            }
        }
    }
}
