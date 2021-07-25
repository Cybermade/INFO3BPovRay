#include "Triedre.pov"



#declare Col=rgb<0.15,0.15,0.15>;

   
   



#declare Roi = union
    

{
     torus {
    0.9, .2 // major radius, minor radius
    
    // <x, y, z>
    rotate x*90 // <x°, y°, z°>
    translate <3, 0.5, 0> // <x, y, z>
    }
     torus {
    0.75, .2// major radius, minor radius
    
    // <x, y, z>
    rotate x*90 // <x°, y°, z°>
    translate <3, 0.5, 0.2> // <x, y, z>
    }
    cone {
        <3, 0.5, 0.4>, 1.05 // <x, y, z>, center & radius of one end
        <3, 0.5, 1>, 0.6 // <x, y, z>, center & radius of the other end
        
    }
     torus {
    0.7, .1// major radius, minor radius
    
    // <x, y, z>
    rotate x*90 // <x°, y°, z°>
    translate <3, 0.5, 1> // <x, y, z>
    }
     cone {
        <3, 0.5, 1>, 0.7 // <x, y, z>, center & radius of one end
        <3, 0.5, 1.5>, 0.4 // <x, y, z>, center & radius of the other end
        
    }
        cylinder {
        <3, 0.5, 1.4>, <3, 0.5, 2.5>, 0.4 // center of one end, center of other end, radius
         // remove end caps
        
    }
      torus {
    0.58, .13// major radius, minor radius
    
    // <x, y, z>
    rotate x*90 // <x°, y°, z°>
    translate <3, 0.5, 2.5> // <x, y, z>
    }
     torus {
    0.5, .1// major radius, minor radius
    
    // <x, y, z>
    rotate x*90 // <x°, y°, z°>
    translate <3, 0.5, 2.7> // <x, y, z>
    }
     torus {
    0.45, .1// major radius, minor radius
    
    // <x, y, z>
    rotate x*90 // <x°, y°, z°>
    translate <3, 0.5, 2.9> // <x, y, z>
    }
    cone {
        <3, 0.5, 3>, 0.45 // <x, y, z>, center & radius of one end
        <3, 0.5, 3.5>, 0.8 // <x, y, z>, center & radius of the other end
        
    }
    cone {
        <3, 0.5, 3.5>, 0.8 // <x, y, z>, center & radius of one end
        <3, 0.5, 3.6>, 0.75// <x, y, z>, center & radius of the other end
        
    }
    
    cylinder
    {
        <3,0.5,3.5>,<3,0.5,4.2>,0.15
         
         translate <0,0,0.1>
    }
    
    cylinder
    {
        <2.65,0.5,3.85>,<3.35,0.5,3.85>,0.15
        
        translate <0,0,0.1>
    }
    
    

    

}      
/*light_source{<2,0,5> color White}
light_source{<2,-3,5> color White}    
light_source{<-5,3,5> color White}
object
{
Roi                           
   
    pigment{color rgb<0.15,0.15,0.15> }
    rotate z*90
    finish                
   
    {
    phong 0.75  
    diffuse 1.5
    }
    translate <1,1,0>
    
    }  */   




   

