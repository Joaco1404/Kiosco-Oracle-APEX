# 📦 Kiosco POS System

Sistema de Punto de Venta (POS) y Gestión de Inventario completo para un kiosco real, desarrollado como proyecto personal con Oracle APEX.

## 🚀 Características

*   **Control de Inventario:** Validación de stock en tiempo real (evita vender sin stock).
*   **Carrito de Compras:** Uso de Colecciones APEX para agregar productos dinámicamente.
*   **Gestión de Caja:** Apertura, registro de movimientos (retiros/gastos) y cierre con arqueo de efectivo.
*   **Seguridad:** Control de acceso basado en roles (Administrador vs. Vendedor).
*   **Reportes:** Dashboards con KPIs y gráficos dinámicos de ventas.
*   **PWA:** Instalable como aplicación de escritorio (Progressive Web App).

## ⚙️ Implementación Técnica en Oracle APEX

*   **Acciones Dinámicas (DA):** Implementación de interactividad sin recargar la página (AJAX) para el carrito de compras, actualización de totales y notificaciones de error/éxito en tiempo real.
*   **Procesos PL/SQL:** Desarrollo de la lógica transaccional en el servidor para el registro de ventas, descuento de stock y cálculo de arqueo de caja.
*   **Validaciones:** Reglas de negocio en el servidor para evitar ventas sin stock, duplicidad de CUIT en proveedores y validación de formatos de Email.
*   **Ramificaciones (Branches):** Control de flujo de navegación, como el bloqueo de la página de ventas si la caja está cerrada o la redirección segura tras cambiar la contraseña.
*   **Colecciones de APEX (APEX Collections):** Uso de memoria temporal en el servidor para gestionar el carrito de compras antes de confirmar la venta.
*   **Componentes Nativos y UI:** Personalización avanzada de Interactive Grids, Interactive Reports y Chart (JET) mediante CSS y JavaScript.

## 🛠️ Tecnologías Utilizadas

*   **Backend / Base de Datos:** Oracle Database, SQL, PL/SQL (Triggers, Vistas).
*   **Framework:** Oracle APEX.
*   **Frontend:** JavaScript, HTML5, CSS3 (Personalización de interfaces y responsividad).
*   **Otros:** JSON, Progressive Web Apps (PWA).

## 📸 Capturas del Sistema

### Panel de Control
![Panel de Control](https://github.com/Joaco1404/Kiosco-Oracle-APEX/blob/main/imagenes/panel.png?raw=true)

### Punto de Venta (Ventas)
![Nueva Venta](https://github.com/Joaco1404/Kiosco-Oracle-APEX/blob/main/imagenes/ventas.png?raw=true)

### Gestión de Caja
![Movimientos de Caja](https://github.com/Joaco1404/Kiosco-Oracle-APEX/blob/main/imagenes/caja.png?raw=true)

### Cierre de Caja Exitoso
![Cierre de Caja](https://github.com/Joaco1404/Kiosco-Oracle-APEX/blob/main/imagenes/cierre.png?raw=true)

### Gestión de Productos
![Productos](https://github.com/Joaco1404/Kiosco-Oracle-APEX/blob/main/imagenes/productos.png?raw=true)

### Reportes y KPIs
![Reportes](https://github.com/Joaco1404/Kiosco-Oracle-APEX/blob/main/imagenes/reportes.png?raw=true)