<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	  <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<title>Curso JSP</title>
	
	
<style type="text/css">


form{
position: absolute;
top: 40%;
left: 33%;
right: 33%;
}


h5{
position: absolute;
top: 30%;
left: 33%;
}

.msg{
position: absolute;
top: 70%;
left: 33%;
color: red;
}





</style>
	
	
	
	
</head>


<body>

<h5>Bem vindo ao curso de JSP</h5>  


<form action="ServletLogin" method="post" class="row g-3 needs-validation" novalidate>

<input type="hidden" value="<%= request.getParameter("url") %>" name="url">

 <div class="mb-3">
 <label class="form-label" for="login">Login</label> 
 <input  class="form-control" id="login" name="login" type="text" required>
 <div class="invalid-feedback">
      Informe o Login!
    </div>
    </div>

 <div class="mb-3">
  <label class="form-label" for="senha">Senha</label> 
  <input  class="form-control" id="senha" name="senha" type="password" required>
   <div class="invalid-feedback">
      Informe a Senha!
    </div>
 </div>
 
 <input type="submit" value="Enviar" class="btn btn-primary">
 

</form>

<h5 Class="msg">${msg}</h5>

<!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script type="text/javascript">

// Example starter JavaScript for disabling form submissions if there are invalid fields
(function () {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  var forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.prototype.slice.call(forms)
    .forEach(function (form) {
      form.addEventListener('submit', function (event) {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }

        form.classList.add('was-validated')
      }, false)
    })
})()
</script>

</body>
</html>