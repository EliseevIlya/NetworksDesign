//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.Eth10G;
import inet.node.ethernet.EthernetSwitch;
import inet.node.inet.StandardHost;
import inet.node.internetcloud.InternetCloud;
import ned.IdealChannel;
import inet.node.inet.Router;

package kurswork_v1;
//
// TODO documentation
//
network Network1
{
    @display("bgb=1353.2999,1153.1");
    submodules:
        server: StandardHost {
            @display("p=23,345;i=device/router");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=38,35;is=s");
        }
        internet: InternetCloud {
            @display("p=132,344;is=vl");
        }
        router: Router {
            @display("p=265,148");
        }
        router1: Router {
            @display("p=239,345");
        }
        router2: Router {
            @display("p=239,544");
        }
        BRANCH: StandardHost {
            @display("p=400.4,163.8;i=device/server");
        }
        BRANCH1: StandardHost {
            @display("p=400.4,582.39996;i=device/server");
        }
        BRANCH2: StandardHost {
            @display("p=362.69998,946.39996;i=device/server");
        }
        ethernetSwitch2: EthernetSwitch {
            @display("p=724.1,958.1;i=device/accesspoint");
        }
        room1: StandardHost {
            @display("p=577.2,890.5;i=device/lan-ring");
        }
        client1: StandardHost {
            @display("p=509.6,897");
        }
        client2: StandardHost {
            @display("p=665.6,877.5");
        }
        client3: StandardHost {
            @display("p=648.7,802.1");
        }
        client4: StandardHost {
            @display("p=583.7,802.1");
        }
        client5: StandardHost {
            @display("p=525.2,826.8");
        }
        client6: StandardHost {
            @display("p=789.1,802.1");
        }
        client7: StandardHost {
            @display("p=861.89996,826.8");
        }
        client8: StandardHost {
            @display("p=715,864.5");
        }
        room2: StandardHost {
            @display("p=781.3,861.89996;i=device/lan-ring");
        }
        client9: StandardHost {
            @display("p=839.8,897");
        }
        client10: StandardHost {
            @display("p=724.1,802.1");
        }
        client11: StandardHost {
            @display("p=509.6,991.89996");
        }
        client12: StandardHost {
            @display("p=626.6,1020.5");
        }
        client13: StandardHost {
            @display("p=561.6,1081.6");
        }
        room3: StandardHost {
            @display("p=561.6,1003.6;i=device/lan-ring");
        }
        client14: StandardHost {
            @display("p=612.3,1093.2999");
        }
        client15: StandardHost {
            @display("p=500.5,1059.5");
        }
        client16: StandardHost {
            @display("p=690.3,1102.4");
        }
        client17: StandardHost {
            @display("p=690.3,1030.9");
        }
        client18: StandardHost {
            @display("p=811.2,1042.6");
        }
        client19: StandardHost {
            @display("p=811.2,1110.2");
        }
        client20: StandardHost {
            @display("p=760.5,1110.2");
        }
        room4: StandardHost {
            @display("p=741,1030.9;i=device/lan-ring");
        }
        client21: StandardHost {
            @display("p=878.8,991.89996");
        }
        client22: StandardHost {
            @display("p=947.7,1003.6");
        }
        client23: StandardHost {
            @display("p=1012.7,1054.2999");
        }
        client24: StandardHost {
            @display("p=982.8,1102.4");
        }
        client25: StandardHost {
            @display("p=878.8,1093.2999");
        }
        room5: StandardHost {
            @display("p=920.39996,1054.2999;i=device/lan-ring");
        }
        client26: StandardHost {
            @display("p=947.7,816.39996");
        }
        client27: StandardHost {
            @display("p=1011.39996,816.39996");
        }
        client28: StandardHost {
            @display("p=1062.1,877.5");
        }
        client29: StandardHost {
            @display("p=998.39996,941.2");
        }
        client30: StandardHost {
            @display("p=912.6,928.2");
        }
        room6: StandardHost {
            @display("p=962,877.5;i=device/lan-ring");
        }
        client31: StandardHost {
            @display("p=760.5,734.5");
        }
        client32: StandardHost {
            @display("p=947.7,440.69998");
        }
        room7: StandardHost {
            @display("p=781.3,486.19998;i=device/lan-ring");
        }
        client33: StandardHost {
            @display("p=1062.1,501.8");
        }
        room8: StandardHost {
            @display("p=962,501.8;i=device/lan-ring");
        }
        client34: StandardHost {
            @display("p=861.89996,451.1");
        }
        client35: StandardHost {
            @display("p=715,488.8");
        }
        client36: StandardHost {
            @display("p=1012.7,677.3");
        }
        room9: StandardHost {
            @display("p=741,655.2;i=device/lan-ring");
        }
        client37: StandardHost {
            @display("p=648.7,426.4");
        }
        client38: StandardHost {
            @display("p=811.2,666.89996");
        }
        room10: StandardHost {
            @display("p=561.6,627.89996;i=device/lan-ring");
        }
        client39: StandardHost {
            @display("p=947.7,627.89996");
        }
        client40: StandardHost {
            @display("p=811.2,734.5");
        }
        client41: StandardHost {
            @display("p=878.8,716.3");
        }
        room11: StandardHost {
            @display("p=920.39996,677.3;i=device/lan-ring");
        }
        client42: StandardHost {
            @display("p=612.3,716.3");
        }
        client43: StandardHost {
            @display("p=878.8,616.2");
        }
        client44: StandardHost {
            @display("p=665.6,501.8");
        }
        client45: StandardHost {
            @display("p=839.8,521.3");
        }
        client46: StandardHost {
            @display("p=690.3,655.2");
        }
        client47: StandardHost {
            @display("p=509.6,521.3");
        }
        client48: StandardHost {
            @display("p=1011.39996,440.69998");
        }
        client49: StandardHost {
            @display("p=509.6,616.2");
        }
        client50: StandardHost {
            @display("p=690.3,726.7");
        }
        client51: StandardHost {
            @display("p=525.2,451.1");
        }
        client52: StandardHost {
            @display("p=724.1,426.4");
        }
        client53: StandardHost {
            @display("p=998.39996,565.5");
        }
        client54: StandardHost {
            @display("p=500.5,683.8");
        }
        client55: StandardHost {
            @display("p=583.7,426.4");
        }
        client56: StandardHost {
            @display("p=561.6,705.89996");
        }
        ethernetSwitch1: EthernetSwitch {
            @display("p=724.1,582.39996;i=device/accesspoint");
        }
        room12: StandardHost {
            @display("p=577.2,514.8;i=device/lan-ring");
        }
        client57: StandardHost {
            @display("p=789.1,426.4");
        }
        client58: StandardHost {
            @display("p=626.6,644.8");
        }
        client59: StandardHost {
            @display("p=912.6,552.5");
        }
        client60: StandardHost {
            @display("p=982.8,726.7");
        }
        client61: StandardHost {
            @display("p=777.39996,352.3");
        }
        client62: StandardHost {
            @display("p=964.6,58.5");
        }
        room13: StandardHost {
            @display("p=798.2,104;i=device/lan-ring");
        }
        client63: StandardHost {
            @display("p=1079,119.6");
        }
        room14: StandardHost {
            @display("p=978.89996,119.6;i=device/lan-ring");
        }
        client64: StandardHost {
            @display("p=878.8,68.9");
        }
        client65: StandardHost {
            @display("p=731.89996,106.6");
        }
        client66: StandardHost {
            @display("p=1029.6,295.1");
        }
        room15: StandardHost {
            @display("p=757.89996,273;i=device/lan-ring");
        }
        client67: StandardHost {
            @display("p=665.6,44.2");
        }
        client68: StandardHost {
            @display("p=828.1,284.69998");
        }
        room16: StandardHost {
            @display("p=578.5,245.7;i=device/lan-ring");
        }
        client69: StandardHost {
            @display("p=964.6,245.7");
        }
        client70: StandardHost {
            @display("p=828.1,352.3");
        }
        client71: StandardHost {
            @display("p=895.7,334.1");
        }
        room17: StandardHost {
            @display("p=937.3,295.1;i=device/lan-ring");
        }
        client72: StandardHost {
            @display("p=629.2,334.1");
        }
        client73: StandardHost {
            @display("p=895.7,234");
        }
        client74: StandardHost {
            @display("p=682.5,119.6");
        }
        client75: StandardHost {
            @display("p=856.7,139.09999");
        }
        client76: StandardHost {
            @display("p=707.2,273");
        }
        client77: StandardHost {
            @display("p=526.5,139.09999");
        }
        client78: StandardHost {
            @display("p=1028.2999,58.5");
        }
        client79: StandardHost {
            @display("p=526.5,234");
        }
        client80: StandardHost {
            @display("p=707.2,344.5");
        }
        client81: StandardHost {
            @display("p=542.1,68.9");
        }
        client82: StandardHost {
            @display("p=741,44.2");
        }
        client83: StandardHost {
            @display("p=1015.3,183.3");
        }
        client84: StandardHost {
            @display("p=517.39996,301.6");
        }
        client85: StandardHost {
            @display("p=600.6,44.2");
        }
        client86: StandardHost {
            @display("p=578.5,323.69998");
        }
        ethernetSwitch3: EthernetSwitch {
            @display("p=741,200.2;i=device/accesspoint");
        }
        room18: StandardHost {
            @display("p=594.1,132.59999;i=device/lan-ring");
        }
        client87: StandardHost {
            @display("p=806,44.2");
        }
        client88: StandardHost {
            @display("p=643.5,262.6");
        }
        client89: StandardHost {
            @display("p=929.5,170.3");
        }
        client90: StandardHost {
            @display("p=999.7,344.5");
        }
    connections:
        server.pppg[0] <--> IdealChannel <--> internet.pppg[0];
        internet.pppg[0] <--> IdealChannel <--> router.pppg[0];
        internet.pppg[0] <--> IdealChannel <--> router1.pppg[0];
        internet.pppg[0] <--> IdealChannel <--> router2.pppg[0];
        router.ethg[0] <--> IdealChannel <--> BRANCH.ethg[0];
        router1.ethg[0] <--> IdealChannel <--> BRANCH1.ethg[0];
        router2.ethg[0] <--> IdealChannel <--> BRANCH2.ethg[0];
        router.ethg[0] <--> IdealChannel <--> BRANCH1.ethg[0];
        router.ethg[0] <--> IdealChannel <--> BRANCH2.ethg[0];
        router1.ethg[0] <--> IdealChannel <--> BRANCH.ethg[0];
        router1.ethg[0] <--> IdealChannel <--> BRANCH2.ethg[0];
        router2.ethg[0] <--> IdealChannel <--> BRANCH.ethg[0];
        router2.ethg[0] <--> IdealChannel <--> BRANCH1.ethg[0];
        BRANCH2.ethg[0] <--> IdealChannel <--> ethernetSwitch2.ethg[0];
        room1.ethg[0] <--> IdealChannel <--> client5.ethg[0];
        room1.ethg[0] <--> IdealChannel <--> client4.ethg[0];
        room1.ethg[0] <--> IdealChannel <--> client3.ethg[0];
        room1.ethg[0] <--> IdealChannel <--> client2.ethg[0];
        room1.ethg[0] <--> IdealChannel <--> client1.ethg[0];
        room2.ethg[0] <--> IdealChannel <--> client10.ethg[0];
        room2.ethg[0] <--> IdealChannel <--> client6.ethg[0];
        room2.ethg[0] <--> IdealChannel <--> client7.ethg[0];
        room2.ethg[0] <--> IdealChannel <--> client9.ethg[0];
        room2.ethg[0] <--> IdealChannel <--> client8.ethg[0];
        room3.ethg[0] <--> IdealChannel <--> client15.ethg[0];
        room3.ethg[0] <--> IdealChannel <--> client11.ethg[0];
        room3.ethg[0] <--> IdealChannel <--> client12.ethg[0];
        room3.ethg[0] <--> IdealChannel <--> client14.ethg[0];
        room3.ethg[0] <--> IdealChannel <--> client13.ethg[0];
        room4.ethg[0] <--> IdealChannel <--> client16.ethg[0];
        room4.ethg[0] <--> IdealChannel <--> client17.ethg[0];
        room4.ethg[0] <--> IdealChannel <--> client18.ethg[0];
        room4.ethg[0] <--> IdealChannel <--> client19.ethg[0];
        room4.ethg[0] <--> IdealChannel <--> client20.ethg[0];
        room5.ethg[0] <--> IdealChannel <--> client21.ethg[0];
        room5.ethg[0] <--> IdealChannel <--> client22.ethg[0];
        room5.ethg[0] <--> IdealChannel <--> client23.ethg[0];
        room5.ethg[0] <--> IdealChannel <--> client24.ethg[0];
        room5.ethg[0] <--> IdealChannel <--> client25.ethg[0];
        room6.ethg[0] <--> IdealChannel <--> client26.ethg[0];
        room6.ethg[0] <--> IdealChannel <--> client27.ethg[0];
        room6.ethg[0] <--> IdealChannel <--> client28.ethg[0];
        room6.ethg[0] <--> IdealChannel <--> client29.ethg[0];
        room6.ethg[0] <--> IdealChannel <--> client30.ethg[0];
        ethernetSwitch2.ethg[0] <--> IdealChannel <--> room1.ethg[0];
        ethernetSwitch2.ethg[0] <--> IdealChannel <--> room2.ethg[0];
        ethernetSwitch2.ethg[0] <--> IdealChannel <--> room6.ethg[0];
        ethernetSwitch2.ethg[0] <--> IdealChannel <--> room5.ethg[0];
        ethernetSwitch2.ethg[0] <--> IdealChannel <--> room4.ethg[0];
        ethernetSwitch2.ethg[0] <--> IdealChannel <--> room3.ethg[0];
        room12.ethg[0] <--> IdealChannel <--> client51.ethg[0];
        room12.ethg[0] <--> IdealChannel <--> client55.ethg[0];
        room12.ethg[0] <--> IdealChannel <--> client37.ethg[0];
        room12.ethg[0] <--> IdealChannel <--> client44.ethg[0];
        room12.ethg[0] <--> IdealChannel <--> client47.ethg[0];
        room7.ethg[0] <--> IdealChannel <--> client52.ethg[0];
        room7.ethg[0] <--> IdealChannel <--> client57.ethg[0];
        room7.ethg[0] <--> IdealChannel <--> client34.ethg[0];
        room7.ethg[0] <--> IdealChannel <--> client45.ethg[0];
        room7.ethg[0] <--> IdealChannel <--> client35.ethg[0];
        room10.ethg[0] <--> IdealChannel <--> client54.ethg[0];
        room10.ethg[0] <--> IdealChannel <--> client49.ethg[0];
        room10.ethg[0] <--> IdealChannel <--> client58.ethg[0];
        room10.ethg[0] <--> IdealChannel <--> client42.ethg[0];
        room10.ethg[0] <--> IdealChannel <--> client56.ethg[0];
        room9.ethg[0] <--> IdealChannel <--> client50.ethg[0];
        room9.ethg[0] <--> IdealChannel <--> client46.ethg[0];
        room9.ethg[0] <--> IdealChannel <--> client38.ethg[0];
        room9.ethg[0] <--> IdealChannel <--> client40.ethg[0];
        room9.ethg[0] <--> IdealChannel <--> client31.ethg[0];
        room11.ethg[0] <--> IdealChannel <--> client43.ethg[0];
        room11.ethg[0] <--> IdealChannel <--> client39.ethg[0];
        room11.ethg[0] <--> IdealChannel <--> client36.ethg[0];
        room11.ethg[0] <--> IdealChannel <--> client60.ethg[0];
        room11.ethg[0] <--> IdealChannel <--> client41.ethg[0];
        room8.ethg[0] <--> IdealChannel <--> client32.ethg[0];
        room8.ethg[0] <--> IdealChannel <--> client48.ethg[0];
        room8.ethg[0] <--> IdealChannel <--> client33.ethg[0];
        room8.ethg[0] <--> IdealChannel <--> client53.ethg[0];
        room8.ethg[0] <--> IdealChannel <--> client59.ethg[0];
        ethernetSwitch1.ethg[0] <--> IdealChannel <--> room12.ethg[0];
        ethernetSwitch1.ethg[0] <--> IdealChannel <--> room7.ethg[0];
        ethernetSwitch1.ethg[0] <--> IdealChannel <--> room8.ethg[0];
        ethernetSwitch1.ethg[0] <--> IdealChannel <--> room11.ethg[0];
        ethernetSwitch1.ethg[0] <--> IdealChannel <--> room9.ethg[0];
        ethernetSwitch1.ethg[0] <--> IdealChannel <--> room10.ethg[0];
        room18.ethg[0] <--> IdealChannel <--> client81.ethg[0];
        room18.ethg[0] <--> IdealChannel <--> client85.ethg[0];
        room18.ethg[0] <--> IdealChannel <--> client67.ethg[0];
        room18.ethg[0] <--> IdealChannel <--> client74.ethg[0];
        room18.ethg[0] <--> IdealChannel <--> client77.ethg[0];
        room13.ethg[0] <--> IdealChannel <--> client82.ethg[0];
        room13.ethg[0] <--> IdealChannel <--> client87.ethg[0];
        room13.ethg[0] <--> IdealChannel <--> client64.ethg[0];
        room13.ethg[0] <--> IdealChannel <--> client75.ethg[0];
        room13.ethg[0] <--> IdealChannel <--> client65.ethg[0];
        room16.ethg[0] <--> IdealChannel <--> client84.ethg[0];
        room16.ethg[0] <--> IdealChannel <--> client79.ethg[0];
        room16.ethg[0] <--> IdealChannel <--> client88.ethg[0];
        room16.ethg[0] <--> IdealChannel <--> client72.ethg[0];
        room16.ethg[0] <--> IdealChannel <--> client86.ethg[0];
        room15.ethg[0] <--> IdealChannel <--> client80.ethg[0];
        room15.ethg[0] <--> IdealChannel <--> client76.ethg[0];
        room15.ethg[0] <--> IdealChannel <--> client68.ethg[0];
        room15.ethg[0] <--> IdealChannel <--> client70.ethg[0];
        room15.ethg[0] <--> IdealChannel <--> client61.ethg[0];
        room17.ethg[0] <--> IdealChannel <--> client73.ethg[0];
        room17.ethg[0] <--> IdealChannel <--> client69.ethg[0];
        room17.ethg[0] <--> IdealChannel <--> client66.ethg[0];
        room17.ethg[0] <--> IdealChannel <--> client90.ethg[0];
        room17.ethg[0] <--> IdealChannel <--> client71.ethg[0];
        room14.ethg[0] <--> IdealChannel <--> client62.ethg[0];
        room14.ethg[0] <--> IdealChannel <--> client78.ethg[0];
        room14.ethg[0] <--> IdealChannel <--> client63.ethg[0];
        room14.ethg[0] <--> IdealChannel <--> client83.ethg[0];
        room14.ethg[0] <--> IdealChannel <--> client89.ethg[0];
        ethernetSwitch3.ethg[0] <--> IdealChannel <--> room18.ethg[0];
        ethernetSwitch3.ethg[0] <--> IdealChannel <--> room13.ethg[0];
        ethernetSwitch3.ethg[0] <--> IdealChannel <--> room14.ethg[0];
        ethernetSwitch3.ethg[0] <--> IdealChannel <--> room17.ethg[0];
        ethernetSwitch3.ethg[0] <--> IdealChannel <--> room15.ethg[0];
        ethernetSwitch3.ethg[0] <--> IdealChannel <--> room16.ethg[0];
        BRANCH1.ethg[0] <--> IdealChannel <--> ethernetSwitch1.ethg[0];
        BRANCH.ethg[0] <--> IdealChannel <--> ethernetSwitch3.ethg[0];
}

