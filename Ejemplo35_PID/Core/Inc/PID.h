/* 
 * File:   PID.h
 * Author: LENOVO
 *
 * Created on 27 de diciembre de 2021, 04:19 PM
 */

#ifndef PID_H
#define	PID_H

#include <stdint.h>



typedef struct{

/***Ganancias del Controlador*/
    float Kp;
    float Ki;
    float Kd;
    
/*Constante de tiempo del filtro pasa baja*/
    float Tau;
/*Saturacion del Actuador*/    
    float Lmax;//12
    float Lmin;//0
   /*Tiempo de Muestreo*/
    float Ts;//10ms
/*Variables del Controlador*/    
    float Derivador;
    float Integrador;
    float Proporcional;
    float Error_Anterior;
    float Medida_Anterior;

  /*Se�al de Salida del Actuador*/
    float uk;
}ControladorPID;


void Controlador_PID(ControladorPID *pid);
float ControladorPID_Calculo(ControladorPID *pid,float referencia,float medicion);


#endif	/* PID_H */

