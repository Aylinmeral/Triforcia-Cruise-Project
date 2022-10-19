public class CustomNotificationFromApex {
    public static void notifyUsers(Set<String> recipientsIds, String targetId){
        
        CustomNotificationType notificationType = [SELECT Id, DeveloperName FROM CustomNotificationType WHERE DeveloperName='Emergency Notifications'];
        
        Messaging.CustomNotification notification = new Messaging.CustomNotification();
        notification.setTitle('Emergency Notifications');
        notification.setBody('An Emergency Task has been raised!');
        notification.setNotificationTypeId(notificationType.Id);
        notification.setTargetId(targetId);
        
        notification.send(recipientsIds);
        
        
    }

}