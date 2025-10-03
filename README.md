# PROYECTO-SIGT
El Sistema Integral de Gestión Total (SIGT) es una plataforma diseñada para optimizar la administración de una distribuidora de pijamas, integrando en un solo sistema el control de productos, ventas, devoluciones y usuarios.

Antes, los procesos se realizaban de manera manual y verbal, lo que generaba retrasos, duplicación de tareas y errores en la gestión. Con SIGT, la información se centraliza y se automatiza, permitiendo:

- Gestión eficiente de inventarios (altas, bajas, modificaciones y control de stock).

- Registro y seguimiento de ventas en tiempo real.

- Administración de devoluciones con trazabilidad completa.

- Control de usuarios y roles, garantizando seguridad y acceso personalizado.

- Mejor toma de decisiones gracias a datos actualizados y confiables.

Basado en Node.js (backend) y React (frontend)

## Contexto y Justificación
VIBRA POSITIVA PIJAMAS carecia se un sistema inttegral que permitiera:

- Gestión de Usuarios que permita iniciar sesión de forma segura y asignación de privilegios según el rol

- Asignación y Seguimiento de Tareas para los Empleados.

- Gestión de Inventario y Carrito de Compras

- Gestión de Reportes que permita registrar, monitorear, y analizar el rendimiento laboral y Stock.

## Características Principales
- Autenticación Segura: Uso de tokens JWT, encriptación de contraseñas con hash (bcrypt) y validaciones estrictas.
- Gestión de Roles:
SuperAdmin: ÚNICO rol que puede eliminar o crear administradores.
Administrador: Puede registrar nuevos usuarios (excepto SuperAdmins),gestionar inventario,registrar nevos empleados.
Empleado: Puede mirar las tareas qe le corresponden.
- Entradas de Productos: Registro de abastecimientos con control automático de stock.
- Ventas y Salidas: Descuento automático del inventario y asignación de responsables.
- Devoluciones: Registro de devoluciones de clientes o proveedores con actualización automática del stock.
-  Inventario en Tiempo Real: Alertas por bajo/exceso de stock y productos próximos a caducar.
- Reportes y Métricas: Generación de informes de productos más vendidos, historial de movimientos y devoluciones.
- Historial Completo: Consultas de entradas, salidas y devoluciones por fecha, producto o usuario.
- Interfaz Moderna y Responsiva: Construida con React, HTML5 y CSS3.
## Tecnologías utilizadas
Frontend: React , Bootstrap 5, CSS
Backend: Node.js,
Base de Datos: MySQL

