 #include "triedre.pov"
#declare Fou= blob
{

    threshold 0.6
    sphere {
        <3, 0, 0>, 2, 0.8
        
    }
     
     
     cylinder
     {
         <3,0,-1.7>,<3,0,-4>,2,-0.6
     }                              
     cylinder
     {
        <3,0,2>,<3,0,3>,1.5,0.8
     }
     sphere {
        <3, 0, 4.85>, 1.5, 0.8
        
    }
  
    sphere 
    {
        <3,0,5.5>,0.2,0.6
    }
    cylinder
    {
        <3.35,-1,4.9>,<3.45,6,6.6>,0.12,-0.8
    }
          
  
    
    
 
    
}     

 /*
light_source{<-5,2,5>,White}
object
{
    Fou
    pigment{color rgb <0.15,0.15,0.15>}    
    scale <0.76,0.76,0.56>
    translate <-5,0,0>
        
    rotate x*-5
    rotate z*-90
    
    finish
    {
        phong 0.75   
        diffuse 1.5
                 
                
    }              
    
    
}              */


