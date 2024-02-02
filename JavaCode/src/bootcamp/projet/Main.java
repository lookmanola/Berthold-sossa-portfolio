/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bootcamp.projet;

import java.util.ArrayList;
import java.util.Arrays;


/**
 *
 * @author mechac
 */
public class Main {
    public static void main(String[] args) {
        ArrayList< String> Membres = new ArrayList< String>();
        Membres m1=new Membres();
         m1.nom="BITI";
         m1.prenoms="Mechak";
         m1.email="mechak.biti@ecole229.bj";
         m1.numtel=65814144;
         m1.profession="Etudiant";
         m1.adresse="Pahou";
        Membres.add(m1.nom);
        Membres m2=new Membres();
         m2.nom="ZOUGNON";
         m2.prenoms="Lookman";
         m2.email="lookman.zougnon@ecole229.bj";
         m2.numtel=96328527;
         m2.profession="Etudiant";
         m2.adresse="Godomey";
        Membres.add(m2.nom );
        Membres m3=new Membres();
         m3.nom="AHOUEKE";
         m3.prenoms="Theophile";
         m3.email="ahoueke.theophile@ecole229.bj";
         m3.numtel=96571041;
         m3.profession="Etudiant";
         m3.adresse="Calavi";
         Membres.add(m3.nom);
         System.out.println("Les membres de la communauté blolab sont: " + Membres);
         Adhesion a1=new Adhesion(m1, 1000, "02/04/2002");
         Adhesion a2=new Adhesion(m2, 1000, "22/11/2019");
         Adhesion a3=new Adhesion(m3, 1000, "30/05/2020");
         Cotisation c1=new Cotisation(m1, 15000, "Aout", "15/11/2021");
         Cotisation c2=new Cotisation(m2, 20000, "Janvier", "22/12/2021");
         Cotisation c3=new Cotisation(m3, 45000, "Fevrier", "01/01/2021");
          ArrayList< String> MembresActif = new ArrayList< String>();
          ArrayList< String> MembresNonActif = new ArrayList< String>();
          if (c1.mois=="Aout"){
                  MembresActif.add(m1.nom);
          }
          else {
              MembresNonActif.add(m1.nom);
          }
          if (c2.mois=="Aout"){
                  MembresActif.add(m2.nom);
          }
          else {
              MembresNonActif.add(m2.nom);
          }
          if (c3.mois=="Aout"){
                  MembresActif.add(m3.nom);
          }
          else {
              MembresNonActif.add(m3.nom);
          }
          System.out.println("Les membres actifs sont: " + MembresActif);
          System.out.println("Les membres non actifs sont: " + MembresNonActif);
         }
         
}
