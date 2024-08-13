package kurswork_v1;

import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.Eth10G;
import inet.node.ethernet.EthernetSwitch;
import inet.node.inet.StandardHost;
import inet.node.internetcloud.InternetCloud;
import ned.IdealChannel;
import inet.node.inet.Router;

@license(LGPL);

network Room
{
    parameters:
        int numClients;
        @display("i=device/lan-ring");
    gates:
        inout ethg[];
    submodules:
        EthernetSwitch: EthernetSwitch {
            @display("p=250,100");
        }
        client[numClients]: StandardHost {
            @display("p=400,100,col,100");
        }
    connections:
        for i=0..sizeof(ethg)-1 {
            ethg[i] <--> EthernetSwitch.ethg++;
        }
        for i=0..numClients-1 {
            EthernetSwitch.ethg++ <--> Eth100M <--> client[i].ethg++;
        }
}

network Branch
{
    parameters:
        int numClients;
        int numRooms;
        int numServer;
        @display("i=device/server");
    gates:
        inout ethg[];

    submodules:
        ethernetSwitch: EthernetSwitch {
            @display("p=250,100");
        }
        room[numRooms]: Room {
            @display("p=372,100,col,100");
        }
        branchserver[numServer]: StandardHost {
            @display("p=100,100,col,100");
        }
    connections:
        for i=0..sizeof(ethg)-1 {
            ethg[i] <--> ethernetSwitch.ethg++;
        }
        for i=0..numServer-1 {
            ethernetSwitch.ethg++ <--> Eth100M { @display("t=Eth100M"); }<--> branchserver[i].ethg++;
        }

        for i=0..numRooms-1 {
            ethernetSwitch.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> room[i].ethg++;
        }
}

network Network
{
    parameters:
        @display("i=device/server");

    submodules:
        internet: InternetCloud {
            @display("p=203,66;is=vl");
        }
        router: Router {
            @display("p=328,54");
        }
        router1: Router {
            @display("p=328,123");
        }
        router2: Router {
            @display("p=337,202");
        }
        
        branch1: Branch {
            @display("p=531,39");
        }
        branch2: Branch {
            @display("p=542,123");
        }
        branch3: Branch {
            @display("p=542,202");
        }
        server: StandardHost {
            @display("p=80,54");
        }
        configurator: Ipv4NetworkConfigurator {
            parameters:
                @display("p=97,154;is=s");
        }
    connections:
        server.pppg++ <--> Eth10G { @display("t=Eth10G"); } <--> internet.pppg++;

        //router.pppg++ <--> Eth100M <--> internet.pppg++;
        //router1.pppg++ <--> Eth100M <--> internet.pppg++;

        //router.pppg++ <--> {  datarate = 20Mbps; } <--> internet.pppg++;
        //router1.pppg++ <--> {  datarate = 20Mbps; } <--> internet.pppg++;

        router.pppg++ <--> Eth100M { @display("t=Eth100M"); } <--> internet.pppg++;
        router1.pppg++ <--> Eth100M { @display("t=Eth100M"); } <--> internet.pppg++;
        router2.pppg++ <--> Eth100M { @display("t=Eth100M"); } <--> internet.pppg++;

        branch1.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router.ethg++;
        branch2.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router1.ethg++;
        branch3.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router2.ethg++;

        //branch1.ethg++ <--> Eth100M <--> branch2.ethg++;
        //branch2.ethg++ <--> Eth100M <--> branch3.ethg++;
        //branch1.ethg++ <--> Eth100M <--> branch3.ethg++;

        //branch1.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router1.ethg++;
        //branch1.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router2.ethg++;
        //branch2.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router.ethg++;
        //branch2.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router2.ethg++;
        //branch3.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router.ethg++;
        //branch3.ethg++ <--> Eth100M { @display("t=Eth100M"); } <--> router1.ethg++;


}

