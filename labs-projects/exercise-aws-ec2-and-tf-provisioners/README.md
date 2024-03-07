NOTES:
1. When associating eip with the instance, seems like just having an eip created and specifying the instance id of the instance to be associated with, is not enough. An eis_association needs to be created as well.
2. For provisioners, best practice is to try avoiding it if possible and use the native options available instead.