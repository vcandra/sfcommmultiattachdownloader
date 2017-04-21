public class AttachmentsController {

    public Id parentId{get;set;}
    public AttachmentsController(){
        parentId = Apexpages.currentPage().getParameters().get('parentId');
    }
    
    @RemoteAction
    public static List<AttachmentWrapper> getAttachments(String disId){
        System.debug('I am here');
        List<Attachment> lstAttachments = new List<Attachment>();
        List <AttachmentWrapper> lstAttachmentWrapper = new List <AttachmentWrapper>();
        AttachmentWrapper wrapper = null;
        lstAttachments = [SELECT Id, Name, ParentId, ContentType, Body FROM Attachment WHERE ParentId =:disId];
        
        for(Attachment att : lstAttachments){
            wrapper = new AttachmentWrapper();
            wrapper.attName = att.Name;
            wrapper.attEncodedBody = EncodingUtil.base64Encode(att.Body);
            lstAttachmentWrapper.add(wrapper);
        }
    	return lstAttachmentWrapper;
    }
    public class AttachmentWrapper {
        public String attEncodedBody {get; set;}
        public String attName {get; set;}
    }
}