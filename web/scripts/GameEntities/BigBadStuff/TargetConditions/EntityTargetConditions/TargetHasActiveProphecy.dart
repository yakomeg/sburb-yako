import "../../../../SBURBSim.dart";
import 'dart:html';

//has no sub form, just exists
class TargetHasActiveProphecy extends TargetConditionLiving {
    @override
    String name = "HasActiveProphecy";

    Item crown;

    @override
    String get importantWord => "N/A";

    @override
    String descText = "<b>Has Active Prophecy:</b><br>Target Entity must be prophecied to die. <br><br>";
    @override
    String notDescText = "<b>Does NOT Have Active Prophecy:</b><br>Target Entity must not be prophecied to die. <br><br>";

    //strongly encouraged for this to be replaced
    //like, "An ominous 'honk' makes the Knight of Rage drop the Juggalo Poster in shock. With growing dread they realize that shit is about to get hella rowdy, as the Mirthful Messiahs have rolled into town.

    TargetHasActiveProphecy(SerializableScene scene) : super(scene){
    }




    @override
    TargetCondition makeNewOfSameType() {
        return new TargetHasActiveProphecy(scene);
    }

    @override
    void syncFormToMe() {
        syncFormToNotFlag();
    }

    @override
    void syncToForm() {
        syncNotFlagToForm();
        scene.syncForm();
    }
    @override
    void copyFromJSON(JSONObject json) {
        //nothing to do
    }

    @override
    bool conditionForFilter(GameEntity actor, GameEntity item) {
        return !(item.prophecy == ProphecyState.ACTIVE);
    }
}