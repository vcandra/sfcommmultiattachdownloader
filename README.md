# sfcommmultiattachdownloader -- It stands for salesforce community users multiple attachment downloader

Background
I worked on a community that requried user to able to download the attachments. After giving the required permissions for community profile, I realized user cant download multiple attachments. After googling found this [article](http://www.saaspie.com/download-attachments-as-a-zip-file-in-salesforce/). Using that I wrote the code and wanted to share it.

###Installation
Click here to install: 
https://githubsfdeploy.herokuapp.com/?owner=vcandra&repo=sfcommmultiattachdownloader

jszip is required to be copied into your static resources.

Controller will receive id of the object as a parentid. /AttachmentsPage?parentId=salesforceID.
After the page is loaded, Vf remoting is used to call the controller and get the attachments.
Each attachment is collected and then entire zip file is downloaded.

Though I am mentioning community, it will work for other users as well.
