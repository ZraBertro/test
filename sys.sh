ï»¿#!/bin/bash

echo "*******************************************************************";
echo "                     BIENVENUE SUR MON PROJET SYS                  ";
echo "*******************************************************************";
echo "";
echo "";
echo "1) les informations des utilisateurs                               ";
echo "2) Aquisition, installation et lancementde l'environnement  Xampp  ";
echo "3) Archivage des elements du repertoire personnel qui ont          "; 
echo "          ete modifie par sudoer il y a deux jours dans un         ";
echo "   peripherique externe                                            ";
echo "4) Informations sur l'utilisations du disque,de la memoire et      ";
echo "                du processeur                                      ";
echo "";


       read x;
         while(test $x != q )do
         if(test $x = 1 ) then
         echo "          Les utitlisateurs :    ";
         echo "";
         ls  /home;
         echo "";
         else
         if(test $x = 2 ) then
         
         sudo wget https://www.apachefriends.org/fr/download_success.html/xampp-linux-x64-5.6.30-1-installer.run;
         echo "Fin du telechargement.. ";
         echo "Debut de l'installation... ";
         sudo chmod 777 xampp-linux-x64-5.6.30-1-installer.run;
         sudo ./xampp-linux-x64-5.6.30-1-installer.run;
         echo "Fin de l'installation xampp...";
         echo "Lancement de xampp... ";
         sudo /lamp/lamp/ start;
         echo "Termine... ";
         else
         if(test $x = 3 ) then

        
        sudo find . -ctime -2>monfichier1 | tar cvf monfichier1.tar monfichier1;
        echo  "Archivage en cours... ";
        else
        if(test $x = 4 ) then
        echo "";
        echo "Information du disque, de la memoire, processeur, swap ";
        echo "";
        top | head -6;
        df; 
        else
        echo "Choix invalide ";
        fi
        fi
        fi
        fi
        echo "";
        echo "Entrer une lettre pour continuer ";
        read x;
        done
