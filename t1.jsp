<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head> 
  <meta charset="UTF-8">
  <title>个人信息</title>
  <script type="text/javascript">
        function yan(){
            var name = document.getElementById("name").value;
            var age=document.getElementById("age").value;
            var nation=document.getElementById("nation").value;
            var ID=document.getElementById("ID").value;
            var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
            var address=document.getElementById("address").value;
            var file=document.getElementById("file").value;
            	if(name=="" ) {
                	alert("姓名为空!")
            	}else if(age>200){
            		alert("年龄超过200!")
            	}else if(age>200){
            		alert("年龄超过200!")
            	}else if(reg.test(ID) === false){
            		alert("身份证号不正确!")
            	}else{
            		alert("验证成功!")
            	}
         }
    
</script>
  </head>
  <body>
    <form name="Form1" action="servlets/ImServlet" method="post" >
			<table>
				<tr>
					<td>姓名:</td>
					<td><input id="name" type="text" name="name"></td>
				</tr>
				<tr>
					<td>性别:</td>
					<td> <input type="radio" name="sex" >男
                    <input type="radio" name="sex" >女
				</tr>
				<tr>
					<td>年龄:</td>
					<td><input id="age" type="text" name="age"></td>
				</tr>
				<tr>
					<td>民族:</td>
					<td><input id="nation" type="text" name="nation"></td>
				</tr>
				<tr>
					<td>身份证号:</td>
					<td><input id="ID" type="text" name="ID"></td>
				</tr>
				<tr>
					<td>家庭住址:</td>
					<td><input id="address" type="text" name="address"></td>
				</tr>
				<tr>
					<td>个人照片:</td>
					<td><input id="file" type="file" name="photo"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="button" onclick="yan()" value="验证"></td>
				</tr>
			</table>
		</form>
  </body>
   
            
        

</html>