const fileForm = document.getElementById("file");
const upload = new Upload();
fileForm.onchange = function(){
    upload.addFileAndSend(this);
}


function Upload(){
    let file = '';
    //对外方法，传入文件对象
    this.addFileAndSend = function(that){
        file = that.files[0];
        uploads (file, 0)
    };
    //发送文件
    function uploads (file, num) {
        const LENGTH = 1024 * 1024 *4;
        let formData = new FormData();
        let chunkTotal = Math.ceil(file.size /LENGTH); // 总的chunk数
        let nextSize = Math.min((num + 1) *2, file.size);
        let fileData = file.slice(num * 2, nextSize);
        formData.append("file", fileData);
        formData.append("file_name", file.name);
        formData.append("blob_num", num+1);
        formData.append('total_blob_num',chunkTotal);
        formData.append("chunk", num);
        formData.append("chunks", chunkTotal);
        $.ajax({
            url: "/rmtop/receiveUpload",
            type: "POST",
            data: formData,
            xhrFields: {
                withCredentials: true // 这里设置了withCredentials
            },
            processData: false,
            contentType: false,
            success: function (res) {
                console.log()
                if (!res) {
                    if (num < chunkTotal - 1) {
                        uploads(file, num + 1); //递归调用
                    }
                } else {
                    $("#org_img").val(res);
                }
            }
        });

    }

}
