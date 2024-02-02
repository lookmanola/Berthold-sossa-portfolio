/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.projet;

/**
 *
 * @author mechac
 */
public class Cotisation {
    Membres cot;
    int fraismensuel;
    String mois;
    String datepaiementcot;
    
    public Cotisation(Membres m, int i, String mo, String d){
        cot=m;
        fraismensuel=i;
        mois=mo;
        datepaiementcot=d;
      }
    
   }
