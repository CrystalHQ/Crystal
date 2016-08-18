contract ReputationRegistry{
  uint32 currentReputationContract = 0;
  uint32 currentContentType = 0;
  mapping (uint32 => address) contractAddresses;
  event NewContentType (bytes8 name, bytes32 description);

  struct Content {
    uint32 ID;
    bytes32 name;
    bytes32 description;
    bytes32 Creator;
    bytes32 ContentScore_reputationtype;
  }
  struct ContentType{
    bytes8 name;
    bytes32 description;
    uint32 contentNum;
    uint32 currentContentID;
    mapping (uint32 => Content) contents;
    uint32[] reputationTypes;
  }
  mapping (uint32 => ContentType) public contentTypes;

  function Register_ContentType(bytes8 nameArg, bytes32 descriptionArg, uint32 reputationTypesArgs){
    currentContentType += 1;
    ContentType c = contentTypes[currentContentType];
    c.currentContentID = 0;
    c.name = nameArg;
    c.description = descriptionArg;
    c.reputationTypes.push(reputationTypesArgs);
    NewContentType(nameArg, descriptionArg);
  }
 function Add_Content(uint32 ContentTypeID, bytes8 contentName,bytes32 contentDescription){
   uint32 id = contentTypes[ContentTypeID].currentContentID += 1;
   Content c = contentTypes[ContentTypeID].contents[id];
   c.name = contentName;
   c.description = contentDescription;
   c.ID = id;
 }

  function Register_Reputation(address contractAddress){
    currentReputationContract += 1;
    contractAddresses[currentReputationContract] = contractAddress;
  }
}
