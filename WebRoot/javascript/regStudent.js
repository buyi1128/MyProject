  function MM_jumpMenu(targ,selObj,restore){ //v3.0
                   eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
                    if (restore) selObj.selectedIndex=0;
                      }

        function getCampus(){
          var temp=window.showModalDialog("campus.jsp","","resizable:Yes;center=yes;help=no;status=no;dialogHeight:600px;dialogWidth:650px");
          document.student_apply.campus.value=temp;
        }
           function check_reg(form){
            if(form.applyuser.value == ""){
                   alert("用户名不能为空！");
                   return false;
               }
               if(form.pwd.value == ""){
                   alert("密码不能为空！");
                   return false;
               }
                if(form.repwd.value == ""){
                   alert("密码不能为空！");
                   return false;
               }
                if(form.campus.value == ""){
                   alert("学院不能为空！");
                   return false;
               }
                if(form.teacher.value == ""){
                   alert("教师不能为空");
                   return false;
               }
                if(form.name.value == ""){
                   alert("姓名不能为空");
                   return false;
               }
                if(form.number.value == ""){
                   alert("学号不能为空");
                   return false;
               }
                if(form.major.value == ""){
                   alert("专业不能为空");
                   return false;
               }
                if(form.grade.value == ""){
                   alert("年级不能为空");
                   return false;
               }
                if(form.mail.value == ""){
                   alert("邮箱不能为空");
                   return false;
               }
                if(form.tel.value == ""){
                   alert("电话不能为空");
                   return false;
               }
                 if(form.pwd.value != repwd){
                   alert("两次密码不一致");
                   return false;
               }
               return true; 
           
            }
            function check_mail(mail)
            {
              var x=document.getElementById("mail");
              with(mail)
              {
               apos=value.indexOf("@");
               dotpos=value.lastIndexOf(".");
               if(apos<1||dotpos-apos<2)
               { alert("不是有效邮箱");focus(); }
              }
            }
          function check_tel(tel)
          {
           
           var cellphone=/^(((1[0-9]{1}[0-9]{1}))+d{8})$/;
         if(!cellphone.test(tel.value))
        { alert('不是有效电话'); tel.focus(); }
       }
          // ajax 实现下拉所选学院的老师列表
          var xmlHttp;
          function createXMLHttpRequest(){
        	  if(ActiveXObject){
        		  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
        	  }
        	  else if(XMLHttpRequest){
        		  xmlHttp=new XMLHttpRequest();
        	  }
          }  function MM_jumpMenu(targ,selObj,restore){ //v3.0
              eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
              if (restore) selObj.selectedIndex=0;
                }

  function getCampus(){
    var temp=window.showModalDialog("campus.jsp","","resizable:Yes;center=yes;help=no;status=no;dialogHeight:600px;dialogWidth:650px");
    document.student_apply.campus.value=temp;
  }
     function check_reg(form){
      if(form.applyuser.value == ""){
             alert("用户名不能为空！");
             return false;
         }
         if(form.pwd.value == ""){
             alert("密码不能为空！");
             return false;
         }
          if(form.repwd.value == ""){
             alert("密码不能为空！");
             return false;
         }
          if(form.campus.value == ""){
             alert("学院不能为空！");
             return false;
         }
          if(form.teacher.value == ""){
             alert("教师不能为空");
             return false;
         }
          if(form.name.value == ""){
             alert("姓名不能为空");
             return false;
         }
          if(form.number.value == ""){
             alert("学号不能为空");
             return false;
         }
          if(form.major.value == ""){
             alert("专业不能为空");
             return false;
         }
          if(form.grade.value == ""){
             alert("年级不能为空");
             return false;
         }
          if(form.mail.value == ""){
             alert("邮箱不能为空");
             return false;
         }
          if(form.tel.value == ""){
             alert("电话不能为空");
             return false;
         }
           if(form.pwd.value != repwd){
             alert("两次密码不一致");
             return false;
         }
         return true; 
     
      }
      function check_mail(mail)
      {
        var x=document.getElementById("mail");
        with(mail)
        {
         apos=value.indexOf("@");
         dotpos=value.lastIndexOf(".");
         if(apos<1||dotpos-apos<2)
         { alert("不是有效邮箱");focus(); }
        }
      }
    function check_tel(tel)
    {
     
     var cellphone=/^(((1[0-9]{1}[0-9]{1}))+d{8})$/;
   if(!cellphone.test(tel.value))
  { alert('不是有效电话'); tel.focus(); }
 }
    // ajax 实现下拉所选学院的老师列表
    var xmlHttp;
function createXMLHttpRequest(){
  	  if(ActiveXObject){
  		  xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
  	  }
  	  else if(XMLHttpRequest){
  		  xmlHttp=new XMLHttpRequest();
  	  }
    }
    
function getTeacher()
{
	
	 createXMLHttpRequest();
	 var temp=document.getElementById("campus").value;
	// var temp="lalalalala";
	  var url="ListTeacherByCampus";
	  xmlHttp.open("POST",url,true);
	  xmlHttp.onreadystatechange=handleStateChange;
	  xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;");
	  xmlHttp.send("campus="+temp);
	  
}
function handleStateChange(){
	 if(xmlHttp.readyState==4){
		 if(xmlHttp.status==200){
			 var res=xmlHttp.responseText;
			 parseResults();
		 }
		 else{
  		 alert("页面请求出错"+xmlHttp.status);
  	 }
	 }
	
}
function parseResults(){
	 document.getElementById("teacher").value=xmlHttp.responseText;
	 alert("选择的学院"+xmlHttp.responseText);
}


