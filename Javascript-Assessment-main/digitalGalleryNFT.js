/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

class NFT {
    constructor(title, description, imageUrl) {
      this.title = title;
      this.description = description;
      this.imageUrl = imageUrl;
    }
  }
  
  // Create a variable to hold your NFT's
  const myNFTs = [];
  
  // This function will take in some values as parameters, create an
  // NFT object using the parameters passed to it for its metadata,
  // and store it in the variable above.
  function mintNFT(title, description, imageUrl) {
    const nft = new NFT(title, description, imageUrl);
    myNFTs.push(nft);
  }
  
  // This function will iterate over the array of NFTs
  // and print their metadata with console.log()
  function listNFTs() {
    for (let i = 0; i < myNFTs.length; i++) {
      const nft = myNFTs[i];
      console.log("Title: " + nft.title);
      console.log("Description: " + nft.description);
      console.log("Image URL: " + nft.imageUrl);
      console.log("----------------------");
    }
  }
  
  
  // This function will print the total number of NFTs we have minted to the console
  function getTotalSupply() {
    return myNFTs.length;
  }
  
  // Call your functions below this line
  
  mintNFT("Artwork ", "Abstract painting", "https://example.com/image1.png");
  mintNFT("Photography ", "Landscape photo", "https://example.com/image2.png");
  mintNFT("Digital Art ", "3D rendered artwork", "https://example.com/image3.png");
  mintNFT("Blender Art", "Blender artwork", "https://example.com/image4.png")
  
  console.log("Listing NFTs:");
  listNFTs();
  
  console.log("Total NFTs created: " + getTotalSupply());
