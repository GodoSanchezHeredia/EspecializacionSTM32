#include "PID.h"
#include <string.h>

void Controlador_PID(ControladorPID *pid){
    pid->Derivador=0.0;
    pid->Integrador=0.0;
    pid->Error_Anterior=0.0;
    pid->Medida_Anterior=0.0;
    pid->uk=0.0;
    
}

float ControladorPID_Calculo(ControladorPID *pid,float referencia,float medicion){
    
    float error;
    error= referencia - medicion;
   
    
    /*Parte Proporcional*/
    pid->Proporcional = error*pid->Kp;
    
   /*parte Integral con antiwind*/
    
    pid->Integrador = pid->Integrador + 0.5*pid->Ki*pid->Ts*(error + pid->Error_Anterior);
        

    
    /*parte Derivativa*/
     pid->Derivador = -(2.0f*pid->Kd * (medicion-pid->Medida_Anterior)
                        +(2.0f*pid->Tau - pid->Ts) * pid->Derivador)
                        /(2.0f*pid->Tau+pid->Ts);
    
  //  pid->Derivador = (pid->Kd/pid->Ts)*(error - pid->Error_Anterior);
  
    /*salida*/
    pid->uk = pid->Proporcional + pid->Integrador +pid->Derivador;
    
     /*saturador*/
            if(pid->uk > pid->Lmax) pid->uk = pid->Lmax;
     else   if(pid->uk < pid->Lmin) pid->uk = pid->Lmin;
     else pid->uk = pid->uk;
            
            //actualizamos 
            pid->Error_Anterior  = error;
            pid->Medida_Anterior = medicion;
     
    return pid->uk;
}
