<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Vibra - Tienda de Pijamas</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <style>
    body {
      background-color: #f9f9f9;
      font-family: 'Segoe UI', sans-serif;
      color: black !important;
    }
    .navbar {
      background-color: #ffc0cb;
    }
    .navbar-brand {
      font-weight: bold;
    }
    .nav-link {
      color: black !important;
      margin-right: 15px;
      font-weight: 500;
    }
    .nav-link:hover {
      text-decoration: underline;
    }
    .btn-custom {
      background-color: #e5b1f4;
      color: black;
      border: none;
    }
    .card-title {
      font-size: 1.25rem;
    }
    .btn-carrito {
  background-color: #826eda;
  color: white;
  border: none;
  font-weight: 500;
    }

     .btn-carrito:hover {
  background-color: #271574;
  color: white;
    }

    .card-img-top {
      height: 300px;
      object-fit: cover;
    }
    footer {
      background-color: #e5b1f4;
      color: black !important;
      padding: 20px 0;
      text-align: center;
      margin-top: 40px;
    }
footer a {
  color: black !important;
  text-decoration: none !important;
}

footer a:hover {
  color: black !important;
  text-decoration: none !important;
}

#formularioLogin {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0,0,0,0.5);
  z-index: 1050;
}


  </style>
</head>
<body>
  <!-- Header completo -->
  <div class="container-fluid text-center py-3" style="background-color: #f3cbf3;">
    <div class="d-flex justify-content-between align-items-center">
      <div class="d-flex align-items-center">
        <img src="img/Logo Vibra Positiva.jpg" alt="Logo" width="60" height="60" class="rounded-circle ms-3">
        <h2 class="ms-3 mb-0 fw-bold">VIBRA POSITIVA PIJAMAS</h2>
      </div>
      <div class="me-3">
        <a href="Registro.php" class="btn btn-custom me-2">Registrarse <i class="bi bi-person-plus"></i></a>
        <a href="index.php" class="btn btn-custom">Iniciar Sesi&oacute;n <i class="bi bi-person-fill"></i></a>
      </div>
    <div id="carritoContainer" class="ms-2">
