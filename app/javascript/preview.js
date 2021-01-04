const { data } = require("jquery");

if(document.URL.match( /new/ ) || document.URL.match( /edit/ )){
  
  document.addEventListener('DOMContentLoaded', function(){
    const fileField = document.querySelector('#gh_image');
    const imageLists = document.querySelector('.image-lists');
    const dataBox = new DataTransfer();
    const inputLabel = document.querySelector('.gh_image_label');
    
    fileField.addEventListener('change', (e) =>{
      file = e.target.files[0];
      blob = window.URL.createObjectURL(file);
      dataBox.items.add(file);

      fileField.files = dataBox.files


      if (fileField.files.length == 6){
        inputLabel.style.display = 'none';
      }
      
      const blobDiv = document.createElement('div');
      blobDiv.setAttribute('class', 'image-list');
      
      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);
      blobImage.setAttribute('id', file.name);
      
      const deleteButton = document.createElement('p')
      deleteButton.setAttribute('class', 'delete');
      deleteButton.innerHTML = '削除';
      
      blobDiv.appendChild(blobImage);
      blobDiv.appendChild(deleteButton);
      imageLists.appendChild(blobDiv);
      
      
      
      deleteButton.addEventListener('click', function(){
        const deleteDiv = deleteButton.parentNode;
        const deleteImg = deleteButton.previousElementSibling;
        
        
        if (fileField.files.length == 1){
          deleteDiv.remove();
          fileField.value = "";
          dataBox.clearData();
          
        }else{
          
          Array.from(fileField.files).forEach(function(files, i){
            if (files.name == deleteImg.id){
              dataBox.items.remove(i);
              fileField.files = dataBox.files
            }
          });
        }
        deleteDiv.remove();

        if (fileField.files.length < 6){
          inputLabel.style.display = 'block';
        }
      })
    })
    
    
    
  });
}
// const ImageList = document.getElementById('image-list');
// const ghImage = document.getElementById('gh_image');

// const createImageHTML = (blob) => {
  //     // 画像を表示するためのdiv要素を生成
  //   const imageElement = document.createElement('div');
  //   imageElement.setAttribute('class', "image-element")
  //   let imageElementNum = document.querySelectorAll('.image-element').length
  
  //   // 表示する画像を生成
  //   const blobImage = document.createElement('img');
  //   blobImage.setAttribute('src', blob);
  
  //   // ファイル選択ボタンを生成
  //   const inputHTML = document.createElement('input')
  //   inputHTML.setAttribute('id', `message_image_${imageElementNum}`)
  //   inputHTML.setAttribute('name', 'message[images][]')
  //   inputHTML.setAttribute('type', 'file')
  
  //   // 生成したHTMLの要素をブラウザに表示させる
  //   imageElement.appendChild(blobImage);
  //   imageElement.appendChild(inputHTML)
  //   ImageList.appendChild(imageElement);
  
//   inputHTML.addEventListener('change', (e) => {
//     file = e.target.files[0];
//     blob = window.URL.createObjectURL(file);

//     createImageHTML(blob)
//   })
// };

// ghImage.addEventListener('change', function(e){

//   const file = e.target.files[0];
//   const blob = window.URL.createObjectURL(file);
  
//   createImageHTML(blob);
// });
