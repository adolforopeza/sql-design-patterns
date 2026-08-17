## 🚀 Descripción General
Este repositorio contiene el esquema relacional completo (`system_auth`) para MySQL / MariaDB, acompañado de scripts de datos sintéticos (seed data) optimizados para pruebas de estrés, desarrollo backend de alto tráfico.

## 📊 Diagrama de Arquitectura de Base de Datos
![Diagrama Entidad-Relación de System Auth](desing/desing.jpeg)

## 🤖 Uso de Inteligencia Artificial (IA)
Este proyecto ha sido optimizado y refactorizado con la asistencia de Inteligencia Artificial para cumplir con los más altos estándares de ingeniería de software:
- **Análisis y Optimización de Estructura**: Evaluación profunda del esquema SQL para garantizar la máxima velocidad transaccional y un bajo consumo de memoria RAM.
- **Recomendaciones de Buenas Prácticas**: Aplicación de patrones de diseño relacional, optimización de tipos de datos (`UNSIGNED`, `BIGINT`, `JSON`) y políticas de integridad referencial estrictas.
- **Generación de Datos Sintéticos (Seeds)**: Creación de conjuntos de datos de prueba realistas estructurados para validar flujos transaccionales complejos sin comprometer información sensible.

## 🛠️ Características Técnicas
- **Normalización e Integridad**: Estructuras relacionales estrictas con claves foráneas configuradas bajo políticas de restricción y cascada optimizadas.
- **Alto Rendimiento**: Tipos de datos ajustados para acelerar los tiempos de ejecución de consultas SQL en servidores de producción.
- **Cero Dependencias de Bloqueo**: Diseñado para operar con alta concurrencia transaccional en e-commerce y pasarelas de pago multi-moneda.

## 📂 Estructura del Esquema
El modelo relacional incluye las siguientes entidades principales:
- `settings`: Configuración global del sistema.
- `audit_log`: Registro de eventos, errores y auditorías en formato JSON optimizado.
- `customer`: Gestión de clientes con dominios y datos simulados.
- `media`: Repositorio de recursos multimedia y rutas de archivos.
- `legal_agreement`: Control de acuerdos y términos de servicio.
- `category`: Jerarquía de productos y clasificaciones.
- `product`: Catálogo de software y activos digitales.
- `seo_metadata`: Control avanzado de metadatos, URLs canónicas y OpenGraph.
- `orders` & `order_item`: Procesamiento de órdenes y transacciones comerciales.
- `payment_method` & `payment_transaction`: Pasarelas de pago y soporte multipago.
- `auth_token`: Tokens de autenticación y seguridad por API/Composer.
- `cart`: Gestión temporal de carritos de compra serializados en JSON.
- `order_legal_acceptance`: Trazabilidad legal en la aceptación de acuerdos por orden.

## 📄 Licencia
Este proyecto es de código abierto bajo la licencia MIT, orientado a demostrar competencias avanzadas en ingeniería de bases de datos y SQL.
