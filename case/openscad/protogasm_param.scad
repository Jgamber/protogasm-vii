//  ----------------------------------------------------------------------- LICENSE
//  This "3D Printed Case for Arduino Uno, Leonardo" by Zygmunt Wojcik is licensed
//  under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
//  To view a copy of this license, visit
//  http://creativecommons.org/licenses/by-sa/3.0/
//  or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.


//------------------------------------------------------------------------- SHARED PARAMETERS
$fn=100; // resolution

circleD = 21; // round corner circle diameter
roundR = circleD/2; // round corner circle radius
triangleH = (sqrt(3)*(circleD))/2; // triangle height to calculate other variables

layerHeight = 0.25; // some variariables are multiple of layer height and width
layerWidth = 0.5;

verConnectionHoleR = 1.2; // screw thread hole radius
screwHead = 6; // screw head hole diameter

gap = layerHeight/2;

floorHeight = 1.0; // 6*0.25 layer + 0.3 first layer

height = 20.6; // case height
innerHeight = height - floorHeight*2;

pillarSize = 3.0; // corner pillar size

// dimensions of minkowski's inner square
// these are NOT case dimensions
// to calculate external case dimesions add 2 * roundR
// 55.3 + (2*10.5) = 76.3
width = 65.3;
wide = 65.3;

blockLockSize = 2; // middle connection lock size

// side cutting panels size
sidePanelXWidth = wide;
sidePanelYWidth = width;

// prints dimensions of the case
echo("width", width + roundR*2); // total width
echo("wide", wide + roundR*2); // total wide

// UNO PCB dimensions
pcbWide=43.3;
pcbLenght=68.58;
pcbHeight=1.64;
usbHolePosition=38.1;
usbHeight=10.8 + 2;
usbWide=11.43 + 2;
powerJackPosition=7.62;
powerJackWide=8.9;
powerJackHeight=10.8 + 2;

pcbPositionX = (width/2 + roundR - layerWidth*7 - gap*4)-7;
pcbPositionZ = 2.5;
