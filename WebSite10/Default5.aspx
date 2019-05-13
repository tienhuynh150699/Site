<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default5.aspx.vb" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="style/Web2.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
  <div class="container"> 
 <h1 class="text-center">Đăng ký làm tài xế Grap</h1> 
 <div class="row"> 
  <div class="col-xs-12 col-sm-12 col-md-4 well well-sm col-md-offset-4"> 
   <legend><a href="http://localhost:61318/Web.aspx"><i class="glyphicon glyphicon-globe"></i></a> Điền thông tin cá nhân!
   </legend> 
   <form action="http://localhost:61318/Web.aspx" method="post" class="form" role="form"> 
    <div class="row"> 
     <div class="col-xs-6 col-md-6"> <input class="form-control" name="firstname" placeholder="Họ" required="" autofocus="" type="text"> 
     </div> 
     <div class="col-xs-6 col-md-6"> <input class="form-control" name="lastname" placeholder="Tên" required="" type="text"> 
     </div> 
    </div> <input class="form-control" name="youremail" placeholder="Email" type="email"> <input class="form-control" name="password" placeholder="Mật khẩu" type="password"> <input class="form-control" name="retypepassword" placeholder="Nhập lại mật khẩu" type="password"> <input class="form-control" name="Biển Số" placeholder="Nhập biển số xe" type="Biển số">
 <label for=""> Ngày sinh</label>     <div class="row"> 
     <div class="col-xs-4 col-md-4"> <select class="form-control">              <option value="Day">Ngày</option>            </select> 
     </div> 
     <div class="col-xs-4 col-md-4"> <select class="form-control">              <option value="Month">Tháng</option>            </select> 
     </div> 
     <div class="col-xs-4 col-md-4"> <select class="form-control">              <option value="Year">Năm</option>            </select> 
     </div> 
    </div> <label class="radio-inline">          <input name="sex" id="inlineCheckbox1" value="male" type="radio">          Nam </label> <label class="radio-inline">          <input name="sex" id="inlineCheckbox2" value="female" type="radio">          Nữ </label> 
    <br> 
    <br> 
    <button class="btn btn-lg btn-primary btn-block" type="submit"> Đăng ký</button> 
   </form> 
  </div> 
 </div>
</div>
</html>