</div>

    </div>
  </div>
  
  <!-- Menú de navegación -->
  <nav class="navbar navbar-expand-lg" style="background-color: #d58ff2;">
    <div class="container justify-content-center">
      <ul class="navbar-nav">
        <li class="nav-item"><a class="nav-link" href="index.php">Inicio</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php">Nuestros Productos</a></li>
        <li class="nav-item"><a class="nav-link active" href="Tienda.php">Tienda</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php">Quienes Somos</a></li>
        <li class="nav-item"><a class="nav-link" href="index.php">Ubicaci&oacute;n</a></li>
      </ul>
    </div>
  </nav>

  <!-- Encabezado -->
  <div class="container text-center my-5">
    <h1 class="ms-3 mb-0 fw-bold">COLECCION</h1>
    <p class="ms-3 mb-0 fw-bold">Dulces sueños con estilo </p>
  </div>

  <!-- Productos -->
  <div class="container">
    <div class="row g-4">

      <!-- Producto 1 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama1.jpg" class="card-img-top" alt="Pijama 1">
          <div class="card-body">
            <h5 class="card-title">Pijamas con estampado en pareja</h5>
            <p class="card-text">Comodidad total para tus noches. Suave algodón y diseño con aguacates para parejas.</p>
            <p class="fw-bold">$80.000 COP</p>
           <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 2 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama2.jpg" class="card-img-top" alt="Pijama 2">
          <div class="card-body">
            <h5 class="card-title">Pijama Estampada Hombre</h5>
            <p class="card-text">Ideal para dormir con frescura y estilo. Tela suave y estampado del pato lucas.</p>
            <p class="fw-bold">$60.000 COP</p>
            <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 3 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama3.jpg" class="card-img-top" alt="Pijama 3">
          <div class="card-body">
            <h5 class="card-title">Pijama Mujer Cómoda</h5>
            <p class="card-text">Relájate como una reina. Perfecta para las noches tranquilas.</p>
            <p class="fw-bold">$52.000 COP</p>
           <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 4 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama4.jpg" class="card-img-top" alt="Pijama 4">
          <div class="card-body">
            <h5 class="card-title">Pijama Estampada Corta en Pareja</h5>
            <p class="card-text">Ideal para dormir con frescura y estilo. Tela suave y estampado para parejas.</p>
            <p class="fw-bold">$60.000 COP</p>
           <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 5 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama5.jpg" class="card-img-top" alt="Pijama 5">
          <div class="card-body">
            <h5 class="card-title">Pijama Familiar</h5>
            <p class="card-text">Ideal para utilizarla en familia. Tela suave y estampado con características navideñas.</p>
            <p class="fw-bold">$160.000 COP</p>
            <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 6 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama6.jpg" class="card-img-top" alt="Pijama 6">
          <div class="card-body">
            <h5 class="card-title">Pijamas Grupo de Amigas</h5>
            <p class="card-text">Ideal para utilizarla con tus amigas. Tela suave y con estampado.</p>
            <p class="fw-bold">$135.000 COP</p>
           <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 7 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama7.jpg" class="card-img-top" alt="Pijama 7">
          <div class="card-body">
            <h5 class="card-title">Pijama Hombre Corta</h5>
            <p class="card-text">Ideal para dormir con frescura y comodidad. Tela suave y con estampado de Marvel.</p>
            <p class="fw-bold">$55.000 COP</p>
          <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 8 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama8.jpg" class="card-img-top" alt="Pijama 8">
          <div class="card-body">
            <h5 class="card-title">Pijama Mujer Sencilla</h5>
            <p class="card-text">Ideal para utilizarla en la comodidad de tu casa. Tela Suave.</p>
            <p class="fw-bold">$40.000 COP</p>
            <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

      <!-- Producto 9 -->
      <div class="col-md-4">
        <div class="card shadow-sm">
          <img src="img/pijama9.jpg" class="card-img-top" alt="Pijama 9">
          <div class="card-body">
            <h5 class="card-title">Pijamas En pareja</h5>
            <p class="card-text">Ideal para utilizarla con tu pareja. Tela suave y con estampado de Hello Kitty.</p>
            <p class="fw-bold">$88.000 COP</p>
            <a href="#" class="btn btn-carrito" data-bs-toggle="modal" data-bs-target="#loginModal">Agregar al carrito</a>
          </div>
        </div>
      </div>

    </div>
  </div>

  <!-- Footer -->
 <footer>
    <div class="container">
      <div class="row">
        <div class="col-md-4 mb-3">
          <h5>Contacto</h5>
          <p><i class="bi bi-geo-alt"></i> <strong>Dirección:</strong> Calle 2 Sur #10 - 39, Bogotá, Colombia</p>
          <p><i class="bi bi-telephone"></i> <strong>Teléfono:</strong> +57 305 930 9024</p>
          <p><i class="bi bi-envelope"></i> <strong>Email:</strong> vibrapositiva1720@gmail.com</p>
        </div>
        <div class="col-md-4 mb-3">
          <h5>Enlaces Rápidos</h5>
          <p><a href="index.php">Inicio</a></p>
          <p><a href="index.php">Nuestros Productos</a></p>
          <p><a href="Tienda.php">Tienda</a></p>
          <p><a href="index.php">Quienes Somos</a></p>
          <p><a href="index.php">Ubicación</a></p>
        </div>
        <div class="col-md-4 mb-3">
          <h5>Síguenos</h5>
          <a href="https://wa.me/573059309024?text=Hola%20quiero%20más%20información"><i class="bi bi-whatsapp"></i></a>
          <a href="https://www.facebook.com/share/19rxvzvkqo/"><i class="bi bi-facebook"></i></a>
          <a href="https://www.instagram.com/vibrapositivapijamas?igsh=Ym9zaTVnMmxrc29i"><i class="bi bi-instagram"></i></a>
          <div class="mt-3">
            <img src="img/logo_footer.png" alt="Logo Footer" class="footer-logo">
          </div>
        </div>
      </div>
      <p class="mt-3">&copy; 2025 Tienda de Pijamas Vibra Positiva - Todos los derechos reservados</p>
    </div>
  </footer>
    <!-- Modal de inicio de sesión requerido -->
