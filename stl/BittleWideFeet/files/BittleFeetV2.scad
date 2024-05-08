//!OpenSCAD
// BittleFeetV2.scad by Alex Bruski on 4/24/2024.
//use <ShapesLibV2.scad>
$fn=72;
Foot();
//Support(); // Uncomment the left edge of this line to add support for printing.
module Foot()
{
  Ring(0.432,0.179,0.14,true);
  for(A=[0:30:330])
  {
    R(z=A)T(0.177)cube([0.074,0.071,0.432],center=true);
  }
  T(z=0.01)Ring(0.212,0.14,0.04,true);
  T(z=-0.396)Ring(0.6,0.138,0.04,true);
  T(z=-0.241)Ring(0.05,0.179,0.138,true);
  T(z=-0.576)Ring(0.05,0.179,0.138,true);
}
module Support()
{
  T(z=-0.649)Ring(0.095,0.179,0.163,true);
  T(z=-0.4085)Ring(0.282,0.179,0.163,true);
  difference()
  {
    T(z=-0.317)cylinder(h=0.2,r1=0.179,r2=0.216,center=true);
    T(z=-0.317)cylinder(h=0.201,r1=0.16,r2=0.2,center=true);
  }
}
//Modules from private (ShapesLibV2.scad) library.
module T(x=0,y=0,z=0)
{
  translate([x,y,z])children();
}
module R(x=0,y=0,z=0)
{
  rotate([x,y,z])children();
}
module Ring(Height=1,OutsideRadius=1,InsideRadius=0.5,Center=true)
{
  difference()
  {
    cylinder(h=Height,r=OutsideRadius,center=Center);
    cylinder(h=Height+0.002,r=InsideRadius,center=Center);
  }
}