// roomコントローラー全てに反映されるので注意
if(document.URL.match('rooms')){
  
  document.addEventListener('DOMContentLoaded', function(){
    
    // アップロードのinput要素とカメラアイコンを取得
    const uploadInput = document.querySelector('.hidden');
    const uploadIcon = document.querySelector('.fa-camera-retro');
    
    // 写真がアップロードされたら発火
    uploadInput.addEventListener('change', (e) => {
      
      // アップロード後に使用するアイコンを生成
      const newUploadIcon = document.createElement('i');
      newUploadIcon.setAttribute('class', 'fas fa-upload');
      newUploadIcon.setAttribute('style', 'color: green;');
      
      // アップロード後に使用するアイコンをカメラアイコンの後に挿入
      uploadIcon.after(newUploadIcon);
      console.log(uploadIcon);
      
      // カメラアイコンを削除
      uploadIcon.remove();

    })
  });

}