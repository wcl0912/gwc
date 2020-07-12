<%--
  Created by IntelliJ IDEA.
  User: xhxlemon
  Date: 2020-07-11
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <style type="text/css">
        form {
            margin:10px auto;
            width:400px;
            padding:40px;
            font-size:14px;
            font-family:Arial, Helvetica, sans-serif;
            border-radius:10px;
            background-color:#B7CEFA;
            font-weight:bold;
            color:#000000;
        }
        form label {
            display:block;
            padding:15px;
        }
        form label span {
            width:20%;
            display:inline-block;
            font-size:16px;
            text-align:right;
        }
        form label input {
            line-height:22px;
            height:25px;
            border:3px solid #ee7700;
            width:70%;
        }
        form label input:focus {
            border:3px solid #ee7700;
            outline:none;
        }
        form input[type=submit] {
            margin-left:37%;
            margin-top:20px;
            width:100px;
            border:3px solid red;
            background-color:red;
            font-size:18px;
            letter-spacing:5px;
            color:#fff;
            font-weight:bold;
        }
        form #error{
            border:1px solid #000;
            background-color:#aaa;
            font-size:12px;
            color:#f00;
            padding:5px;
            line-height:18px;
        }
    </style>
    <script type="text/javascript">
        function addError(err){
            document.getElementById("error").innerHTML += "* "+err+"<br />";
        }
        function clearError(){
            document.getElementById("error").innerHTML = "";
        }
        function invalidHandler(evt){
            var validity = evt.srcElement.validity;
            var str="";
            if(validity.customError){
                str = evt.srcElement.validationMessage;
            }else{
                if(validity.valueMissing){
                    str+="不能为空；";
                }
                if(validity.typeMismatch){
                    str+="与类型不匹配；";
                }
                if(validity.patternMismatch){
                    str+="与pattern正则不匹配；";
                }
                if(validity.tooLong){
                    str+="字符过长；";
                }
                if(validity.rangeUnderflow){
                    str+="不能小于最小值；";
                }
                if(validity.rangeOverflow){
                    str+="不能大于最大值；";
                }
                if(validity.stepMismatch){
                    str+="不符合step特性所推算出的规则；";
                }
                str = evt.srcElement.title + str;
            }
            addError(str);
            evt.stopPropagation();
            evt.preventDefault();
        }
    </script>
</head>
<body background="1.jpg">
<form id="register" name="register">
    <label ><span>姓名</span>
        <input name="firstName" type="text" title="姓名" placeholder="请输入您的姓名" required />
    </label>
    <label ><span>邮箱</span>
        <input type="email" name="emailaddress" title="邮箱" placeholder="请输入您的邮箱" required />
    </label>
    <label ><span>生日</span>
        <input name="graduation" type="date" title="生日" />
    </label>
    <label ><span>电话</span>
        <input name="call" type="text" title="电话" placeholder="请输入您的电话"/>
    </label>
    <label ><span>地址</span>
        <input name="country" type="text" title="地址" placeholder="请输入您的地址" />
    </label>
    <input href="dl.jsp" type="submit" name="submit" value="提交" onclick="clearError()" />

    <div id="error"></div>
</form>
</body>
</html>