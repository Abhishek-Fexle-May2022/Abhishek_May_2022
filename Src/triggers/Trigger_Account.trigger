trigger Trigger_Account on Account (before insert, after insert) {
    if(Trigger.isInsert){
        if(Trigger.isBefore){
            AccountTriggerHandler.accountDataInsert(Trigger.new);
        }
        if(Trigger.isAfter){
            AccountTriggerHandler.sendEmail(Trigger.new);
        }
    }
}