$(function(){
	var delParent;
	var defaults = {
		fileType         : ["jpg","png","bmp","jpeg"],   // 上传文件的类型
		fileSize         : 1024 * 1024 * 10                  // 上传文件的大小 10M
	};
		/*点击图片的文本框*/
	$(".file").change(function(){	 
		var idFile = $(this).attr("id");
		var file = document.getElementById(idFile);
		var imgContainer = $(this).parents(".z_photo"); //存放图片的父亲元素
		var fileList = file.files; //获取的图片文件
		var input = $(this).parent();//文本框的父亲元素
		var imgArr = [];
		//遍历得到的图片文件
		var numUp = imgContainer.find(".up-section").length;
		var totalNum = numUp + fileList.length;  //总的数量
		if(fileList.length > 10 || totalNum > 10 ){
			alert("上传图片数目不可以超过10个，请重新选择");  //一次选择上传超过10个 或者是已经上传和这次上传的到的总数也不可以超过10个
		}
		else if(numUp < 10){
			fileList = validateUp(fileList);
			for(let i = 0; i<fileList.length; i++){
			 var imgUrl = window.URL.createObjectURL(fileList[i]);
			     imgArr.push(imgUrl);
			 var $section = $("<section class='up-section fl loading'>");
			     imgContainer.prepend($section);
			 var $span = $("<span class='up-span'>");
			     $span.appendTo($section);
		     var $img0 = $("<img class='close-upimg'>").on("click",function(event){
				    event.preventDefault();
					event.stopPropagation();
					$(".works-mask").show();
					delParent = $(this).parent();
				});   
				$img0.attr("src","/static/rmtop/images/a7.png").appendTo($section);
		     var $img = $("<img class='up-img up-opcity'>");
		         $img.attr("src",imgArr[i]);
		         $img.appendTo($section);
		     var $p = $("<p class='img-name-p'>");
		         $p.html(fileList[i].name).appendTo($section);
		     var $input = $("<input id='taglocation' name='taglocation' value='' type='hidden'>");
		         $input.appendTo($section);
		     var $input2 = $("<input id='tags' name='tags' value='' type='hidden'/>");
		         $input2.appendTo($section);
		         //上传相关文件
				 Upfile(fileList[i],$section)

		   }
		}
		// setTimeout(function(){
        //      $(".up-section").removeClass("loading");
		//  	 $(".up-img").removeClass("up-opcity");
		//  },450);
		 numUp = imgContainer.find(".up-section").length;
		if(numUp >= 10){
			$(this).parent().hide();
		}
	});
	
	
   
    $(".z_photo").delegate(".close-upimg","click",function(){
     	  $(".works-mask").show();
     	  delParent = $(this).parent();
	});
		
	$(".wsdel-ok").click(function(){
		$(".works-mask").hide();
		var numUp = delParent.siblings().length;
		if(numUp < 20){
			delParent.parent().find(".z_file").show();
		}
		 delParent.remove();
	});
	
	$(".wsdel-no").click(function(){
		$(".works-mask").hide();
	});

	function validateUp(files){
			var arrFiles = [];//替换的文件数组
			for(var i = 0, file; file = files[i]; i++){
				//获取文件上传的后缀名
				var newStr = file.name.split("").reverse().join("");
				if(newStr.split(".")[0] != null){
						var type = newStr.split(".")[0].split("").reverse().join("");
						console.log(type+"===type===");
						if(jQuery.inArray(type, defaults.fileType) > -1){
							// 类型符合，可以上传
							if (file.size >= defaults.fileSize) {
								alert(file.size);
								alert('您这个"'+ file.name +'"文件大小过大');	
							} else {
								// 在这里需要判断当前所有文件中
								arrFiles.push(file);	
							}
						}else{
							alert('您这个"'+ file.name +'"上传类型不符合');	
						}
					}else{
						alert('您这个"'+ file.name +'"没有类型, 无法识别');	
					}
			}
			return arrFiles;
		}

	function Upfile(file,section){
		const LENGTH = 1024 * 1024 *5;
		var start = 0;
		var end = start + LENGTH;
		var blob;
		var blob_num = 1;

		//对外方法，传入文件对象
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
						console.log("org_img_")
						var $input3 = $("<input id='imglist' name='imglist[]' value="+res+" type='hidden'/>");
						$input3.appendTo(section);
						$(".up-section").removeClass("loading");
						$(".up-img").removeClass("up-opcity");
					}
				}
			});

		}

	}




})
