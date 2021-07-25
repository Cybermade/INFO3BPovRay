   #include "triedre.pov"

#declare Col=rgb<0.15,0.15,0.15>;

   
   



#declare Cavalier = union
    

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
     
    sphere {
                <3,0.5,2>
               0.8
                 scale z*2.5
                 translate <0,0,-2.5>
                
      
      }    
        sphere {
                <1,0.5,3>
               0.6
               scale x*2
               rotate y*(-10)
               translate <0.3,0,0.85>
               
                
      
      }  
      
      cone
      {
          <3,0.5,4.3> 0.2
          <3,0.5,5.3> 0.05
      }
  
} 
/*  
  
light_source {<-5,2,5>,White}
object
{
 Cavalier   
 scale <0.5,0.5,0.5>
 pigment{color Col}
 finish
 {
    phong 0.75
    diffuse 1.5
 }                  
 rotate z*-80
 translate <0,5,0>
}   */