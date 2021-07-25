#include "triedre.pov"

#declare A=<0,2>;
#declare B=<1.4,1.9>;
#declare C=<1.9,0.6>;
#declare D=<2,0>;
#declare E=<2.2,-1.2>;
#declare F=<1.4,-1.9>;
#declare G=<1,-2>;
#declare H=<0.8,-2.1>;
#declare I=<4,-2.6>;
#declare J=<0,-2.7>;
#declare K=<1.6,-2.7>;
#declare L=<0.5,-2>;
#declare M=<1.5,-6.5>;
#declare N=<1.5,-6.6>;
#declare O=<2.6,-6>;
#declare P=<2.4,-8>;
#declare Q=<2.4,-8.2>;
#declare R=<2.9,-8.1>;
#declare S=<3.3,-8.7>;
#declare T=<3.3,-8.7>;
#declare U=<2.9,-8.9>;
#declare W=<3.3,-9>;
#declare X=<3.3,-9>;
#declare Y=<3.3,-9.3>;
#declare Z=<3.3,-9.3>;

#declare Col=<0.15,0.15,0.15>;
#declare Pion=union{
 lathe{
    bezier_spline 
        4,
        A,B,C,D
 
    rotate x*90
    translate <0,0,4>
    
    
} 
lathe{
    bezier_spline 
        4,
        D,E,F,G
        
   
      
    rotate x*90
    translate <0,0,4>
}
lathe{
    bezier_spline 
        4,
        G,H,I,J
        
     
     
    rotate x*90
    translate <0,0,4>
}
lathe{
    bezier_spline 
        4,
        J,K,L,M
        
    
    rotate x*90
    translate <0,0,4>
}
lathe{
    bezier_spline 
        4,
        M,N,O,P
        
   
      
    rotate x*90
    translate <0,0,4>
   
}
lathe{
    bezier_spline 
        4,
        P,Q,R,S
        
    
     
    rotate x*90
    translate <0,0,4>
   
}
lathe{
    bezier_spline 
        4,
        S,T,U,W
        
   
     
    rotate x*90
    translate <0,0,4>
}
lathe{
    bezier_spline 
        4,
        W,X,Y,Z
        
    
     
    rotate x*90
    translate <0,0,4>
    
}     
}
/*light_source{<-5,2,4>,White}
object{
Pion     
scale <0.4,0.4,0.4>
translate <0,4,2>   
pigment {color rgb<0.15,0.15,0.15>}
finish   
{
phong 0.75
diffuse 1.5
}
}      */