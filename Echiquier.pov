#include "Triedre.pov"
#include "Roi.pov" 
#include "Pion.pov"
#include "Cavalier.pov"
#include "Fou.pov"
#include "Tour.pov"
#include "Reine.pov"

                       




#declare Gris=<0.6,0.6,0.6>; 
#declare Noir=<0.05,0.05,0.05>;  
#declare Blanc=(1/255)*<110,77,37>;

#declare B = box {
    <-1, -1, -1> <0, 0, 0> // <x, y, z> near lower left corner, <x, y, z> far upper right corner
    
}

#macro Echiquier ()
#local i=1;
#local j=1; 
#local c=1;


#for(i,1,8)
    #local c=c+1;
    #for(j,1,8)
          #if(mod(c,2)=0)
                #local Col=Noir;
           #else
                #local Col=Blanc;
        #end
        #local c=c+1;
    object{
        B
        pigment{color Col}
        translate <j, i, 0> // <x, y, z> 
        finish{
             
            phong 0.75
            }
    }
    
    
    #end
    
#end 

#end
#macro Contour ()
#local i=1;
#local j=1; 



#for(i,0,2)
    #local I=0;
    #if (i=1)     
        #local I=9 ;
    #end
    #for(j,0,9)
      
    object{
        B
        pigment{color rgb<0.14,0.04,0.02>}
        translate <j, I, 0> // <x, y, z> 
        finish{
             
            phong 0.75
        
            }
    }
    #end
    
#end 
#local i=1;
#local j=1; 
#for(i,0,2)
    #local I=0;
    #if (i=1)     
        #local I=9 ;
    #end
    #for(j,0,9)
      
    object{
        B
        pigment{color rgb<0.14,0.04,0.02>}
        translate <I, j, 0> // <x, y, z> 
        finish{
             
            phong 0.75
            }
    }
    #end
    
#end
   
#end 




#macro pion()
    #local c=1;
    #local i=0;
    #local j=0;
    #local T=2; 
    #local Col=Blanc;
    #for(c,1,2)
        #for(i,T,7)
        
        object{
            Pion
            scale<0.1,0.1,0.1>        
            translate <-0.4,0.2,0>  
            pigment {color Col}
        
            translate<0.9+i,1.3+j,0.45>   
            finish{
            phong 0.75 
            reflection { 0.3}
            }
            }  
     #end
#local j=5;
#local T=0; 
#local Col=Noir;

#end 

#end




 
#macro CavalierN()
 #local i=0 ;
 #local c=0;
 #for (c,1,2)
object
{
 Cavalier   
 pigment{color Noir}
 finish
 {
    phong 0.75  reflection { 0.3}
            
 }                  
 rotate z*80
 translate <6+i,27,0>
 scale <0.25,0.25,0.25>
 
}
#local i=20;   
#end   
#end 
#macro CavalierB()
 #local i=20 ;
 #local c=0;
 #for (c,2,2)
object
{
 Cavalier   
 pigment{color Blanc}
 finish
 {
    phong 0.75 reflection { 0.3}
 }                  
 rotate z*-80
 translate <5+i,5,0>
 scale <0.25,0.25,0.25>
 
}
#local i=20;   
#end   
#end     



#macro FouB()
 #local i=0 ;
 
 #for (i,3,3,3)

    
object
{
Fou

scale <0.38,0.38,0.28>
translate <1.35+i,0.5,0>


pigment {color Blanc}
finish
{phong 0.75    reflection { 0.3}
}
}

   
#end   
#end    
       
#macro FouN() 
 #local i=0 ;
 #local j=0 ;
 
 #for (i,0,3,3)
    
    
object
{
Fou

scale <0.38,0.38,0.28>
translate <1.35+i,7.5,0>


pigment {color Noir}
finish
{phong 0.75   reflection { 0.3}
}
}

   
#end   
#end    



#macro TourB()
 #local i=0 ;
 #local j=0 ;
 
 #for (i,0,7,7)
    
    
object
{
Tour
 scale <0.3,0.3,0.35>
 
 translate <-0.4+i,0.3,0>
 
  pigment {color Blanc}
finish
{phong 0.75   reflection { 0.3}
}

  }    
  
  
   
#end   
#end

#macro TourN()
 #local i=0 ;
 #local j=0 ;
 
 #for (i,0,7,7)
    
    
object
{
Tour
 scale <0.3,0.3,0.35>
 
 translate <-0.4+i,7.3,0>
 
  pigment {color Noir}
finish
{phong 0.75   reflection { 0.3}
}
  
  
  }    
  
  
   
#end   
#end 



  


#macro ReineRoi()
 #local i=0 ;
 #local j=0 ;
 #local Col=Blanc;
 #for (i,0,7,7)
    
    
object
{
Reine
 scale <0.3, 0.3, 0.3> // <x, y, z>
    translate<-0.4,0.35,0.1>
   translate <3,0+i,0> 
   pigment{color Col}  
     finish{
     phong 0.75  reflection { 0.3}
     
    }
 }
  
 object{
    Roi
    scale <0.3, 0.3, 0.3> // <x, y, z>
    translate<-0.4,0.35,0.1>
    pigment{color Col}
    
    translate<4,0+i,0>
    finish{
     phong 0.75   reflection { 0.3}
    }
    
}    
#local Col=Noir; 
  
  
   
#end   
#end 

Echiquier()
CavalierN() 
CavalierB()
Contour()  
pion()
FouB()    
FouN()  
TourB()
TourN()    
ReineRoi()
    
     
            
            
            
//ANIMATIONS

object{
            Pion
            scale<0.1,0.1,0.1>        
            translate <-0.4,0.2,0> 
            translate<1.9,1.3,0.45> 
            pigment {color Blanc}
            #if (clock<=2/3)
            translate<0,clock*3,0>
            #else
            translate<0,2,0>
            #end  //   
            finish{
            phong 0.75 
            reflection { 0.3}
            }
            }  //PION
          
          
 


        object
                {
                 Cavalier   
                 pigment{color Blanc}
                 finish
                 {
                    phong 0.75 reflection { 0.3}
                 }                  
                 rotate z*-80
                 translate <5,5,0>
                 scale <0.25,0.25,0.25>
                 
                
             
                #if (clock<2/3)
                    translate<0,clock*3,0> 
                   
                #elseif(clock>=2/3)
                    translate<clock,2,0>
            
              #end 
 
            
            }
          
               
                            
  object{
            Pion
            scale<0.1,0.1,0.1>        
            translate <-0.4,0.2,0>  
            
        
             
             #local Y=3*pow(1-clock,2)*clock*0.75+3*(1-clock)*pow(clock,2)*2.3+pow(clock,3)*3; 
             #local Z=3*pow(1-clock,2)*clock*2.54+3*(1-clock)*pow(clock,2)*2.52;
                    translate<0.9,1.3+Y,0.45+Z>
                     
                    //   
             
                         pigment {color Blanc}
               
            
          
            
            finish{
            phong 0.75 
            reflection { 0.3}
            }
            }                          
                    
   object
        {
        Fou
        
        scale <0.38,0.38,0.28>
        translate <1.35,0.5,0>
        
        
        pigment {color Blanc}
        finish
        {phong 0.75    reflection { 0.3}
        }
        
        translate<clock*(-2),clock*2,0>
        
        }