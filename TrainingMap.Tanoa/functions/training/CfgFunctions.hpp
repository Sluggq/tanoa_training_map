class TFT_training {

    tag="TFT";

    class brm {

        file = "functions\training\brm";

        class setBrmLoadout;

        class initBrmTarget;

        class identifyLines;

        class beginQualification;

    };

    class cqb {

        file = "functions\training\cqb";

        class switchLights;

        class toggleLiveTargets;

        class toggleCivilians;

    };

    class misc {

        file = "functions\training\misc";

        class serviceVehicle;

        class addTeleport;

        class teleport;

    };
    
    class driving {
        
        file = "functions\training\driving";
        
        class timerDisplay;
        
        class drivingReset;
        
        class initDriveTarget;
        
    };
    
    class bounding {
        
        file = "functions\training\bounding";
        
        class initBoundTarget;
        
        class boundReset;
        
    };

    class training {

        file = "functions\training";

        class registerTarget;

        class toggleTargets;

        class iedDemo;

        class cameraFeed;

        class cameraFeedLocal;

        class cameraFeedMode;
        
        class mapDestroyer;

    };

};
