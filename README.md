# sfcommmultiattachdownloader -- It stands for salesforce community users multiple attachment downloader

Background:
I worked on a community where community and guest users were able to download attachments. After giving the required permissions for community profile, I realized user cant download multiple attachments. After googling found this [article](http://www.saaspie.com/download-attachments-as-a-zip-file-in-salesforce/). Based on that I wrote this piece code and wanted to share it.

###Installation
Click here to install: 
<a href="https://githubsfdeploy.herokuapp.com/?owner=vcandra&repo=sfcommmultiattachdownloader">
  <img alt="Deploy to Salesforce"
       src="https://raw.githubusercontent.com/afawcett/githubsfdeploy/master/deploy.png">
</a>



jszip is required to be copied into your static resources.

Controller will receive id of the object as a parentid. /AttachmentsPage?parentId=salesforceID.
After the page is loaded, Vf remoting is used to call the controller and get the attachments.
Each attachment is collected and then entire zip file is downloaded.

Though I am mentioning community, it will work for other users as well.

Troubleshooting:
1. User has permission for the object
2. User has permission for the page.
3. SF dont accept attachments more than 15 MB.

Limtitation: It will take time for download, some times 5-6 MB will take 20-25 seconds. My network was slow and took time for me. 

PS: There is a lot of scope for improvement in this and will be glad if you can do that.
