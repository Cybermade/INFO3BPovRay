 #include "Triedre.pov"



#declare Col=<0.15,0.15,0.15>;

   
   



#declare Tour = union
    

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
        <3, 0.5, 3>, 0.55 // <x, y, z>, center & radius of the other end
        
     
    }
     cone {
        <3, 0.5, 3>, 0.6 // <x, y, z>, center & radius of one end
        <3, 0.5, 3.1>, 0.6 // <x, y, z>, center & radius of the other end
       
     
    }
   
    difference {
         cylinder {
        <3, 0.5, 3.1>, <3, 0.5, 3.5>, 0.6 // center of one end, center of other end, radius
        
        
    }
    box {
        <2.8, -0.1, 3.1>, <3.15, 1.1, 3.6> // <x, y, z> near lower left corner, <x, y, z> far upper right corner
        
    }
    box {
        <2.4, 0.3, 3.1>, <3.6, 0.7, 3.6> // <x, y, z> near lower left corner, <x, y, z> far upper right corner
        
    }
    }  
 
    
} 

  /*
light_source{<-5,3,5>,White}    
light_source{<0,1,4>,White}
object 
{
Tour  
pigment {color Col}
rotate x*-3    
rotate z*90
translate <1,1,0>  
finish
{
    phong 0.75  
    diffuse 1.5
  
}   
       
}             
     
        */


 