<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="loginModalLabel">¡Atención!</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
      </div>
      <div class="modal-body">
        Primero debes iniciar sesión para agregar productos al carrito.
      </div>
      <div class="modal-footer">
      <button class="btn btn-primary" id="goToLogin">Ir a Iniciar Sesión</button>
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
      </div>
    </div>
  </div>
</div>

<div id="formularioLogin" class="modal" style="display: none;">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content p-4">
      <h5 class="modal-title mb-3">Inicia Sesión</h5>
      <input type="email" class="form-control mb-3" placeholder="Correo electrónico" required>
      <div class="input-group mb-3">
  <input type="password" class="form-control" id="inputPassword" placeholder="Contraseña" required>
  <button class="btn btn-outline-secondary" type="button" onclick="togglePasswordVisibility()">
    <i class="bi bi-eye" id="iconoOjo"></i>
  </button>
</div>
<div class="text-end mt-2">
  <a href="#" onclick="abrirRecuperacion()" class="text-decoration-none">¿Olvidaste tu contraseña?</a>
</div>

      <div class="d-flex justify-content-end">
       <a href="Usuario.php" class="btn btn-custom">Iniciar Sesi&oacute;n <i class="bi bi-person-fill"></i></a>

        <button class="btn btn-secondary" onclick="cerrarModal()">Cancelar</button>
      </div>
      <p class="mt-3 text-center">
        ¿No tienes cuenta? <a href="#" onclick="mostrarRegistro()">Regístrate aquí</a>
      </p>
    </div>
  </div>
</div>

<!--modal recuperacion contraseña-->
<div id="modalRecuperacion" class="modal" style="display: none; background-color: rgba(0,0,0,0.5); position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index: 1060;">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content p-4">
      <h5 class="modal-title mb-3">Recuperar Contraseña</h5>
      
      <!-- Paso 1: ingreso del correo -->
      <div id="pasoCorreo">
        <p>Ingresa tu correo electrónico para enviarte una contraseña temporal.</p>
        <input type="email" class="form-control mb-3" id="correoRecuperacion" placeholder="Correo electrónico" required>
        <div class="d-flex justify-content-end">
          <button class="btn btn-primary me-2" onclick="mostrarContraseñaTemporal()">Siguiente</button>
          <button class="btn btn-secondary" onclick="cerrarRecuperacion()">Cancelar</button>
        </div>
      </div>

      <!-- Paso 2: mostrar contraseña temporal -->
      <div id="pasoContraseña" style="display: none;">
        <p>Tu nueva contraseña temporal es:</p>
        <div class="input-group mb-3">
          <input type="text" id="passwordTemp" class="form-control" readonly>
          <button class="btn btn-outline-secondary" type="button" onclick="toggleTempPasswordVisibility()">
            <i class="bi bi-eye" id="iconoTempOjo"></i>
          </button>
        </div>
        <small class="text-muted">Puedes copiar esta contraseña temporal e iniciar sesión con ella.</small>
        <div class="d-flex justify-content-end mt-3">
          <button class="btn btn-success" onclick="cerrarRecuperacion()">Listo</button>
        </div>
      </div>
    </div>
  </div>
</div>


<!--js-->
<script>
  document.addEventListener('DOMContentLoaded', function () {
    const loginButton = document.getElementById('goToLogin');
    const loginModalEl = document.getElementById('loginModal');
    const formularioLogin = document.getElementById('formularioLogin');

    if (loginButton && loginModalEl && formularioLogin) {
      const loginModal = bootstrap.Modal.getOrCreateInstance(loginModalEl);

      loginButton.addEventListener('click', function () {
        // Cierra el modal Bootstrap
        loginModal.hide();

        // Espera a que la animación termine y luego muestra el formulario
        setTimeout(function () {
          formularioLogin.style.display = 'block';
        }, 300); // 300ms es el tiempo de animación de Bootstrap
      });
    }
  });

  function cerrarModal() {
    document.getElementById('formularioLogin').style.display = 'none';
  }

  function iniciarSesion() {
    alert('Inicio de sesión simulado. Aquí iría la validación real.');
    cerrarModal();
  }

