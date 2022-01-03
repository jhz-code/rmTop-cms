
function handleFile(id){
    const fileForm = document.getElementById(id);
    const LENGTH = 1024 * 1024 *5;
    var start = 0;
    var end = start + LENGTH;
    var blob;
    var blob_num = 1;

    //对外方法，传入文件对象
    const file = fileForm.files[0];
    blob = cutFile(file);
    uploads(blob,file);
    blob_num  += 1;

    //切割文件
    function cutFile(file){
        var file_blob = file.slice(start,end);
        start = end;
        end = start + LENGTH;
        return file_blob;
    };

    //发送文件
    function uploads (blob, file) {
        var form_data = new FormData();
        var total_blob_num = Math.ceil(file.size / LENGTH);
        form_data.append('file',blob);
        form_data.append('blob_num',blob_num);
        form_data.append('total_blob_num',total_blob_num);
        form_data.append('file_name',file.name);

        $.ajax({
            url: "/rmtop/receiveUpload",
            type: "POST",
            data: form_data,
            xhrFields: {
                withCredentials: true // 这里设置了withCredentials
            },
            processData: false,
            contentType: false,
            success: function (res) {
                console.log()
                if (!res) {
                    if(start < file.size){
                        blob = cutFile(file);
                        uploads(blob,file);
                        blob_num  += 1;
                    }
                } else {
                    console.log("org_img_"+id)
                    $("#org_img_"+id).val(res);
                }
            }
        });

    }

}
//
// function Upload(){
//     var form_data = new FormData();
//     const LENGTH = 1024 * 1024 *5;
//     var start = 0;
//     var end = start + LENGTH;
//     var blob;
//     var blob_num = 1;
//     //对外方法，传入文件对象
//     this.addFileAndSend = function(that){
//         const file = that.files[0];
//         blob = cutFile(file);
//         uploads(blob,file);
//         blob_num  += 1;
//     };
//
//     //切割文件
//     function cutFile(file){
//         var file_blob = file.slice(start,end);
//         start = end;
//         end = start + LENGTH;
//         return file_blob;
//     };
//
//     //发送文件
//     function uploads (blob, file) {
//         var form_data = new FormData();
//         var total_blob_num = Math.ceil(file.size / LENGTH);
//         form_data.append('file',blob);
//         form_data.append('blob_num',blob_num);
//         form_data.append('total_blob_num',total_blob_num);
//         form_data.append('file_name',file.name);
//
//         $.ajax({
//             url: "/rmtop/receiveUpload",
//             type: "POST",
//             data: form_data,
//             xhrFields: {
//                 withCredentials: true // 这里设置了withCredentials
//             },
//             processData: false,
//             contentType: false,
//             success: function (res) {
//                 console.log()
//                 if (!res) {
//                     if(start < file.size){
//                         blob = cutFile(file);
//                         uploads(blob,file);
//                         blob_num  += 1;
//                     }
//                 } else {
//                     $("#org_img").val(res);
//                 }
//             }
//         });
//
//     }
//
// }
