if(document.URL.match('users')){
  
  document.addEventListener('DOMContentLoaded', function(){
    const fileField = document.querySelector('.input-user-icon');
    const defaultIcon = document.querySelector('.default-icon');
    
    
    fileField.addEventListener('change', function(e){
      
      const defaultIcon = document.querySelector('.default-icon');
      defaultIcon.remove();

      file = e.target.files[0];
      blob = window.URL.createObjectURL(file);

      const blobImage = document.createElement('img');
      blobImage.setAttribute('src', blob);
      blobImage.setAttribute('class', 'default-icon');

      const iconField = document.querySelector('.registration-user-icon');

      iconField.appendChild(blobImage);

    })
  });


}