</script>
<script>
  function togglePasswordVisibility() {
    const passwordInput = document.getElementById('inputPassword');
    const icono = document.getElementById('iconoOjo');
    
    if (passwordInput.type === 'password') {
      passwordInput.type = 'text';
      icono.classList.remove('bi-eye');
      icono.classList.add('bi-eye-slash');
    } else {
      passwordInput.type = 'password';
      icono.classList.remove('bi-eye-slash');
      icono.classList.add('bi-eye');
    }
  }
</script>

<script>
  function abrirRecuperacion() {
    cerrarModal(); // Cierra el modal de login
    document.getElementById('modalRecuperacion').style.display = 'block';
  }

  function cerrarRecuperacion() {
    document.getElementById('modalRecuperacion').style.display = 'none';
  }

  function enviarRecuperacion() {
    const correo = document.getElementById('correoRecuperacion').value;
    if (correo.trim() === "") {
      alert("Por favor ingresa tu correo.");
    } else {
      alert("Se han enviado instrucciones de recuperación a: " + correo);
      cerrarRecuperacion();
    }
  }
</script>

<script>
  function abrirRecuperacion() {
    cerrarModal();
    document.getElementById('modalRecuperacion').style.display = 'block';
    document.getElementById('pasoCorreo').style.display = 'block';
    document.getElementById('pasoContraseña').style.display = 'none';
  }

  function cerrarRecuperacion() {
    document.getElementById('modalRecuperacion').style.display = 'none';
  }

  function mostrarContraseñaTemporal() {
    const correo = document.getElementById('correoRecuperacion').value;
    if (correo.trim() === "") {
      alert("Por favor ingresa tu correo.");
      return;
    }

    // Generar contraseña temporal aleatoria
    const tempPassword = generarContraseñaTemporal();
    const passwordInput = document.getElementById('passwordTemp');
    passwordInput.type = "password"; // para que se oculte al inicio
    passwordInput.value = tempPassword;

    // Mostrar el segundo paso
    document.getElementById('pasoCorreo').style.display = 'none';
    document.getElementById('pasoContraseña').style.display = 'block';
  }

  function generarContraseñaTemporal() {
    const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    let pass = "";
    for (let i = 0; i < 10; i++) {
      pass += chars.charAt(Math.floor(Math.random() * chars.length));
    }
    return pass;
  }

  function toggleTempPasswordVisibility() {
    const input = document.getElementById("passwordTemp");
    const icon = document.getElementById("iconoTempOjo");

    if (input.type === "password") {
      input.type = "text";
      icon.classList.remove("bi-eye");
      icon.classList.add("bi-eye-slash");
    } else {
      input.type = "password";
      icon.classList.remove("bi-eye-slash");
      icon.classList.add("bi-eye");
    }
  }
</script>

<script>
  document.getElementById('btnLogin').addEventListener('click', function() {
     var formularioLogin = document.getElementById("formularioLogin");
  formularioLogin.style.display = "none";
    // Evita agregar múltiples carritos
    if (!document.getElementById('carritoIcono')) {
      const carrito = document.createElement('span');
      carrito.id = 'carritoIcono';
      carrito.innerHTML = '🛒';
      carrito.style.marginLeft = '10px';
      document.getElementById('zonaUsuario').appendChild(carrito);
    }
  });
</script>

<script>
  document.addEventListener("DOMContentLoaded", function () {
    const btnLogin = document.getElementById("btnLogin");
    const carritoContainer = document.getElementById("carritoContainer");

    btnLogin.addEventListener("click", function () {
      // Ocultar el modal (cerrar ventana)
      const loginModal = bootstrap.Modal.getInstance(document.getElementById("loginModal"));
      loginModal.hide();

      // Mostrar ícono de carrito si no existe aún
      if (!document.getElementById("iconoCarrito")) {
        const carritoBtn = document.createElement("button");
        carritoBtn.id = "iconoCarrito";
        carritoBtn.className = "btn btn-outline-dark";
        carritoBtn.innerHTML = '<i class="bi bi-cart-fill"></i>';
        carritoContainer.appendChild(carritoBtn);
      }
    });
  });


</script>



  <!-- Bootstrap Icons -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">

</body>
</html>
